# Reviewing ocaml/ocaml#14812, one add fewer per combined allocation

comballoc merges adjacent allocations in a basic block into a single
allocation of the total size, then hands each block its own pointer into that
region. The first block of a group needed an add to get from the base of the
region to where it actually sits. This patch folds that offset into the
instruction the backends already emit to skip the header word, so the add
goes away.

Small patch, five backends, and a new field on `Ialloc` that every one of
them has to honour. This is what I ran before saying anything on the PR.

Reviewed at `0c75e1fb`, against parent `e65c565a1f`. Everything here was
regenerated at that pair; if the branch moves, none of it corresponds any
more.

## What's worth looking at

| Question | File |
|---|---|
| What does the patch actually change in the emitted code? | `logs/amd64-asm-diff.txt` |
| Does it work, and on what? | `logs/hardware-runs.txt`, `logs/arm64-qemu.txt` |
| What about the two testsuite failures? | `logs/amd64-testsuite.txt` |
| Can the displacement outgrow what a backend can encode? | `notes/displacement-bound.md` |
| Do the tests actually catch a wrong displacement? | `logs/amd64-mutation.txt` |
| Everything checked, and what I'd raise | `notes/review-findings.md` |
| Exact patch reviewed | `patches/` |

## The change, on amd64

```
-	leaq	8(%r15), %rbx
-	addq	$80, %rbx
+	leaq	88(%r15), %rbx
```

Three sites in one small test file, 698 instructions down to 695.

## Coverage

| backend | how | result |
|---|---|---|
| amd64 | native, plus full testsuite | pass, 2 pre-existing failures |
| arm64 | cross-built, qemu-aarch64 | pass |
| ppc64le | native on POWER10 | pass |
| riscv64 | native on SpacemiT X60 | pass |
| s390x | native on z15 | pass |
| ppc64 BE | not applicable, no native OCaml backend | dropped |

## The bit that took the longest

The displacement is only applied to the first block of a group; the others
are derived from it. So getting it wrong slides the whole group somewhere
else with its internal layout intact, and a test that checks the blocks
against each other sees nothing wrong. My first test did exactly that and
passed against a deliberately broken compiler.

So `comb_group.ml` allocates past a group and then goes back to read it,
which is the check that catches a group parked in memory the allocator still
thinks is free. To show the tests fail when they should, `src/mutate-asm.sh`
rewrites the displacements in the assembly, and that gives 5 segfaults out
of 5.

## Running it

```sh
src/run-tests.sh   <ocaml-tree> <out-dir>            # build and run both tests
src/compare-asm.sh <baseline-tree> <patched-tree> <out-dir>
src/mutate-asm.sh  <ocaml-tree> <out-dir>            # should fail
src/remote-build.sh                                   # clone, build, test, in place
```
