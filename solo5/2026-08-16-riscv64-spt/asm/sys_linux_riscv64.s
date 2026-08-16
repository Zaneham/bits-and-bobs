	.file	"sys_linux_riscv64.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sys_read
	.type	sys_read, @function
sys_read:
.LFB6:
	.cfi_startproc
	li	a7,63
#APP
# 52 "/mnt/c/dev/systems/solo5/bindings/spt/sys_linux_riscv64.c" 1
	ecall
# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE6:
	.size	sys_read, .-sys_read
	.align	1
	.globl	sys_write
	.type	sys_write, @function
sys_write:
.LFB7:
	.cfi_startproc
	li	a7,64
#APP
# 67 "/mnt/c/dev/systems/solo5/bindings/spt/sys_linux_riscv64.c" 1
	ecall
# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE7:
	.size	sys_write, .-sys_write
	.align	1
	.globl	sys_pread64
	.type	sys_pread64, @function
sys_pread64:
.LFB8:
	.cfi_startproc
	li	a7,67
#APP
# 83 "/mnt/c/dev/systems/solo5/bindings/spt/sys_linux_riscv64.c" 1
	ecall
# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE8:
	.size	sys_pread64, .-sys_pread64
	.align	1
	.globl	sys_pwrite64
	.type	sys_pwrite64, @function
sys_pwrite64:
.LFB9:
	.cfi_startproc
	li	a7,68
#APP
# 99 "/mnt/c/dev/systems/solo5/bindings/spt/sys_linux_riscv64.c" 1
	ecall
# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE9:
	.size	sys_pwrite64, .-sys_pwrite64
	.align	1
	.globl	sys_exit_group
	.type	sys_exit_group, @function
sys_exit_group:
.LFB10:
	.cfi_startproc
	li	a7,94
#APP
# 112 "/mnt/c/dev/systems/solo5/bindings/spt/sys_linux_riscv64.c" 1
	ecall
# 0 "" 2
#NO_APP
.L7:
	j	.L7
	.cfi_endproc
.LFE10:
	.size	sys_exit_group, .-sys_exit_group
	.align	1
	.globl	sys_clock_gettime
	.type	sys_clock_gettime, @function
sys_clock_gettime:
.LFB11:
	.cfi_startproc
	li	a7,113
#APP
# 124 "/mnt/c/dev/systems/solo5/bindings/spt/sys_linux_riscv64.c" 1
	ecall
# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE11:
	.size	sys_clock_gettime, .-sys_clock_gettime
	.align	1
	.globl	sys_epoll_pwait
	.type	sys_epoll_pwait, @function
sys_epoll_pwait:
.LFB12:
	.cfi_startproc
	li	a7,22
#APP
# 143 "/mnt/c/dev/systems/solo5/bindings/spt/sys_linux_riscv64.c" 1
	ecall
# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE12:
	.size	sys_epoll_pwait, .-sys_epoll_pwait
	.align	1
	.globl	sys_timerfd_settime
	.type	sys_timerfd_settime, @function
sys_timerfd_settime:
.LFB13:
	.cfi_startproc
	li	a7,86
#APP
# 159 "/mnt/c/dev/systems/solo5/bindings/spt/sys_linux_riscv64.c" 1
	ecall
# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE13:
	.size	sys_timerfd_settime, .-sys_timerfd_settime
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
