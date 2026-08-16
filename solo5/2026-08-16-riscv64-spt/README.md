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
| Does it work? | `logs/qemu-riscv64.txt` |
| What the compiler made of the wrappers | `asm/`, `disasm/` |
| The change itself | `patches/0001-add-riscv64-spt-target.patch` |
| How to reproduce any of it | `notes/build-and-run.sh` |

## Where it has got to

Fifteen files, 312 insertions. Three new, the rest one arm added to an existing
`#if` ladder. The makefiles needed nothing, because both new sources are picked
up by `$(CONFIG_TARGET_ARCH)` and `$(CONFIG_HOST_ARCH)` substitution, and spt
does not pull in the `common_SRCS` that would have wanted a `cpu_riscv64.c` and
a `cpu_vectors_riscv64.S` as well.

`src/main.c` compiles the real `sys_linux_riscv64.c` and
`spt_launch_riscv64.S` out of the Solo5 tree, freestanding and with no libc,
and runs them under qemu-riscv64. All fifteen checks pass. The generated code is
in `disasm/` and it is about as boring as you would want:

```
0000000000010796 <spt_launch>:
   10796:	812a                	mv	sp,a0
   10798:	8532                	mv	a0,a2
   1079a:	8582                	jr	a1
```

Two of the error-path checks were wrong on the first run, and neither was the
wrappers' fault. `epoll_pwait` rejects a `maxevents` of zero before it looks at
the fd, and `timerfd_settime` faults on a null `itimerspec` before it looks at
the fd, so both returned the wrong errno for the right reason. The tests now
pass arguments real enough to reach the fd lookup. Worth writing down because a
test that fails for an unrelated reason is the same shape as a test that passes
for an unrelated reason.

## Still untested

Everything above is the ABI plumbing. None of it is the Solo5 build.

`configure.sh` has not been run on a riscv64 host, so the host and target
detection arms are unexercised. The seccomp filter, the TLS block layout end to
end, and `test_notls`, `test_fpu` and `test_seccomp` all need a real build. So
does the question of whether riscv64 needs `-mstack-protector-guard=global` the
way x86_64 and ppc64le do, or defaults to the global `__stack_chk_guard` symbol
the way aarch64 does and needs nothing. The guess is the latter, and a guess is
all it is until something builds.

## Why TLS is the whole job

The ppc64le port shipped with the stack guard giving up on TLS. Its PR title
says so out loud, "no TLS access for stack_guard". That option is gone now,
because Solo5 grew real TLS support in v0.8.0 specifically so the OCaml 5 runtime
could work, and the whole reason to want riscv64 in Solo5 is to run OCaml 5
unikernels on it.

RISC-V uses Variant I with `tp` one past the end of the TCB, so the thread
variables begin at `tp` exactly. Every other architecture in the tree has `tp`
landing somewhere that is not the first byte of `.tdata`, and `solo5_tls_init`
quietly relies on that when it writes a self-pointer at `tp` before copying
`.tdata` over the top. On RISC-V that write hits live data. It is invisible when
`.tdata` is non-empty and wrong when it is not. Written up properly in the notes.

## Open, decide before writing tls.c

Whether the riscv64 arm writes the self-pointer below `tp` or does not write one
at all. aarch64 and x86_64 both want it for their own reasons. RISC-V's TCB holds
a dtv pointer in glibc terms, and Solo5 has no dynamic TLS, so it may want
nothing there at all. Not guessing.

## Testing

Two machines, and the split matters.

qemu-riscv64 first, on x86-64, to get the syscall wrappers and the launch
trampoline assembling and running. That is enough to show the encodings are
right and the ABI plumbing holds together, and it is done.

Then real silicon, because two things in this port cannot be trusted to an
emulator. `rdtime` availability in U-mode is a hardware and firmware property and
qemu will always say yes. The seccomp filter is a kernel property and wants a
real kernel with a real `AUDIT_ARCH_RISCV64` to reject against. cfarm and the
native box both get a run, and both logs land in `logs/` unedited.

## Upstream

Solo5 cut v0.12.1 on 12 August 2026, so upstream is active. Nothing has been
sent anywhere and nothing will be until it builds and passes on hardware.
