# What the Principles of Operation actually says

Everything here is from the z/Architecture Principles of Operation, SA22-7832.
The instruction sequences were read out of it before any code was written,
which turned out to matter twice.

## SQDBR, page 19-40

`SQDBR R1,R2`, RRE format, opcode `B315`, long BFP. The square root of the
second operand goes to the first-operand location, rounded by the current BFP
rounding mode.

Three things worth having in writing.

The condition code remains unchanged. That matters on this backend because
comparisons are materialised from the CC, so an instruction that quietly set it
would be a problem.

The register-pair requirement applies to `SQXBR` only. `SQDBR` has none.

If the second operand is less than zero, an IEEE invalid-operation exception is
recognised. With the exception masked, which is how Linux runs, that produces a
QNaN rather than trapping, which matches what the libm call did before and what
arm64 `fsqrt` and amd64 `sqrtsd` already do. The manual also says a zero of
either sign returns a zero of the same sign, so negative zero has to survive.
Both are checked in `src/sq.ml`.

## No new facility

`SQDBR` is `B315`. The instructions this backend already emits sit either side
of it: `LPDBR B310`, `LCDBR B313`, `ADBR B31A`, `SDBR B31B`, `MDBR B31C`,
`DDBR B31D`. Same block, same RRE format, same `Db` data-exception column. So
nothing new is required of the machine.

The `¤7,9` markers in the summary table are transactional-execution
restrictions, and `DDBR` and `SDBR` carry the identical pair while already being
emitted. OCaml never emits `TBEGIN`, so neither applies.

## LOAD REVERSED, page 7-328

This is the one that would have been a bug.

> For LOAD REVERSED (LRVR, LRV), the second operand is four bytes, the result is
> placed in bit positions 32-63 of general register R1, and bits 0-31 of the
> register remain unchanged.

So `LRVR` on its own leaves the top half holding whatever was there before. The
C function it replaces is `caml_int32_direct_bswap`, which is
`caml_swap32((int32_t) v)` returning `value`, so the result is sign-extended to
64 bits. That is also why amd64 emits `movsxd` after its `bswap`. `LRVR` alone
would have produced garbage in the top half.

Hence `lrvr` then `lgfr`, `lgfr` being LOAD (64←32), `B914`, base z/Architecture,
which supplies the sign extension.

`LRVGR` is the eight-byte form and needs nothing after it. Condition code
unchanged for both.

## The 16-bit case

There is no register-to-register halfword reverse. `LRVH` is
storage-to-register, so it is no use here.

The C version is a zero-extended 16-bit swap. The sequence used is
`sllg R1,R2,48` then `lrvgr R1,R1`, which shifts the halfword to the top of the
register so that the full 64-bit reverse brings it back to the bottom, zero
extended, with everything above it cleared as a side effect. Two instructions,
and it disposes of any rubbish sitting above the halfword in the source. That is
the `bswap16 dirty` case in `src/bs2.ml`.

`SLLG` is RSY-a, `EB0D`, base z/Architecture, and the backend already emits it
in the `n(%r0)` immediate form elsewhere in `emit.mlp`.

## Facility levels

The s390x backend configures `model=z10`, so everything used here is in
baseline.

| instruction | facility | at z10 |
|---|---|---|
| `SQDBR` | BFP | yes |
| `LRVGR` | base z/Architecture | yes |
| `LRVR` | N3 | yes |
| `LGFR` | base z/Architecture | yes |
| `SLLG` | base z/Architecture | yes |

## Not used, and why

`FLOGR` (find leftmost one, `B983`) is count-leading-zeros exactly, returning the
bit position of the leftmost one or 64 if there is none, and it is available at
z10 under the extended-immediate facility. It is not used here because the
manual requires the R1 field to designate an even-odd pair of general registers
and to be even-numbered, writing the position to R1 and the residual to R1+1.
That is a register-allocation constraint of the same kind as amd64's division
pairs and belongs in its own change.

`POPCNT` and `LOCGR` are both z196, above the z10 baseline, so they would need
feature gating that does not currently exist for this backend.

Sign extension via `LGBR` and `LGHR` was also left out. Unlike square root and
byte swap, which are recognised by external name, sign extension means matching
a Cmm tree shape, and s390x only has 8, 16 and 32 bit forms where arm64 gets
arbitrary widths from `sbfm`. It needs a width guard and a fallback, so it is a
separate piece of work.
