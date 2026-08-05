	.file ""
	.section .rodata.cst16,"aM",@progbits,16
	.align	16
caml_negf_mask:
	.quad	0x8000000000000000
	.quad	0
	.align	16
caml_absf_mask:
	.quad	0x7fffffffffffffff
	.quad	-1
	.data
	.globl	camlComb_group.data_begin
camlComb_group.data_begin:
	.text
	.globl	camlComb_group.code_begin
camlComb_group.code_begin:
	.data
	.align	8
	.data
	.align	8
	.quad	4087
camlComb_group.42:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlComb_group.check_275
	.data
	.align	8
	.quad	3063
camlComb_group.41:
	.quad	camlComb_group.mk_323
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
camlComb_group.40:
	.quad	camlComb_group.mk2_329
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
camlComb_group.39:
	.quad	camlComb_group.contents_335
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
camlComb_group.38:
	.quad	camlComb_group.overlap_399
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
camlComb_group.37:
	.quad	camlComb_group.more_405
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
camlComb_group.36:
	.quad	camlComb_group.clobber_410
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
camlComb_group.35:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlComb_group.survives_501
	.data
	.align	8
	.quad	11008
	.globl	camlComb_group
camlComb_group:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.data
	.align	8
	.globl	camlComb_group.gc_roots
camlComb_group.gc_roots:
	.quad	camlComb_group
	.quad	0
	.text
	.align	16
	.globl	camlComb_group.check_275
camlComb_group.check_275:
	.cfi_startproc
	leaq	-328(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L103
.L104:
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L102:
	cmpq	(%r14), %r15
	jbe	.L105
.L106:
	cmpq	$1, %rbx
	je	.L101
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.align	4
.L101:
	movq	camlComb_group@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	addq	$2, (%rbx)
	movq	(%rbx), %rbx
	cmpq	$41, %rbx
	jge	.L100
	movq	%rax, (%rsp)
	movq	camlComb_group.6@GOTPCREL(%rip), %rbx
	movq	camlStdlib@GOTPCREL(%rip), %rax
	movq	304(%rax), %rax
	call	camlStdlib__Printf.fprintf_433@PLT
.L108:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rdi
	.cfi_adjust_cfa_offset 8
	.align	4
.L100:
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
.L105:
	call	caml_call_gc@PLT
.L107:
	jmp	.L106
.L103:
	push	$34
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L104
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlComb_group.check_275,@function
	.size camlComb_group.check_275,. - camlComb_group.check_275
	.text
	.align	16
	.globl	camlComb_group.mk_323
camlComb_group.mk_323:
	.cfi_startproc
.L109:
	subq	$104, %r15
	cmpq	(%r14), %r15
	jb	.L110
.L112:
	leaq	88(%r15), %rbx
	movq	$2048, -8(%rbx)
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	addq	$2, %rdi
	movq	%rdi, 8(%rbx)
	leaq	-32(%rbx), %rdi
	movq	$3072, -8(%rdi)
	movq	%rax, %rsi
	addq	$4, %rsi
	movq	%rsi, (%rdi)
	movq	%rax, %rsi
	addq	$6, %rsi
	movq	%rsi, 8(%rdi)
	movq	%rax, %rsi
	addq	$8, %rsi
	movq	%rsi, 16(%rdi)
	leaq	-16(%rdi), %rsi
	movq	$1024, -8(%rsi)
	addq	$10, %rax
	movq	%rax, (%rsi)
	leaq	-32(%rsi), %rax
	movq	$3072, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	movq	%rsi, 16(%rax)
	ret
.L110:
	call	caml_call_gc@PLT
.L111:
	jmp	.L112
	.cfi_endproc
	.type camlComb_group.mk_323,@function
	.size camlComb_group.mk_323,. - camlComb_group.mk_323
	.text
	.align	16
	.globl	camlComb_group.mk2_329
camlComb_group.mk2_329:
	.cfi_startproc
.L113:
	subq	$128, %r15
	cmpq	(%r14), %r15
	jb	.L114
.L116:
	leaq	120(%r15), %rbx
	movq	$1024, -8(%rbx)
	movq	%rax, (%rbx)
	leaq	-56(%rbx), %rdi
	movq	$6144, -8(%rdi)
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, (%rdi)
	movq	%rax, %rsi
	addq	$4, %rsi
	movq	%rsi, 8(%rdi)
	movq	%rax, %rsi
	addq	$6, %rsi
	movq	%rsi, 16(%rdi)
	movq	%rax, %rsi
	addq	$8, %rsi
	movq	%rsi, 24(%rdi)
	movq	%rax, %rsi
	addq	$10, %rsi
	movq	%rsi, 32(%rdi)
	movq	%rax, %rsi
	addq	$12, %rsi
	movq	%rsi, 40(%rdi)
	leaq	-24(%rdi), %rsi
	movq	$2048, -8(%rsi)
	movq	%rax, %rdx
	addq	$14, %rdx
	movq	%rdx, (%rsi)
	addq	$16, %rax
	movq	%rax, 8(%rsi)
	leaq	-32(%rsi), %rax
	movq	$3072, -8(%rax)
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	%rbx, 16(%rax)
	ret
.L114:
	call	caml_call_gc@PLT
.L115:
	jmp	.L116
	.cfi_endproc
	.type camlComb_group.mk2_329,@function
	.size camlComb_group.mk2_329,. - camlComb_group.mk2_329
	.text
	.align	16
	.globl	camlComb_group.contents_335
camlComb_group.contents_335:
	.cfi_startproc
	leaq	-352(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L122
.L123:
	subq	$32, %rsp
	.cfi_adjust_cfa_offset 32
.L121:
	movq	%rax, 24(%rsp)
	call	camlComb_group.mk_323@PLT
.L124:
	movq	%rax, 16(%rsp)
	movq	8(%rax), %rbx
	movq	%rbx, 8(%rsp)
	movq	(%rax), %rax
	movq	%rax, (%rsp)
	movq	-8(%rax), %rbx
	cmpq	$1023, %rbx
	jbe	.L125
	movq	(%rax), %rax
	movq	24(%rsp), %rbx
	cmpq	%rbx, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.7@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L126:
	movq	24(%rsp), %rax
	addq	$2, %rax
	movq	(%rsp), %rdi
	movq	-8(%rdi), %rbx
	cmpq	$2047, %rbx
	jbe	.L125
	movq	8(%rdi), %rbx
	cmpq	%rax, %rbx
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.8@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L127:
	movq	24(%rsp), %rax
	addq	$4, %rax
	movq	8(%rsp), %rdi
	movq	-8(%rdi), %rbx
	cmpq	$1023, %rbx
	jbe	.L125
	movq	(%rdi), %rbx
	cmpq	%rax, %rbx
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.9@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L128:
	movq	24(%rsp), %rax
	addq	$6, %rax
	movq	8(%rsp), %rdi
	movq	-8(%rdi), %rbx
	cmpq	$2047, %rbx
	jbe	.L125
	movq	8(%rdi), %rbx
	cmpq	%rax, %rbx
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.10@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L129:
	movq	24(%rsp), %rax
	addq	$8, %rax
	movq	8(%rsp), %rdi
	movq	-8(%rdi), %rbx
	cmpq	$3071, %rbx
	jbe	.L125
	movq	16(%rdi), %rbx
	cmpq	%rax, %rbx
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.11@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L130:
	movq	24(%rsp), %rax
	addq	$10, %rax
	movq	16(%rsp), %rbx
	movq	16(%rbx), %rbx
	movq	-8(%rbx), %rdi
	cmpq	$1023, %rdi
	jbe	.L125
	movq	(%rbx), %rbx
	cmpq	%rax, %rbx
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.12@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L131:
	movq	24(%rsp), %rax
	call	camlComb_group.mk2_329@PLT
.L132:
	movq	8(%rax), %rbx
	movq	%rbx, 8(%rsp)
	movq	(%rax), %rbx
	movq	%rbx, (%rsp)
	movq	16(%rax), %rax
	movq	-8(%rax), %rbx
	cmpq	$1023, %rbx
	jbe	.L125
	movq	(%rax), %rax
	movq	24(%rsp), %rbx
	cmpq	%rbx, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.13@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L133:
	movq	24(%rsp), %rsi
	movq	%rsi, %rax
	addq	$2, %rax
	movq	8(%rsp), %rdx
	movq	-8(%rdx), %rbx
	cmpq	$1023, %rbx
	jbe	.L125
	movq	(%rdx), %rdi
	cmpq	%rax, %rdi
	jne	.L120
	addq	$12, %rsi
	cmpq	$6143, %rbx
	jbe	.L125
	movq	40(%rdx), %rax
	cmpq	%rsi, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	jmp	.L119
	.align	4
.L120:
	movl	$1, %ebx
.L119:
	movq	camlComb_group.14@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L134:
	movq	24(%rsp), %rsi
	movq	%rsi, %rax
	addq	$14, %rax
	movq	(%rsp), %rdx
	movq	-8(%rdx), %rbx
	cmpq	$1023, %rbx
	jbe	.L125
	movq	(%rdx), %rdi
	cmpq	%rax, %rdi
	jne	.L118
	addq	$16, %rsi
	cmpq	$2047, %rbx
	jbe	.L125
	movq	8(%rdx), %rax
	cmpq	%rsi, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	jmp	.L117
	.align	4
.L118:
	movl	$1, %ebx
.L117:
	movq	camlComb_group.15@GOTPCREL(%rip), %rax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	jmp	camlComb_group.check_275@PLT
	.cfi_adjust_cfa_offset 32
.L125:
	call	caml_ml_array_bound_error@PLT
.L122:
	push	$37
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L123
	.cfi_adjust_cfa_offset -32
	.cfi_endproc
	.type camlComb_group.contents_335,@function
	.size camlComb_group.contents_335,. - camlComb_group.contents_335
	.text
	.align	16
	.globl	camlComb_group.overlap_399
camlComb_group.overlap_399:
	.cfi_startproc
	leaq	-344(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L140
.L141:
	subq	$24, %rsp
	.cfi_adjust_cfa_offset 24
.L139:
	movq	%rax, 16(%rsp)
	call	camlComb_group.mk_323@PLT
.L142:
	movq	16(%rax), %rbx
	movq	%rbx, (%rsp)
	movq	8(%rax), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rax), %rax
	movq	-8(%rax), %rsi
	cmpq	$1023, %rsi
	jbe	.L143
	movq	$87381, (%rax)
	movq	-8(%rdi), %rdx
	cmpq	$1023, %rdx
	jbe	.L143
	movq	$96119, (%rdi)
	movq	-8(%rbx), %rdi
	cmpq	$1023, %rdi
	jbe	.L143
	movq	$104857, (%rbx)
	movq	(%rax), %rbx
	cmpq	$87381, %rbx
	jne	.L138
	movq	16(%rsp), %rbx
	addq	$2, %rbx
	cmpq	$2047, %rsi
	jbe	.L143
	movq	8(%rax), %rax
	cmpq	%rbx, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	jmp	.L137
	.align	4
.L138:
	movl	$1, %ebx
.L137:
	movq	camlComb_group.16@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L144:
	movq	8(%rsp), %rdx
	movq	-8(%rdx), %rax
	cmpq	$1023, %rax
	jbe	.L143
	movq	(%rdx), %rbx
	cmpq	$96119, %rbx
	jne	.L136
	movq	16(%rsp), %rsi
	movq	%rsi, %rbx
	addq	$6, %rbx
	cmpq	$2047, %rax
	jbe	.L143
	movq	8(%rdx), %rdi
	cmpq	%rbx, %rdi
	jne	.L136
	addq	$8, %rsi
	cmpq	$3071, %rax
	jbe	.L143
	movq	16(%rdx), %rax
	cmpq	%rsi, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	jmp	.L135
	.align	4
.L136:
	movl	$1, %ebx
.L135:
	movq	camlComb_group.17@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L145:
	movq	(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$1023, %rax
	jbe	.L143
	movq	(%rbx), %rax
	cmpq	$104857, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.18@GOTPCREL(%rip), %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	jmp	camlComb_group.check_275@PLT
	.cfi_adjust_cfa_offset 24
.L143:
	call	caml_ml_array_bound_error@PLT
.L140:
	push	$36
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L141
	.cfi_adjust_cfa_offset -24
	.cfi_endproc
	.type camlComb_group.overlap_399,@function
	.size camlComb_group.overlap_399,. - camlComb_group.overlap_399
	.text
	.align	16
	.globl	camlComb_group.more_405
camlComb_group.more_405:
	.cfi_startproc
.L146:
	subq	$80, %r15
	cmpq	(%r14), %r15
	jb	.L147
.L149:
	leaq	64(%r15), %rbx
	movq	$2048, -8(%rbx)
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	addq	$2, %rdi
	movq	%rdi, 8(%rbx)
	leaq	-32(%rbx), %rdi
	movq	$3072, -8(%rdi)
	movq	%rax, %rsi
	addq	$4, %rsi
	movq	%rsi, (%rdi)
	movq	%rax, %rsi
	addq	$6, %rsi
	movq	%rsi, 8(%rdi)
	addq	$8, %rax
	movq	%rax, 16(%rdi)
	leaq	-24(%rdi), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	ret
.L147:
	call	caml_call_gc@PLT
.L148:
	jmp	.L149
	.cfi_endproc
	.type camlComb_group.more_405,@function
	.size camlComb_group.more_405,. - camlComb_group.more_405
	.text
	.align	16
	.globl	camlComb_group.clobber_410
camlComb_group.clobber_410:
	.cfi_startproc
	leaq	-360(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L157
.L158:
	subq	$40, %rsp
	.cfi_adjust_cfa_offset 40
.L156:
	movq	%rax, 24(%rsp)
	call	camlComb_group.mk_323@PLT
.L159:
	movq	%rax, (%rsp)
	movq	8(%rax), %rbx
	movq	%rbx, 8(%rsp)
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	movl	$1, %eax
	cmpq	$31, %rax
	jg	.L154
	movq	%rax, 32(%rsp)
.L155:
	movq	%rax, %rbx
	movq	24(%rsp), %rax
	addq	%rbx, %rax
	decq	%rax
	call	camlComb_group.more_405@PLT
.L160:
	movq	32(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 32(%rsp)
	cmpq	$31, %rbx
	je	.L154
	cmpq	(%r14), %r15
	ja	.L155
	jmp	.L161
.L154:
	movq	16(%rsp), %rsi
	movq	-8(%rsi), %rax
	cmpq	$1023, %rax
	jbe	.L163
	movq	(%rsi), %rbx
	movq	24(%rsp), %rdi
	cmpq	%rdi, %rbx
	jne	.L153
	addq	$2, %rdi
	cmpq	$2047, %rax
	jbe	.L163
	movq	8(%rsi), %rax
	cmpq	%rdi, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	jmp	.L152
	.align	4
.L153:
	movl	$1, %ebx
.L152:
	movq	camlComb_group.19@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L164:
	movq	24(%rsp), %rsi
	movq	%rsi, %rax
	addq	$4, %rax
	movq	8(%rsp), %rdx
	movq	-8(%rdx), %rbx
	cmpq	$1023, %rbx
	jbe	.L163
	movq	(%rdx), %rdi
	cmpq	%rax, %rdi
	jne	.L151
	addq	$8, %rsi
	cmpq	$3071, %rbx
	jbe	.L163
	movq	16(%rdx), %rax
	cmpq	%rsi, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	jmp	.L150
	.align	4
.L151:
	movl	$1, %ebx
.L150:
	movq	camlComb_group.20@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L165:
	movq	24(%rsp), %rax
	addq	$10, %rax
	movq	(%rsp), %rbx
	movq	16(%rbx), %rbx
	movq	-8(%rbx), %rdi
	cmpq	$1023, %rdi
	jbe	.L163
	movq	(%rbx), %rbx
	cmpq	%rax, %rbx
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.21@GOTPCREL(%rip), %rax
	addq	$40, %rsp
	.cfi_adjust_cfa_offset -40
	jmp	camlComb_group.check_275@PLT
	.cfi_adjust_cfa_offset 40
.L161:
	call	caml_call_gc@PLT
.L162:
	jmp	.L155
.L163:
	call	caml_ml_array_bound_error@PLT
.L157:
	push	$38
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L158
	.cfi_adjust_cfa_offset -40
	.cfi_endproc
	.type camlComb_group.clobber_410,@function
	.size camlComb_group.clobber_410,. - camlComb_group.clobber_410
	.text
	.align	16
	.globl	camlComb_group.survives_501
camlComb_group.survives_501:
	.cfi_startproc
	leaq	-336(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L168
.L169:
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
.L167:
	movq	%rax, (%rsp)
	movq	%rbx, %rax
	call	camlComb_group.mk_323@PLT
.L170:
	movq	(%rsp), %r12
	movq	%r12, %rbx
	andq	$127, %rbx
	movq	camlComb_group@GOTPCREL(%rip), %rdi
	movq	64(%rdi), %rdi
	movq	-8(%rdi), %rsi
	shrq	$9, %rsi
	cmpq	%rbx, %rsi
	jbe	.L171
	leaq	-4(%rdi,%rbx,4), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	addq	$64, %r12
	andq	$127, %r12
	movq	camlComb_group@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	movq	-8(%rax), %rbx
	shrq	$9, %rbx
	cmpq	%r12, %rbx
	jbe	.L171
	movq	-4(%rax,%r12,4), %rax
	movq	(%rax), %rbx
	movq	-8(%rbx), %rdi
	movq	%rdi, %rsi
	shrq	$9, %rsi
	orq	$1, %rsi
	cmpq	$1, %rsi
	jle	.L166
	movq	%rax, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, (%rsp)
	cmpq	$1023, %rdi
	jbe	.L171
	movq	(%rbx), %rax
	cmpq	$2047, %rdi
	jbe	.L171
	movq	8(%rbx), %rbx
	subq	%rax, %rbx
	incq	%rbx
	cmpq	$3, %rbx
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.24@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L172:
	movq	(%rsp), %rdi
	movq	-8(%rdi), %rax
	cmpq	$1023, %rax
	jbe	.L171
	movq	(%rdi), %rbx
	cmpq	$3071, %rax
	jbe	.L171
	movq	16(%rdi), %rax
	subq	%rbx, %rax
	incq	%rax
	cmpq	$5, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.25@GOTPCREL(%rip), %rax
	call	camlComb_group.check_275@PLT
.L173:
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	movq	-8(%rax), %rax
	shrq	$9, %rax
	orq	$1, %rax
	cmpq	$3, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlComb_group.26@GOTPCREL(%rip), %rax
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	camlComb_group.check_275@PLT
	.cfi_adjust_cfa_offset 16
	.align	4
.L166:
	movl	$1, %eax
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	ret
	.cfi_adjust_cfa_offset 16
.L171:
	call	caml_ml_array_bound_error@PLT
.L168:
	push	$35
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L169
	.cfi_adjust_cfa_offset -16
	.cfi_endproc
	.type camlComb_group.survives_501,@function
	.size camlComb_group.survives_501,. - camlComb_group.survives_501
	.data
	.align	8
	.quad	2044
camlComb_group.9:
	.ascii	"b.(0)"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	2044
camlComb_group.8:
	.ascii	"a.(1)"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	2044
camlComb_group.7:
	.ascii	"a.(0)"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	2816
camlComb_group.6:
	.quad	camlComb_group.4
	.quad	camlComb_group.5
	.data
	.align	8
	.quad	3068
camlComb_group.5:
	.ascii	"FAIL %s\12"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	2827
camlComb_group.4:
	.quad	camlComb_group.1
	.quad	camlComb_group.3
	.data
	.align	8
	.quad	2816
camlComb_group.34:
	.quad	camlComb_group.32
	.quad	camlComb_group.33
	.data
	.align	8
	.quad	5116
camlComb_group.33:
	.ascii	"comb_group: %d failures\12"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	2827
camlComb_group.32:
	.quad	camlComb_group.28
	.quad	camlComb_group.31
	.data
	.align	8
	.quad	4868
camlComb_group.31:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlComb_group.30
	.data
	.align	8
	.quad	2827
camlComb_group.30:
	.quad	camlComb_group.29
	.quad	1
	.data
	.align	8
	.quad	2818
camlComb_group.3:
	.quad	1
	.quad	camlComb_group.2
	.data
	.align	8
	.quad	3068
camlComb_group.29:
	.ascii	" failures\12"
	.space	5
	.byte	5
	.data
	.align	8
	.quad	3068
camlComb_group.28:
	.ascii	"comb_group: "
	.space	3
	.byte	3
	.data
	.align	8
	.quad	3068
camlComb_group.27:
	.ascii	"comb_group: ok"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3068
camlComb_group.26:
	.ascii	"promoted c"
	.space	5
	.byte	5
	.data
	.align	8
	.quad	3068
camlComb_group.25:
	.ascii	"promoted b"
	.space	5
	.byte	5
	.data
	.align	8
	.quad	3068
camlComb_group.24:
	.ascii	"promoted a"
	.space	5
	.byte	5
	.data
	.align	8
	.quad	3840
camlComb_group.23:
	.quad	camlComb_group.22
	.quad	camlComb_group.22
	.quad	camlComb_group.22
	.data
	.align	8
	.quad	768
camlComb_group.22:
	.data
	.align	8
	.quad	4092
camlComb_group.21:
	.ascii	"c after later allocs"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	4092
camlComb_group.20:
	.ascii	"b after later allocs"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	2828
camlComb_group.2:
	.quad	21
	.quad	1
	.data
	.align	8
	.quad	4092
camlComb_group.19:
	.ascii	"a after later allocs"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	3068
camlComb_group.18:
	.ascii	"no overlap c"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	3068
camlComb_group.17:
	.ascii	"no overlap b"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	3068
camlComb_group.16:
	.ascii	"no overlap a"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	2044
camlComb_group.15:
	.ascii	"r"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	2044
camlComb_group.14:
	.ascii	"q"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	2044
camlComb_group.13:
	.ascii	"p.(0)"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	2044
camlComb_group.12:
	.ascii	"c.(0)"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	2044
camlComb_group.11:
	.ascii	"b.(2)"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	2044
camlComb_group.10:
	.ascii	"b.(1)"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	2044
camlComb_group.1:
	.ascii	"FAIL "
	.space	2
	.byte	2
	.text
	.align	16
	.globl	camlComb_group.entry
camlComb_group.entry:
	.cfi_startproc
	leaq	-328(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L180
.L181:
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L179:
	call	caml_alloc1@PLT
.L182:
	leaq	8(%r15), %rsi
	movq	$1024, -8(%rsi)
	movq	$1, (%rsi)
	movq	camlComb_group@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlComb_group.42@GOTPCREL(%rip), %rsi
	movq	camlComb_group@GOTPCREL(%rip), %rdi
	addq	$8, %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlComb_group.41@GOTPCREL(%rip), %rsi
	movq	camlComb_group@GOTPCREL(%rip), %rdi
	addq	$16, %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlComb_group.40@GOTPCREL(%rip), %rsi
	movq	camlComb_group@GOTPCREL(%rip), %rdi
	addq	$24, %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlComb_group.39@GOTPCREL(%rip), %rsi
	movq	camlComb_group@GOTPCREL(%rip), %rdi
	addq	$32, %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlComb_group.38@GOTPCREL(%rip), %rsi
	movq	camlComb_group@GOTPCREL(%rip), %rdi
	addq	$40, %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlComb_group.37@GOTPCREL(%rip), %rsi
	movq	camlComb_group@GOTPCREL(%rip), %rdi
	addq	$48, %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlComb_group.36@GOTPCREL(%rip), %rsi
	movq	camlComb_group@GOTPCREL(%rip), %rdi
	addq	$56, %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlComb_group.23@GOTPCREL(%rip), %rsi
	movl	$129, %edi
	movq	caml_array_make@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L183:
	movq	camlComb_group@GOTPCREL(%rip), %rdi
	addq	$64, %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlComb_group.35@GOTPCREL(%rip), %rsi
	movq	camlComb_group@GOTPCREL(%rip), %rdi
	addq	$72, %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movl	$1, %eax
	cmpq	$4000001, %rax
	jg	.L176
	movq	%rax, (%rsp)
.L177:
	call	camlComb_group.contents_335@PLT
.L184:
	movq	(%rsp), %rax
	call	camlComb_group.overlap_399@PLT
.L185:
	movq	(%rsp), %rax
	call	camlComb_group.clobber_410@PLT
.L186:
	movq	(%rsp), %rax
	movq	%rax, %rbx
	call	camlComb_group.survives_501@PLT
.L187:
	movq	(%rsp), %rax
	andq	$131071, %rax
	cmpq	$1, %rax
	jne	.L178
	movl	$1, %edi
	movq	caml_gc_minor@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L188:
.L178:
	movq	(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, (%rsp)
	cmpq	$4000001, %rbx
	je	.L176
	cmpq	(%r14), %r15
	ja	.L177
	jmp	.L189
.L176:
	movl	$1, %edi
	movq	caml_gc_full_major@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L191:
	movq	camlComb_group@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	jne	.L175
	movq	camlComb_group.27@GOTPCREL(%rip), %rax
	call	camlStdlib.print_endline_369@PLT
.L192:
	jmp	.L174
.L175:
	movq	%rax, (%rsp)
	movq	camlComb_group.34@GOTPCREL(%rip), %rbx
	movq	camlStdlib@GOTPCREL(%rip), %rax
	movq	304(%rax), %rax
	call	camlStdlib__Printf.fprintf_433@PLT
.L193:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	call	*%rdi
.L194:
.L174:
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
.L189:
	call	caml_call_gc@PLT
.L190:
	jmp	.L177
.L180:
	push	$34
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L181
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlComb_group.entry,@function
	.size camlComb_group.entry,. - camlComb_group.entry
	.data
	.align	8
	.text
	.globl	camlComb_group.code_end
camlComb_group.code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlComb_group.data_end
camlComb_group.data_end:
	.quad	0
	.align	8
	.globl	camlComb_group.frametable
camlComb_group.frametable:
	.quad	38
	.quad	.L194
	.word	17
	.word	0
	.align	4
	.long	(.L195 - .) + 0
	.align	8
	.quad	.L193
	.word	17
	.word	0
	.align	4
	.long	(.L196 - .) + 0
	.align	8
	.quad	.L192
	.word	17
	.word	0
	.align	4
	.long	(.L197 - .) + 0
	.align	8
	.quad	.L191
	.word	17
	.word	0
	.align	4
	.long	(.L198 - .) + 0
	.align	8
	.quad	.L190
	.word	18
	.word	0
	.byte	0
	.align	8
	.quad	.L188
	.word	17
	.word	0
	.align	4
	.long	(.L199 - .) + 0
	.align	8
	.quad	.L187
	.word	17
	.word	0
	.align	4
	.long	(.L200 - .) + 0
	.align	8
	.quad	.L186
	.word	17
	.word	0
	.align	4
	.long	(.L201 - .) + 0
	.align	8
	.quad	.L185
	.word	17
	.word	0
	.align	4
	.long	(.L202 - .) + 0
	.align	8
	.quad	.L184
	.word	17
	.word	0
	.align	4
	.long	(.L203 - .) + 0
	.align	8
	.quad	.L183
	.word	17
	.word	0
	.align	4
	.long	(.L204 - .) + 0
	.align	8
	.quad	.L182
	.word	18
	.word	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L173
	.word	25
	.word	1
	.word	8
	.align	4
	.long	(.L205 - .) + 0
	.align	8
	.quad	.L172
	.word	25
	.word	2
	.word	0
	.word	8
	.align	4
	.long	(.L206 - .) + 0
	.align	8
	.quad	.L170
	.word	25
	.word	0
	.align	4
	.long	(.L207 - .) + 0
	.align	8
	.quad	.L165
	.word	49
	.word	1
	.word	0
	.align	4
	.long	(.L208 - .) + 0
	.align	8
	.quad	.L164
	.word	49
	.word	2
	.word	0
	.word	8
	.align	4
	.long	(.L209 - .) + 0
	.align	8
	.quad	.L162
	.word	50
	.word	3
	.word	0
	.word	8
	.word	16
	.byte	0
	.align	8
	.quad	.L160
	.word	49
	.word	3
	.word	0
	.word	8
	.word	16
	.align	4
	.long	(.L210 - .) + 0
	.align	8
	.quad	.L159
	.word	49
	.word	0
	.align	4
	.long	(.L211 - .) + 0
	.align	8
	.quad	.L148
	.word	10
	.word	0
	.byte	3
	.byte	1
	.byte	2
	.byte	1
	.align	8
	.quad	.L145
	.word	33
	.word	1
	.word	0
	.align	4
	.long	(.L212 - .) + 0
	.align	8
	.quad	.L144
	.word	33
	.word	2
	.word	0
	.word	8
	.align	4
	.long	(.L213 - .) + 0
	.align	8
	.quad	.L142
	.word	33
	.word	0
	.align	4
	.long	(.L214 - .) + 0
	.align	8
	.quad	.L134
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L215 - .) + 0
	.align	8
	.quad	.L133
	.word	41
	.word	2
	.word	0
	.word	8
	.align	4
	.long	(.L216 - .) + 0
	.align	8
	.quad	.L132
	.word	41
	.word	0
	.align	4
	.long	(.L217 - .) + 0
	.align	8
	.quad	.L131
	.word	41
	.word	0
	.align	4
	.long	(.L218 - .) + 0
	.align	8
	.quad	.L130
	.word	41
	.word	1
	.word	16
	.align	4
	.long	(.L219 - .) + 0
	.align	8
	.quad	.L129
	.word	41
	.word	2
	.word	8
	.word	16
	.align	4
	.long	(.L220 - .) + 0
	.align	8
	.quad	.L128
	.word	41
	.word	2
	.word	8
	.word	16
	.align	4
	.long	(.L221 - .) + 0
	.align	8
	.quad	.L127
	.word	41
	.word	2
	.word	8
	.word	16
	.align	4
	.long	(.L222 - .) + 0
	.align	8
	.quad	.L126
	.word	41
	.word	3
	.word	0
	.word	8
	.word	16
	.align	4
	.long	(.L223 - .) + 0
	.align	8
	.quad	.L124
	.word	41
	.word	0
	.align	4
	.long	(.L224 - .) + 0
	.align	8
	.quad	.L115
	.word	10
	.word	0
	.byte	4
	.byte	2
	.byte	1
	.byte	5
	.byte	0
	.align	8
	.quad	.L111
	.word	10
	.word	0
	.byte	4
	.byte	2
	.byte	0
	.byte	2
	.byte	1
	.align	8
	.quad	.L108
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L196 - .) + 0
	.align	8
	.quad	.L107
	.word	18
	.word	1
	.word	1
	.byte	0
	.align	8
	.align	4
.L207:
	.long	(.L226 - .) + 0
	.long	43538640
	.align	4
.L215:
	.long	(.L227 - .) + 0
	.long	22022496
	.align	4
.L204:
	.long	(.L228 - .) + 0
	.long	41954648
	.align	4
.L196:
	.long	(.L230 - .) + 0
	.long	16270616
	.align	4
.L221:
	.long	(.L227 - .) + 0
	.long	18876664
	.align	4
.L208:
	.long	(.L231 - .) + 0
	.long	39324152
	.align	4
.L210:
	.long	(.L231 - .) + 0
	.long	37781872
	.align	4
.L219:
	.long	(.L227 - .) + 0
	.long	19925240
	.align	4
.L200:
	.long	(.L232 - .) + 0
	.long	51384448
	.align	4
.L195:
	.long	(.L232 - .) + 0
	.long	54009296
	.align	4
.L222:
	.long	(.L227 - .) + 0
	.long	18352376
	.align	4
.L218:
	.long	(.L227 - .) + 0
	.long	20449528
	.align	4
.L217:
	.long	(.L227 - .) + 0
	.long	20990136
	.align	4
.L212:
	.long	(.L233 - .) + 0
	.long	27789896
	.align	4
.L211:
	.long	(.L231 - .) + 0
	.long	36718768
	.align	4
.L197:
	.long	(.L232 - .) + 0
	.long	53502384
	.align	4
.L213:
	.long	(.L233 - .) + 0
	.long	27265472
	.align	4
.L206:
	.long	(.L226 - .) + 0
	.long	45093200
	.align	4
.L223:
	.long	(.L227 - .) + 0
	.long	17828056
	.align	4
.L220:
	.long	(.L227 - .) + 0
	.long	19400952
	.align	4
.L214:
	.long	(.L233 - .) + 0
	.long	25184432
	.align	4
.L209:
	.long	(.L231 - .) + 0
	.long	38799832
	.align	4
.L216:
	.long	(.L227 - .) + 0
	.long	21498072
	.align	4
.L203:
	.long	(.L232 - .) + 0
	.long	49811568
	.align	4
.L205:
	.long	(.L226 - .) + 0
	.long	45617488
	.align	4
.L201:
	.long	(.L232 - .) + 0
	.long	50860136
	.align	4
.L224:
	.long	(.L227 - .) + 0
	.long	17320112
	.align	4
.L198:
	.long	(.L232 - .) + 0
	.long	52955280
	.align	4
.L202:
	.long	(.L232 - .) + 0
	.long	50335848
	.align	4
.L199:
	.long	(.L232 - .) + 0
	.long	51935560
.L225:
	.ascii	"comb_group.ml\0"
.L229:
	.ascii	"printf.ml\0"
	.align	4
.L226:
	.long	(.L225 - .) + 0
	.ascii	"Comb_group.survives\0"
	.align	4
.L231:
	.long	(.L225 - .) + 0
	.ascii	"Comb_group.clobber\0"
	.align	4
.L227:
	.long	(.L225 - .) + 0
	.ascii	"Comb_group.contents\0"
	.align	4
.L233:
	.long	(.L225 - .) + 0
	.ascii	"Comb_group.overlap\0"
	.align	4
.L230:
	.long	(.L229 - .) + 0
	.ascii	"Stdlib__Printf.printf\0"
	.align	4
.L232:
	.long	(.L225 - .) + 0
	.ascii	"Comb_group\0"
	.align	4
.L228:
	.long	(.L225 - .) + 0
	.ascii	"Comb_group.live\0"
	.align	8
	.type camlComb_group.frametable,@object
	.size camlComb_group.frametable,. - camlComb_group.frametable
	.section .note.GNU-stack,"",%progbits
