# RISC-V ABI notes for the Solo5 spt port

Read before writing any of it. Sources are the RISC-V psABI (`riscv-cc.adoc` and
`riscv-elf.adoc` at riscv-non-isa/riscv-elf-psabi-doc), the kernel's
`include/uapi/asm-generic/unistd.h`, and the privileged spec for the counters.

The existing ppc64le spt port is the model, so most of this is written as "what
differs from ppc64le", since that is where the mistakes would come from.

## Registers

| Register | ABI name | Use | Saved by |
|---|---|---|---|
| x0 | zero | hardwired zero | n/a |
| x1 | ra | return address | caller |
| x2 | sp | stack pointer | callee |
| x3 | gp | global pointer | unallocatable |
| x4 | tp | thread pointer | unallocatable |
| x5-x7 | t0-t2 | temporaries | caller |
| x8-x9 | s0-s1 | saved | callee |
| x10-x17 | a0-a7 | arguments and returns | caller |
| x18-x27 | s2-s11 | saved | callee |
| x28-x31 | t3-t6 | temporaries | caller |

Arguments go in a0-a7, returns come back in a0 and a1. The stack pointer must be
aligned to 128 bits on procedure entry, so 16 bytes, same as ppc64le. There is no
minimum stack frame size the way ppc64le insists on 112 bytes, and no link
register to move a call target into, which makes `spt_launch` shorter than the
PowerPC one rather than longer.

The psABI says procedures must not modify `tp` or `gp` because signal handlers
may depend on them. We modify `tp` deliberately, which is the whole point of
`platform_set_tls_base`, and that is fine because we own the process. Worth
remembering when reading the constraint and thinking it forbids what we are
doing.

## The syscall path

`ecall`, with the number in a7 and arguments in a0 to a5. The return lands in a0.

The error convention is the good news. RISC-V returns a negative value in a0 on
failure, in the ordinary Linux style, so there is nothing to test and nothing to
negate. ppc64le sets the summary-overflow bit in CR0 and returns the positive
errno, which is why every wrapper in `sys_linux_ppc64le.c` carries an `mfcr`, a
`CR0_SO` test and a sign flip. None of that survives the port. The riscv64
wrappers are just the `ecall` and the register bindings, so the file should come
out noticeably shorter than the 230-line PowerPC one despite covering the same
eight calls.

`CR0_SO` lives in `cpu_ppc64.h`. There is no riscv64 equivalent to define.

## Syscall numbers

riscv64 is a generic-ABI architecture, so the numbers come from
`asm-generic/unistd.h` and look nothing like the PowerPC ones.

| call | riscv64 | ppc64le |
|---|---|---|
| read | 63 | 3 |
| write | 64 | 4 |
| pread64 | 67 | 179 |
| pwrite64 | 68 | 180 |
| epoll_pwait | 22 | 303 |
| timerfd_settime | 86 | 311 |
| exit_group | 94 | 234 |
| clock_gettime | 113 | 246 |

All eight exist, so nothing has to be worked around.

Two of these are declared with `__SC_3264`, which picks between a 32-bit and a
64-bit time implementation. `clock_gettime` at 113 resolves to
`sys_clock_gettime` and `timerfd_settime` at 86 resolves to
`sys_timerfd_settime` on a 64-bit build, so both numbers are the right ones for
us and there is no `_time64` variant to chase.

### One that nearly went in wrong

A syscall table site gave `timerfd_settime` as 440 on riscv64 and 328 on
ppc64le. The ppc64le number is checkable against Solo5's own source, which says
311, so the table was wrong and both its answers were discarded. The kernel
header says 86. Anything taken from a scraped table gets checked against
`asm-generic/unistd.h` before it goes in a file, because a wrong syscall number
is a silent wrong answer rather than a build failure.

## Thread local storage

This is the part the ppc64le port dodged, and we cannot dodge it, because the
OCaml 5 runtime needs the TLS support that arrived in Solo5 v0.8.0.

The psABI is explicit. RISC-V uses Variant I, with `tp` holding the address one
past the end of the TCB. So the control block sits below `tp` and the thread
variables start at `tp` itself. Local-exec accesses go through
`R_RISCV_TPREL_HI20`, `R_RISCV_TPREL_LO12_I` and `R_RISCV_TPREL_ADD`, computed as
S + A + TLSOFFSET.

Setting the base is a one-instruction job, `mv tp, base`, the same shape as
aarch64 writing `tpidr_el0` and ppc64le writing r13. No `arch_prctl` round trip
like x86_64.

### Where the copy-paste would have bitten

`solo5_tls_init` in `bindings/tls.c` does this:

```c
uintptr_t *tmp = (uintptr_t *)solo5_tls_tp_offset(tls);
*tmp = (uintptr_t)tmp;
memcpy((void *)_solo5_tls_data_offset(tls), TDATA, LTDATA);
```

It writes a self-pointer at `tp` before copying `.tdata` in. That works for the
existing three because on each of them `tp` lands somewhere that is not the start
of the thread variables. x86_64 puts `tp` at the end of the block, aarch64 puts
it at the start of a 16-byte TCB with the data at `tp + 16`, and ppc64le biases
it by 0x7000.

On RISC-V the data starts at `tp` exactly. Copy the aarch64 arm as-is and the
self-pointer write lands on the first word of `.tdata`, which the `memcpy` then
happens to overwrite. It looks like it works. It stops looking like it works the
moment a unikernel has no `.tdata` and some `.tbss`, because then there is no
`memcpy` to clean up after it and the first thread variable starts life holding a
pointer instead of zero.

So the riscv64 arm needs the TCB placed below `tp`, meaning
`solo5_tls_tp_offset` returns `tls + sizeof(struct tcb)` and
`_solo5_tls_data_offset` returns the same value. Whether the self-pointer should
be written at `tp - sizeof(struct tcb)` or not written at all is a real decision
and is flagged in the entry README rather than guessed at here.

## Page size

`PAGE_SIZE` in `cpu_riscv64.h` is 4096 with a shift of 12, not the 64K that
`cpu_ppc64.h` uses. `TARGET_LD_MAX_PAGE_SIZE` in `configure.sh` follows at
`0x1000`, which matches the x86_64 and aarch64 arms rather than the ppc64le
`0x10000` one.

## Reading the clock

`crt_init.h` seeds the stack canary from `READ_CPU_TICKS`, which maps to
`cpu_cntvct` on aarch64 and ppc64le and to `cpu_rdtsc` on x86_64. The riscv64
equivalent is `rdtime`, which reads the `time` CSR.

Use `rdtime` and not `rdcycle`. Linux commonly leaves `rdcycle` trapping in
U-mode, and there is a long-running complaint about exactly that.

`rdtime` itself is not unconditionally safe either. U-mode access is gated on the
TM bit in `scounteren`, and some early hardware hardwires it to zero on the
assumption that only S-mode would ever issue the instruction, leaving firmware to
trap and emulate. In practice anything running a current Linux has to permit it,
because the vdso has issued `rdtime` directly from user space since 5.8. It is
still the first thing to check on real silicon rather than under qemu, since the
failure mode is an illegal instruction trap at startup.

## Seccomp

The filter is architecture-tagged and will need `AUDIT_ARCH_RISCV64`. Not yet
read properly, so it is not written up here.

## Files the port touches

Grepping the tree for the ppc64le work gives eleven files, plus the three new
ones. Recorded here so the shape of the change is on paper before any of it is
written.

New:

- `bindings/cpu_riscv64.h`
- `bindings/spt/sys_linux_riscv64.c`
- `tenders/spt/spt_launch_riscv64.S`

Edited:

- `bindings/bindings.h`, picks the cpu header
- `bindings/crt_init.h`, `READ_CPU_TICKS`
- `bindings/tls.c`, the variant and the two offset functions
- `bindings/spt/platform.c`, `platform_set_tls_base`
- `tenders/common/elf.c`, `EM_TARGET` becomes `EM_RISCV`
- `tenders/spt/spt_core.c`, stack alignment and frame setup
- `configure.sh`, host and target detection
- `docs/building.md`, `opam/solo5.opam`, `CHANGES.md`
- `tests/test_fpu`, `tests/test_notls`, `tests/test_seccomp`
