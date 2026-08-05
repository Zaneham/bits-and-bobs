# How large the displacement can get, and what each backend can encode

The patch takes the offset comballoc used to add in a separate instruction
and folds it into the one that already computes the block pointer. So the
question the review turns on is what values that displacement can take, and
whether every backend can encode all of them.

## Where the number comes from

`asmcomp/comballoc.ml` accumulates allocations into a group while

```
totalsz + sz <= (Config.max_young_wosize + 1) * Arch.size_addr
```

`max_young_wosize` is 256 and `size_addr` is 8, so a group tops out at 2056
bytes. The first allocation of the group is the one that carries the
displacement, and it gets `totalsz - sz`. The emitters then add the 8 that
skips the header, so what actually lands in the instruction is

```
totalsz - sz + 8
```

The smallest block is a header plus one field, 16 bytes. So the largest
displacement is a 16-byte block sitting at the top of a full group:

```
2056 - 16 + 8 = 2048
```

You don't have to take that on trust. `src/comb_boundary.ml` constructs
exactly that group, and the post-comballoc dump shows `alloc 2056 2040` on
every backend I tested.

## What each backend has to encode it in

| backend | instruction | field | 2048 fits |
|---|---|---|---|
| amd64 | `leaq d(%r15), r` | 32-bit displacement | yes, easily |
| arm64 | `add xd, x27, #d` | 12-bit unsigned, 0-4095 | yes |
| power | `addi rd, r31, d` | 16-bit signed | yes |
| s390x | `la rd, d(%r11)` | 12-bit unsigned, 0-4095 | yes |
| riscv | `addi rd, s10, d` | **12-bit signed, -2048..2047** | **no** |

RISC-V is the one that does not fit, and it misses by exactly one. 2047 is
the largest `addi` immediate; the largest displacement the compiler can
produce is 2048.

The patch handles it. The RISC-V hunk is the only one that is not a
substitution of `8` for `8 + offset`, because it swaps the hand-written
`addi` for a call to `emit_addimm`, which materialises the constant when it
does not fit.

```
li	t0, 2048
add	a2, s10, t0
```

Confirmed on hardware, one such sequence in the boundary test and nowhere
else. Everything under 2048 stays a single `addi`.

Two things follow, and I'd rather state them than assume them.

`emit_addimm` clobbers `reg_tmp2`, which is `t0`. That is a scratch register
outside the allocatable set, and the only other user in the sequence is the
young-pointer bump above it, which is done with by then. `destroyed_at_alloc`
in `asmcomp/riscv/proc.ml` does not need to change.

RISC-V has no branch-relaxation module, so the sequence growing from one
instruction to two does not feed any size table. arm64 and power do have one,
and both keep the single-instruction form at every reachable displacement.
