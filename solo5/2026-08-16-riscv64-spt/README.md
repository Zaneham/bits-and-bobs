# riscv64 spt target for Solo5

Solo5 has no RISC-V support at all. Nothing in the tree, no open issue, no PR
that ever mentioned it. The tenders cover x86_64, aarch64 and ppc64le, and
ppc64le only reaches spt.

This is the spt port. spt is a Linux process under a seccomp filter with no
virtualisation involved, so it is the one target that needs nothing from the
hardware beyond being a RISC-V box that runs Linux. hvt would want the
hypervisor extension and is a separate job.

The ppc64le port is the model, since it is the only precedent for adding an
architecture that reaches spt and stops there. That went in as
[Solo5 PR #368](https://github.com/Solo5/solo5/pull/368) in 2019.

*NOTE:* this document is thrown together with Claude Code and heavily edited by
me. Claude also assisted with organising the output and tests into this entry.

## What's worth looking at

| Question | File |
|---|---|
| What the ABI actually says, before any code | `notes/riscv-abi.md` |
| Syscall numbers, and the one that nearly went in wrong | `notes/riscv-abi.md` |
| Why TLS is the hard part | `notes/riscv-abi.md` |
| Does the whole thing build and pass on real silicon? | `logs/riscv64-solo5-tests.txt` |
| Do the wrappers do what I think, instruction by instruction? | `logs/riscv64-harness.txt`, `disasm/` |
| Same thing under an emulator, for comparison | `logs/qemu-riscv64.txt` |
| Did I break ppc64le? | `logs/ppc64le-regression.txt` |
| The change itself | `patches/0001-add-riscv64-spt-target.patch` |
| How to reproduce any of it | `notes/build-and-run.sh` |

## The change

Fifteen files, 312 insertions. Three new, the rest one arm added to an existing
`#if` ladder.

The makefiles needed nothing. Both new sources are picked up by
`$(CONFIG_TARGET_ARCH)` and `$(CONFIG_HOST_ARCH)` substitution, and spt does not
pull in the `common_SRCS` that would have wanted a `cpu_riscv64.c` and a
`cpu_vectors_riscv64.S` as well. ppc64le has neither of those either, for the
same reason.

## What ran, and where

Two boxes. A riscv64 Debian 13 machine with gcc 14.2 and binutils 2.44, on an
rv64imafdcv part with Sv39 paging. A ppc64le AlmaLinux 9.8 machine with gcc 11.5
and binutils 2.35, purely to check the shared files still behave. Neither had
libseccomp headers and neither gives you root, so 2.6.0 goes into a home prefix,
matching the runtime already on the box.

### riscv64, the whole thing

`configure.sh` detects the host and target, settles on
`riscv64-solo5-none-static`, and enables spt bindings and the spt tender. The
tender, the bindings and all 24 test unikernels build. Then:

| test | result |
|---|---|
| hello | SUCCESS |
| tls | SUCCESS |
| fpu | SUCCESS |
| globals | SUCCESS |
| time | SUCCESS, five one-second sleeps landing within 95 us |
| quiet | SUCCESS |
| notls | segfault, which is the pass condition |
| seccomp | killed with SIGSYS, which is the pass condition |
| ssp | `ABORT: Stack corruption detected`, which is the pass condition |
| zeropage | segfault, which is the pass condition |
| exception | segfault, which is the pass condition |

`test_tls` passing is the one that matters. That is the Variant I layout with no
gap above `tp`, the self-pointer write suppressed, and the `mv tp` base-setting
all working together, and it is the thing the ppc64le port never had.

`test_ssp` passing settles the other open question. `configure.sh` only forces
`-mstack-protector-guard=global` for x86_64 and ppc64le, and the guess was that
riscv64 defaults to the global `__stack_chk_guard` symbol the way aarch64 does
and needs no flag. `CONFIG_TARGET_CC_CFLAGS` came out as bare `-nostdinc` and
the canary still fires, so the guess was right.

### The wrappers, instruction by instruction

`src/main.c` compiles the real `sys_linux_riscv64.c` and `spt_launch_riscv64.S`
straight out of the tree, freestanding with no libc. Fifteen checks, all
passing, both cross-compiled under qemu-riscv64 with gcc 13.3 and native with
gcc 14.2. Both compilers emitted identical code.

```
00000000000107b2 <spt_launch>:
   107b2:	812a                	mv	sp,a0
   107b4:	8532                	mv	a0,a2
   107b6:	8582                	jr	a1
```

`rdtime` is the line that qemu could never have told me about. U-mode access is
gated on `scounteren.TM` and some hardware hardwires it to zero, which would
have trapped at startup since `crt_init.h` seeds the stack canary from it. It
reads fine on this part.

Two of the error-path checks were wrong on the first run and neither was the
wrappers' fault. `epoll_pwait` rejects a `maxevents` of zero before it looks at
the fd, and `timerfd_settime` faults on a null `itimerspec` before it looks at
the fd, so both returned the wrong errno for the right reason. The tests now
pass arguments real enough to reach the fd lookup. Worth writing down, because a
test that fails for an unrelated reason has the same shape as a test that passes
for an unrelated reason.

### ppc64le, unchanged

The patch touches six files that every architecture compiles, so the ppc64le box
runs the same tests against upstream `17987e2` with nothing applied and against
the same tree with the diff on top. The two columns are identical on all eleven
tests, down to the return codes. No regression.

## Two upstream bugs, neither mine

Both were found by trying to build on the ppc64le box and are visible on
unpatched upstream, which is why the control run is in the log.

**`-no-pie` does not survive old binutils.** `configure.sh` puts
`-Wl,--build-id=none,-no-pie` in `TARGET_CC_LDFLAGS`. GNU ld 2.35.2 has no
`-no-pie`, so it parses the thing as `-n -o -pie` and writes every unikernel to
a file called `-pie`. The build reports success and produces no `.spt` files at
all. Unpatched upstream does exactly the same, so this is v0.12.1 on any
distribution shipping binutils older than about 2.36, AlmaLinux 9 included.

**`test_tls` fails on ppc64le.** It exits 10, which is
`solo5_tls_init() != SOLO5_R_OK`, which is `malloc_stub(solo5_tls_size())`
returning NULL against a 64K stub heap. Unpatched upstream does the same, so
ppc64le's TLS has been broken for a while. That is worth someone's attention
independently of this work, because TLS is exactly what the OCaml 5 runtime
needs, and ppc64le is the architecture whose port skipped it in the first place.

## Left for later

hvt on riscv64, which needs the hypervisor extension and is a different project.
Nothing has been sent anywhere yet.
