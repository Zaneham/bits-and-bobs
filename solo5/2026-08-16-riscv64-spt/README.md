# riscv64 spt target for Solo5

Solo5 has no RISC-V support at all. Nothing in the tree, no issue, no PR that
ever mentioned it. This adds the spt target, which is a Linux process under a
seccomp filter with no virtualisation involved, so it needs nothing from the
hardware beyond a RISC-V box that runs Linux.

The ppc64le port is the model, since it is the only precedent for adding an
architecture that reaches spt and stops there.
[Solo5 PR #368](https://github.com/Solo5/solo5/pull/368), 2019.

*NOTE:* this document is thrown together with Claude Code and heavily edited by
me. Claude also assisted with organising the output and tests into this entry.

## What's worth looking at

| Question | File |
|---|---|
| What the ABI says, before any code | `notes/riscv-abi.md` |
| Does it build and pass on real silicon? | `logs/riscv64-solo5-tests.txt` |
| Do the wrappers do what I think? | `logs/riscv64-harness.txt`, `disasm/` |
| Same thing under an emulator | `logs/qemu-riscv64.txt` |
| Did I break ppc64le? | `logs/ppc64le-regression.txt` |
| The change itself | `patches/` |
| How to reproduce it | `notes/build-and-run.sh` |

## Result

Fifteen files, 312 insertions, three of them new. The makefiles needed nothing,
because both new sources are picked up by `$(CONFIG_TARGET_ARCH)` and
`$(CONFIG_HOST_ARCH)` substitution.

On a riscv64 Debian 13 box, gcc 14.2, rv64imafdcv with Sv39 paging. Tender,
bindings and all 24 test unikernels build, and all eleven tests pass. Six report
SUCCESS, and `notls`, `zeropage`, `exception`, `seccomp` and `ssp` all die the
way they are supposed to.

`test_tls` passing is the one that matters. Variant I with no gap above `tp`, the
self-pointer write suppressed, and `mv tp` for the base, and it is the thing the
ppc64le port never had.

Three things the hardware settled that qemu could not. `rdtime` reads from U-mode
rather than trapping on `scounteren.TM`, which `crt_init.h` needs for the canary
seed. `test_ssp` fires with `CONFIG_TARGET_CC_CFLAGS` at bare `-nostdinc`, so
riscv64 defaults to the global `__stack_chk_guard` like aarch64 and wants no
`-mstack-protector-guard=global`. And gcc 14.2 native emitted code identical to
gcc 13.3 cross for all eight wrappers and the trampoline.

```
00000000000107b2 <spt_launch>:
   107b2:	812a                	mv	sp,a0
   107b4:	8532                	mv	a0,a2
   107b6:	8582                	jr	a1
```

## ppc64le, unchanged

Six of the touched files compile on every architecture, so the ppc64le box ran
the same eleven tests against upstream `17987e2` bare and against the same tree
with the diff on top. Identical, down to the return codes.

## Two upstream bugs, neither mine

Both showed up while getting ppc64le to build, and both reproduce on unpatched
upstream, which is why the control run is in the log.

`configure.sh` puts `-Wl,--build-id=none,-no-pie` in `TARGET_CC_LDFLAGS`. GNU ld
2.35.2 has no `-no-pie`, so it reads that as `-n -o -pie` and writes every
unikernel to a file called `-pie`. The build reports success and produces no
`.spt` files at all. That is v0.12.1 on anything with binutils older than about
2.36.

`test_tls` fails on ppc64le with exit 10, which is `solo5_tls_init()` failing
because `malloc_stub(solo5_tls_size())` returns NULL against a 64K stub heap. So
ppc64le TLS has been broken for a while, on the architecture whose port skipped
TLS to begin with, and TLS is what the OCaml 5 runtime needs.

## Left for later

hvt on riscv64, which wants the hypervisor extension and is a different project.
Nothing has been sent anywhere yet.
