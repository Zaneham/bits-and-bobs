# riscv64 spt target for Solo5

Solo5 had no RISC-V support at all. No code, no issue, no PR that ever mentioned
it. This adds spt, following the ppc64le port in
[PR #368](https://github.com/Solo5/solo5/pull/368).

*NOTE:* this document is thrown together with Claude Code and heavily edited by
me. Claude also assisted with organising the output and tests into this entry.

## What's worth looking at

| Question | File |
|---|---|
| Does it build and pass on real silicon? | `logs/riscv64-solo5-tests.txt` |
| Do the wrappers do what I think? | `logs/riscv64-harness.txt`, `disasm/` |
| Same thing under an emulator | `logs/qemu-riscv64.txt` |
| Did I break ppc64le? | `logs/ppc64le-regression.txt` |
| The change itself | `patches/` |
| How to reproduce it | `notes/build-and-run.sh` |

## Result

Fifteen files, 312 insertions, three new. Builds on riscv64 Debian 13 and passes
all eleven spt tests, `test_tls` included, which is the thing the ppc64le port
never had. ppc64le itself comes out identical patched and unpatched.

Three things only the hardware could answer. `rdtime` reads from U-mode instead
of trapping on `scounteren.TM`. The stack protector works with no
`-mstack-protector-guard=global`, unlike x86_64 and ppc64le. And gcc 14.2 native
emitted the same code as gcc 13.3 cross.

## Two upstream bugs, neither mine

Both reproduce on unpatched upstream, hence the control run in the log.
`-no-pie` in `TARGET_CC_LDFLAGS` is unknown to GNU ld 2.35, which reads it as
`-n -o -pie` and writes every unikernel to a file called `-pie`. And `test_tls`
fails on ppc64le with exit 10, so TLS there has been broken for a while.

## Left for later

hvt, which wants the hypervisor extension and is a different project.
