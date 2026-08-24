# Rounding without the C call, arm64 and power

`Float.round`, `Float.trunc`, `ceil` and `floor` went out to C on every
architecture, though arm64 and power have had one instruction for each of the
four since ARMv8-A and ISA 2.02.

`src/xchk.c` runs the bare instructions agaist libm over the values that catch
a wrong rounding mode, and matches on both machines. `src/rt.ml` is
what I dumped `-S` and `-dlinear` on. `src/round.ml` is the testsuite entry that
went with the change. `src/inex.c` is why s390x was left out, since plain
`fidbr` raises the inexact flag where C says these four must not, and the
`fidbra` that suppresses it needs z196 against a z10 baseline.

