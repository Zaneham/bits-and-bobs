# Review notes on ocaml/ocaml#14812

These are my working notes rather than the review itself. I've recorded what
I checked, how I checked it, and what came out of it.

## What the patch does

comballoc merges adjacent allocations in a basic block into one `Ialloc` of
the total size. Blocks are laid out downwards from the top of that region.
Before this patch the first block of a group got its pointer in two steps,
computing the base and then adding the offset to reach the top.

```
leaq	8(%r15), %rbx
addq	$80, %rbx
```

The backends already compute `alloc_ptr + 8` to skip the header, so the
offset can ride along in the same instruction for free.

```
leaq	88(%r15), %rbx
```

One instruction per combined group, on every backend. `asm/` has both sides
of that for amd64.

## The thing that made this worth checking carefully

`Ialloc` gains a field, and five backends have to use it. In OCaml a record
pattern that omits a field is warning 9, and the compiler is built with

```
-w +a-4-9-40-41-42-44-45-48 -warn-error +a
```

so warning 9 is off. A backend left matching `Ialloc { bytes; dbginfo }`
would have compiled clean and quietly kept emitting the old displacement.
Nothing in the type checker was going to catch that.

So I checked by hand every `Ialloc` construction and every emit site across
amd64, arm64, power, riscv and s390x, plus `Ialloc_far` on arm64 and power,
plus the relaxation interface. They are all covered. The remaining matches are
`Ialloc _` in liveness, polling, scheduling, CSE and stack-frame code, which
genuinely do not care about the displacement.

## The failure mode is worse than it looks

Only the first block of a group takes its displacement from the young
pointer. The rest are computed relative to it. So a wrong displacement does
not scramble a group internally, it slides the whole group up or down
together, correctly spaced, into memory the allocator does not know is
taken. Contents check out. Overlap checks pass. The next allocation writes
straight through it.

The first version of `comb_group.ml` missed this exactly. Flattening the
displacements in the assembly and rerunning gave "ok" on one run and a
segfault on the next. The `clobber` check exists because of that, and it
builds a group, allocates past it, then goes back and reads the group. With
that check in place the mutation fails 5 runs out of 5.

That is the argument for the patch carrying a test. Something plausible does
not catch it.

## Displacement range

See `displacement-bound.md` for the working. In short, the largest
displacement any group can produce is 2048, RISC-V's `addi` stops at 2047,
and the patch already routes RISC-V through `emit_addimm` for that reason.
I confirmed it on hardware.

## What was tested

| | |
|---|---|
| amd64 | tests, assembly diff against the parent commit, full testsuite (1517 pass, 2 pre-existing WSL socket failures that reproduce on the parent) |
| arm64 | cross-built, run under qemu, `instr_size` assertions all held |
| ppc64le | native build and run on POWER10 |
| riscv64 | native build and run, boundary case confirmed as `li`/`add` |
| s390x | native build and run on z15 |
| ppc64 BE | dropped, OCaml has no native backend for it |

## What I would raise

Nothing blocking. In rough order of how much they matter:

1. No test. Worth one, given the failure mode above.
2. The RISC-V hunk is the only one that is not a mechanical substitution,
   and the diff does not say why. Without a note someone will eventually
   turn `emit_addimm` back into an `addi` and it will be wrong only for the
   largest groups, which is the worst way for it to be wrong.
3. `offset` is undocumented in `mach.mli`. It is a contract across five
   backends and one line would carry it.
4. No `Changes` entry.
5. `printmach` now prints `alloc 104 80`, two bare integers with nothing
   saying which is which. Cosmetic, only shows up in `-dcombine` dumps.
