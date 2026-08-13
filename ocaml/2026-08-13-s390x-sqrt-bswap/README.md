# Square root and byte swap without the C call, s390x

The s390x backend recognised no `Cextcall` idioms at all. amd64 and arm64 both
intercept `sqrt` and the byte-swap externals and emit a single instruction;
s390x called into C for every one of them.

This closes that for square root and byte swap. Thirteen calls become thirteen
instructions in the test programs here.

*NOTE:* this document is thrown together with Claude Code and heavily edited by
me. Claude also assisted with organising all the output and tests I made into
this section.

## What's worth looking at

| Question | File |
|---|---|
| What changed in the generated code? | `logs/codegen-before-after.txt` |
| Full assembly, before and after | `asm/` |
| Is the encoding what I think it is? | `disasm/` |
| Does it work? | `logs/qemu-runs.txt` |
| Does it work on a real mainframe? | `logs/real-hardware-z15.txt` |
| Why these sequences and not others | `notes/principles-of-operation.md` |
| Exact tree these came from | `patches/` |

## The sequences

| | before | after |
|---|---|---|
| `sqrt` | `brasl %r14, sqrt@PLT` | `sqdbr` |
| `bswap16` | C call | `sllg …,48(%r0)` then `lrvgr` |
| `bswap32` | C call | `lrvr` then `lgfr` |
| `bswap64` | C call | `lrvgr` |

All of these are in the z10 baseline the backend configures, so nothing needs
feature gating. `SQDBR` is `B315`, which sits in the same opcode block as
`LPDBR`, `LCDBR`, `ADBR`, `SDBR`, `MDBR` and `DDBR`, every one of which the
backend already emits.

## The two things the manual caught

Reading the Principles of Operation first was worth it twice, and both would
have been silent wrong answers rather than build failures.

`LRVR` reverses the low four bytes and leaves bits 0-31 of the register
untouched (SA22-7832 page 7-328). The C function being replaced is
`caml_swap32((int32_t) v)` returning `value`, so the result is sign-extended to
64 bits, which is also why amd64 emits `movsxd` after its `bswap`. `LRVR` alone
would have left rubbish in the top half. Hence the `lgfr` after it.

There is no register-to-register halfword reverse, so 16-bit needs building. The
sequence shifts the halfword to the top with `sllg 48` and lets the full 64-bit
`lrvgr` bring it back down, which zero-extends it and discards anything that was
sitting above the halfword in the source. That last part is the `bswap16 dirty`
case in the tests, `bswap16 0x1234ABCD`, which must give `0xCDAB`.

`sqrt` of a negative operand raises an IEEE invalid-operation exception. Masked,
which is how Linux runs, that gives a QNaN like the libm call did. Negative zero
has to come back out negative. Both are checked.

## How I produced this

Cross-compiled on x86-64 and run under qemu-s390x against a baseline built from
the same checkout, which still makes the C calls. Then cloned upstream trunk on
a real z15, applied the patch, built `world.opt` on the machine and ran
everything again there, including the full upstream testsuite: 1616 passed, 0
failed.

qemu is fine for showing the encodings assemble and the results match. The z15
run is there because it is the actual machine.

## Left for later

`FLOGR` is exactly count-leading-zeros and is available at z10, but the manual
requires an even-odd register pair with an even R1, writing two results. That is
a register-allocation constraint and wants its own change.

Sign extension via `LGBR` and `LGHR` too. Square root and byte swap are
recognised by external name, whereas sign extension means matching a Cmm tree
shape, and s390x only has 8, 16 and 32 bit forms where arm64 gets arbitrary
widths from `sbfm`. Different problem.

`POPCNT` and `LOCGR` are z196, above the z10 baseline, so they need feature
gating that does not exist for this backend yet.
