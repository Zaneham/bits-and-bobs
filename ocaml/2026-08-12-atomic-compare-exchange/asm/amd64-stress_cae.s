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
	.globl	camlStress_cae.data_begin
camlStress_cae.data_begin:
	.text
	.globl	camlStress_cae.code_begin
camlStress_cae.code_begin:
	.data
	.align	8
	.data
	.align	8
	.quad	4087
camlStress_cae.58:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlStress_cae.check_277
	.data
	.align	8
	.quad	4864
	.globl	camlStress_cae
camlStress_cae:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.data
	.align	8
	.globl	camlStress_cae.gc_roots
camlStress_cae.gc_roots:
	.quad	camlStress_cae
	.quad	0
	.text
	.align	16
	.globl	camlStress_cae.check_277
camlStress_cae.check_277:
	.cfi_startproc
	leaq	-328(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L102
.L103:
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L101:
	cmpq	(%r14), %r15
	jbe	.L104
.L105:
	cmpq	$1, %rbx
	je	.L100
	movq	%rax, (%rsp)
	movq	camlStress_cae.6@GOTPCREL(%rip), %rbx
	movq	camlStdlib@GOTPCREL(%rip), %rax
	movq	304(%rax), %rax
	call	camlStdlib__Printf.fprintf_433@PLT
.L107:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rdi
	.cfi_adjust_cfa_offset 8
	.align	4
.L100:
	movq	camlStress_cae@GOTPCREL(%rip), %rbx
	movq	16(%rbx), %rbx
	addq	$2, (%rbx)
	movq	%rax, (%rsp)
	movq	camlStress_cae.10@GOTPCREL(%rip), %rbx
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
.L104:
	call	caml_call_gc@PLT
.L106:
	jmp	.L105
.L102:
	push	$34
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L103
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlStress_cae.check_277,@function
	.size camlStress_cae.check_277,. - camlStress_cae.check_277
	.text
	.align	16
	.globl	camlStress_cae.bump_387
camlStress_cae.bump_387:
	.cfi_startproc
	leaq	-336(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L112
.L113:
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
.L111:
	movl	$3, %eax
	cmpq	$200001, %rax
	jg	.L109
	movq	%rax, 8(%rsp)
	movq	%rbx, (%rsp)
.L110:
	subq	$32, %r15
	cmpq	(%r14), %r15
	jb	.L114
.L116:
	leaq	8(%r15), %rbx
	movq	$3319, -8(%rbx)
	movq	camlStress_cae.go_390@GOTPCREL(%rip), %rax
	movq	%rax, (%rbx)
	movabsq	$72057594037927941, %rax
	movq	%rax, 8(%rbx)
	movq	(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rbx)
	movl	$1, %eax
	call	camlStress_cae.go_390@PLT
.L117:
	movq	8(%rsp), %rbx
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	$200001, %rax
	jne	.L110
.L109:
	movl	$1, %eax
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	ret
	.cfi_adjust_cfa_offset 16
.L114:
	call	caml_call_gc@PLT
.L115:
	jmp	.L116
.L112:
	push	$35
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L113
	.cfi_adjust_cfa_offset -16
	.cfi_endproc
	.type camlStress_cae.bump_387,@function
	.size camlStress_cae.bump_387,. - camlStress_cae.bump_387
	.text
	.align	16
	.globl	camlStress_cae.go_390
camlStress_cae.go_390:
	.cfi_startproc
.L119:
	cmpq	(%r14), %r15
	jbe	.L120
.L121:
	movq	16(%rbx), %rdi
	movq	(%rdi), %rsi
	movq	caml_num_domains_running@GOTPCREL(%rip), %rdx
	movq	%rsi, %rcx
	addq	$2, %rcx
	movq	%rsi, %rax
	cmpq	$1, (%rdx)
	jne	.L123
	movq	(%rdi), %r8
	cmpq	%r8, %rax
	jne	.L124
	movq	%rcx, (%rdi)
.L124:
	movq	%r8, %rax
	jmp	.L125
.L123:
	lock cmpxchgq	%rcx, (%rdi)
.L125:
	cmpq	%rsi, %rax
	jne	.L118
	movl	$1, %eax
	ret
	.align	4
.L118:
	movl	$1, %eax
	jmp	.L119
.L120:
	call	caml_call_gc@PLT
.L122:
	jmp	.L121
	.cfi_endproc
	.type camlStress_cae.go_390,@function
	.size camlStress_cae.go_390,. - camlStress_cae.go_390
	.text
	.align	16
	.globl	camlStress_cae.fun_604
camlStress_cae.fun_604:
	.cfi_startproc
.L126:
	movq	16(%rbx), %rax
	movq	camlStdlib__Domain@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	jmp	camlStdlib__Domain.spawn_790@PLT
	.cfi_endproc
	.type camlStress_cae.fun_604,@function
	.size camlStress_cae.fun_604,. - camlStress_cae.fun_604
	.text
	.align	16
	.globl	camlStress_cae.collect_556
camlStress_cae.collect_556:
	.cfi_startproc
.L129:
	movq	%rax, %rdx
	movl	$1, %eax
	movl	$3, %edi
	cmpq	$200001, %rdi
	jg	.L127
.L128:
	movq	%rax, %rsi
	movq	%rdx, %rax
	imulq	$100000, %rax
	addq	%rdi, %rax
	addq	$-100000, %rax
	movq	caml_num_domains_running@GOTPCREL(%rip), %rcx
	movq	16(%rbx), %r8
	cmpq	$1, (%rcx)
	jne	.L130
	movq	(%r8), %r9
	movq	%rax, (%r8)
	movq	%r9, %rax
	jmp	.L131
.L130:
	xchg	%rax, (%r8)
.L131:
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L132
.L134:
	leaq	8(%r15), %rcx
	movq	$2048, -8(%rcx)
	movq	%rax, (%rcx)
	movq	%rsi, 8(%rcx)
	movq	%rcx, %rax
	movq	%rdi, %rsi
	addq	$2, %rdi
	cmpq	$200001, %rsi
	jne	.L128
.L127:
	ret
.L132:
	call	caml_call_gc@PLT
.L133:
	jmp	.L134
	.cfi_endproc
	.type camlStress_cae.collect_556,@function
	.size camlStress_cae.collect_556,. - camlStress_cae.collect_556
	.text
	.align	16
	.globl	camlStress_cae.fun_625
camlStress_cae.fun_625:
	.cfi_startproc
.L135:
	movq	24(%rbx), %rax
	addq	$2, %rax
	movq	16(%rbx), %rbx
	jmp	camlStress_cae.collect_556@PLT
	.cfi_endproc
	.type camlStress_cae.fun_625,@function
	.size camlStress_cae.fun_625,. - camlStress_cae.fun_625
	.text
	.align	16
	.globl	camlStress_cae.fun_613
camlStress_cae.fun_613:
	.cfi_startproc
.L136:
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L137
.L139:
	leaq	8(%r15), %rdi
	movq	$4343, -8(%rdi)
	movq	camlStress_cae.fun_625@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rdi)
	movabsq	$72057594037927941, %rsi
	movq	%rsi, 8(%rdi)
	movq	16(%rbx), %rbx
	movq	%rbx, 16(%rdi)
	movq	%rax, 24(%rdi)
	movq	camlStdlib__Domain@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	movq	%rdi, %rax
	jmp	camlStdlib__Domain.spawn_790@PLT
.L137:
	call	caml_call_gc@PLT
.L138:
	jmp	.L139
	.cfi_endproc
	.type camlStress_cae.fun_613,@function
	.size camlStress_cae.fun_613,. - camlStress_cae.fun_613
	.text
	.align	16
	.globl	camlStress_cae.fun_634
camlStress_cae.fun_634:
	.cfi_startproc
.L140:
	movq	16(%rbx), %rbx
	movq	-8(%rbx), %rdi
	shrq	$9, %rdi
	cmpq	%rax, %rdi
	jbe	.L141
	movq	-4(%rbx,%rax,4), %rdi
	addq	$2, %rdi
	movq	%rdi, -4(%rbx,%rax,4)
	movl	$1, %eax
	ret
.L141:
	call	caml_ml_array_bound_error@PLT
	.cfi_endproc
	.type camlStress_cae.fun_634,@function
	.size camlStress_cae.fun_634,. - camlStress_cae.fun_634
	.data
	.align	8
	.quad	3068
camlStress_cae.9:
	.ascii	"  FAIL: %s\12"
	.space	4
	.byte	4
	.data
	.align	8
	.quad	2827
camlStress_cae.8:
	.quad	camlStress_cae.7
	.quad	camlStress_cae.3
	.data
	.align	8
	.quad	3068
camlStress_cae.7:
	.ascii	"  FAIL: "
	.space	7
	.byte	7
	.data
	.align	8
	.quad	2816
camlStress_cae.6:
	.quad	camlStress_cae.4
	.quad	camlStress_cae.5
	.data
	.align	8
	.quad	2816
camlStress_cae.57:
	.quad	camlStress_cae.55
	.quad	camlStress_cae.56
	.data
	.align	8
	.quad	3068
camlStress_cae.56:
	.ascii	"%d FAILURES\12"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	4868
camlStress_cae.55:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.54
	.data
	.align	8
	.quad	2827
camlStress_cae.54:
	.quad	camlStress_cae.53
	.quad	1
	.data
	.align	8
	.quad	3068
camlStress_cae.53:
	.ascii	" FAILURES\12"
	.space	5
	.byte	5
	.data
	.align	8
	.quad	2044
camlStress_cae.52:
	.ascii	"ALL OK"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	6140
camlStress_cae.51:
	.ascii	"every value observed exactly once"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	2816
camlStress_cae.50:
	.quad	camlStress_cae.49
	.quad	camlStress_cae.48
	.data
	.align	8
	.quad	3068
camlStress_cae.5:
	.ascii	"  PASS: %s\12"
	.space	4
	.byte	4
	.data
	.align	8
	.quad	2827
camlStress_cae.49:
	.quad	camlStress_cae.48
	.quad	1
	.data
	.align	8
	.quad	4092
camlStress_cae.48:
	.ascii	"Contended exchange\12"
	.space	4
	.byte	4
	.data
	.align	8
	.quad	3068
camlStress_cae.47:
	.ascii	"no lost updates"
	.byte	0
	.data
	.align	8
	.quad	2816
camlStress_cae.46:
	.quad	camlStress_cae.44
	.quad	camlStress_cae.45
	.data
	.align	8
	.quad	6140
camlStress_cae.45:
	.ascii	"Contended increment (%d domains x %d)\12"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	2827
camlStress_cae.44:
	.quad	camlStress_cae.37
	.quad	camlStress_cae.43
	.data
	.align	8
	.quad	4868
camlStress_cae.43:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.42
	.data
	.align	8
	.quad	2827
camlStress_cae.42:
	.quad	camlStress_cae.38
	.quad	camlStress_cae.41
	.data
	.align	8
	.quad	4868
camlStress_cae.41:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.40
	.data
	.align	8
	.quad	2827
camlStress_cae.40:
	.quad	camlStress_cae.39
	.quad	1
	.data
	.align	8
	.quad	2827
camlStress_cae.4:
	.quad	camlStress_cae.1
	.quad	camlStress_cae.3
	.data
	.align	8
	.quad	2044
camlStress_cae.39:
	.ascii	")\12"
	.space	5
	.byte	5
	.data
	.align	8
	.quad	3068
camlStress_cae.38:
	.ascii	" domains x "
	.space	4
	.byte	4
	.data
	.align	8
	.quad	4092
camlStress_cae.37:
	.ascii	"Contended increment ("
	.space	2
	.byte	2
	.data
	.align	8
	.quad	4092
camlStress_cae.36:
	.ascii	"boxed survives gc"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	3068
camlStress_cae.35:
	.ascii	"boxed value"
	.space	4
	.byte	4
	.data
	.align	8
	.quad	3068
camlStress_cae.34:
	.ascii	"boxed cas hit"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	3068
camlStress_cae.33:
	.ascii	"boxed cas miss"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	2044
camlStress_cae.32:
	.ascii	"b"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	2044
camlStress_cae.31:
	.ascii	"a"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	2816
camlStress_cae.30:
	.quad	camlStress_cae.29
	.quad	camlStress_cae.28
	.data
	.align	8
	.quad	2818
camlStress_cae.3:
	.quad	1
	.quad	camlStress_cae.2
	.data
	.align	8
	.quad	2827
camlStress_cae.29:
	.quad	camlStress_cae.28
	.quad	1
	.data
	.align	8
	.quad	5116
camlStress_cae.28:
	.ascii	"Boxed (barrier retained)\12"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	3068
camlStress_cae.27:
	.ascii	"max_int stored"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3068
camlStress_cae.26:
	.ascii	"max_int cas"
	.space	4
	.byte	4
	.data
	.align	8
	.quad	3068
camlStress_cae.25:
	.ascii	"negative stored"
	.byte	0
	.data
	.align	8
	.quad	3068
camlStress_cae.24:
	.ascii	"negative cas"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	3068
camlStress_cae.23:
	.ascii	"bool value"
	.space	5
	.byte	5
	.data
	.align	8
	.quad	3068
camlStress_cae.22:
	.ascii	"bool cas miss"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	3068
camlStress_cae.21:
	.ascii	"bool cas hit"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	3068
camlStress_cae.20:
	.ascii	"exchange stored"
	.byte	0
	.data
	.align	8
	.quad	2828
camlStress_cae.2:
	.quad	21
	.quad	1
	.data
	.align	8
	.quad	4092
camlStress_cae.19:
	.ascii	"exchange returns old"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	4092
camlStress_cae.18:
	.ascii	"cas to same value"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	5116
camlStress_cae.17:
	.ascii	"cas miss left value alone"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	4092
camlStress_cae.16:
	.ascii	"cas miss returns false"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3068
camlStress_cae.15:
	.ascii	"cas hit stored"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	4092
camlStress_cae.14:
	.ascii	"cas hit returns true"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	2816
camlStress_cae.13:
	.quad	camlStress_cae.12
	.quad	camlStress_cae.11
	.data
	.align	8
	.quad	2827
camlStress_cae.12:
	.quad	camlStress_cae.11
	.quad	1
	.data
	.align	8
	.quad	5116
camlStress_cae.11:
	.ascii	"Single-threaded semantics\12"
	.space	5
	.byte	5
	.data
	.align	8
	.quad	2816
camlStress_cae.10:
	.quad	camlStress_cae.8
	.quad	camlStress_cae.9
	.data
	.align	8
	.quad	3068
camlStress_cae.1:
	.ascii	"  PASS: "
	.space	7
	.byte	7
	.text
	.align	16
	.globl	camlStress_cae.entry
camlStress_cae.entry:
	.cfi_startproc
	leaq	-352(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L148
.L149:
	subq	$32, %rsp
	.cfi_adjust_cfa_offset 32
.L147:
	movl	$9, %esi
	movq	camlStress_cae@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movl	$200001, %esi
	movq	camlStress_cae@GOTPCREL(%rip), %rdi
	addq	$8, %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	call	caml_alloc1@PLT
.L150:
	leaq	8(%r15), %rsi
	movq	$1024, -8(%rsi)
	movq	$1, (%rsi)
	movq	camlStress_cae@GOTPCREL(%rip), %rdi
	addq	$16, %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlStress_cae.58@GOTPCREL(%rip), %rsi
	movq	camlStress_cae@GOTPCREL(%rip), %rdi
	addq	$24, %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlStress_cae.13@GOTPCREL(%rip), %rbx
	movq	camlStdlib@GOTPCREL(%rip), %rax
	movq	304(%rax), %rax
	call	camlStdlib__Printf.fprintf_433@PLT
.L151:
	call	caml_alloc1@PLT
.L152:
	leaq	8(%r15), %rbx
	movq	%rbx, (%rsp)
	movq	$1024, -8(%rbx)
	movq	$1, (%rbx)
	movq	caml_num_domains_running@GOTPCREL(%rip), %rdi
	movl	$3, %esi
	movl	$1, %eax
	cmpq	$1, (%rdi)
	jne	.L153
	movq	(%rbx), %rdx
	cmpq	%rdx, %rax
	jne	.L154
	movq	%rsi, (%rbx)
.L154:
	movq	%rdx, %rax
	jmp	.L155
.L153:
	lock cmpxchgq	%rsi, (%rbx)
.L155:
	cmpq	$1, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlStress_cae.14@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L156:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$3, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlStress_cae.15@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L157:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rbx
	movl	$5, %edi
	movl	$1, %eax
	movq	(%rsp), %rdx
	cmpq	$1, (%rbx)
	jne	.L158
	movq	(%rdx), %rsi
	cmpq	%rsi, %rax
	jne	.L159
	movq	%rdi, (%rdx)
.L159:
	movq	%rsi, %rax
	jmp	.L160
.L158:
	lock cmpxchgq	%rdi, (%rdx)
.L160:
	cmpq	$1, %rax
	setne	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlStress_cae.16@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L161:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$3, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlStress_cae.17@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L162:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rbx
	movl	$3, %edi
	movl	$3, %eax
	movq	(%rsp), %rdx
	cmpq	$1, (%rbx)
	jne	.L163
	movq	(%rdx), %rsi
	cmpq	%rsi, %rax
	jne	.L164
	movq	%rdi, (%rdx)
.L164:
	movq	%rsi, %rax
	jmp	.L165
.L163:
	lock cmpxchgq	%rdi, (%rdx)
.L165:
	cmpq	$3, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlStress_cae.18@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L166:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rax
	movl	$19, %ebx
	movq	(%rsp), %rsi
	cmpq	$1, (%rax)
	jne	.L167
	movq	(%rsi), %rdi
	movq	%rbx, (%rsi)
	movq	%rdi, %rbx
	jmp	.L168
.L167:
	xchg	%rbx, (%rsi)
.L168:
	cmpq	$3, %rbx
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlStress_cae.19@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L169:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$19, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlStress_cae.20@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L170:
	call	caml_alloc1@PLT
.L171:
	leaq	8(%r15), %rbx
	movq	%rbx, (%rsp)
	movq	$1024, -8(%rbx)
	movq	$1, (%rbx)
	movq	caml_num_domains_running@GOTPCREL(%rip), %rdi
	movl	$3, %esi
	movl	$1, %eax
	cmpq	$1, (%rdi)
	jne	.L172
	movq	(%rbx), %rdx
	cmpq	%rdx, %rax
	jne	.L173
	movq	%rsi, (%rbx)
.L173:
	movq	%rdx, %rax
	jmp	.L174
.L172:
	lock cmpxchgq	%rsi, (%rbx)
.L174:
	cmpq	$1, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlStress_cae.21@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L175:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rbx
	movl	$3, %edi
	movl	$1, %eax
	movq	(%rsp), %rdx
	cmpq	$1, (%rbx)
	jne	.L176
	movq	(%rdx), %rsi
	cmpq	%rsi, %rax
	jne	.L177
	movq	%rdi, (%rdx)
.L177:
	movq	%rsi, %rax
	jmp	.L178
.L176:
	lock cmpxchgq	%rdi, (%rdx)
.L178:
	cmpq	$1, %rax
	setne	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlStress_cae.22@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L179:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$3, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlStress_cae.23@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L180:
	call	caml_alloc1@PLT
.L181:
	leaq	8(%r15), %rbx
	movq	%rbx, (%rsp)
	movq	$1024, -8(%rbx)
	movq	$-1, (%rbx)
	movq	caml_num_domains_running@GOTPCREL(%rip), %rdi
	movabsq	$-9223372036854775807, %rsi
	movq	$-1, %rax
	cmpq	$1, (%rdi)
	jne	.L182
	movq	(%rbx), %rdx
	cmpq	%rdx, %rax
	jne	.L183
	movq	%rsi, (%rbx)
.L183:
	movq	%rdx, %rax
	jmp	.L184
.L182:
	lock cmpxchgq	%rsi, (%rbx)
.L184:
	cmpq	$-1, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlStress_cae.24@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L185:
	movabsq	$-9223372036854775807, %rax
	movq	(%rsp), %rbx
	movq	(%rbx), %rbx
	cmpq	%rax, %rbx
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlStress_cae.25@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L186:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rbx
	movabsq	$9223372036854775807, %rdi
	movabsq	$-9223372036854775807, %rax
	movq	(%rsp), %rdx
	cmpq	$1, (%rbx)
	jne	.L187
	movq	(%rdx), %rsi
	cmpq	%rsi, %rax
	jne	.L188
	movq	%rdi, (%rdx)
.L188:
	movq	%rsi, %rax
	jmp	.L189
.L187:
	lock cmpxchgq	%rdi, (%rdx)
.L189:
	movabsq	$-9223372036854775807, %rbx
	cmpq	%rbx, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlStress_cae.26@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L190:
	movabsq	$9223372036854775807, %rax
	movq	(%rsp), %rbx
	movq	(%rbx), %rbx
	cmpq	%rax, %rbx
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlStress_cae.27@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L191:
	movq	camlStress_cae.30@GOTPCREL(%rip), %rbx
	movq	camlStdlib@GOTPCREL(%rip), %rax
	movq	304(%rax), %rax
	call	camlStdlib__Printf.fprintf_433@PLT
.L192:
	call	caml_alloc1@PLT
.L193:
	leaq	8(%r15), %rdi
	movq	%rdi, (%rsp)
	movq	$1024, -8(%rdi)
	movq	camlStress_cae.31@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rdi)
	movq	camlStress_cae.32@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_atomic_cas_field@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movl	$4, %ebx
	subq	%rax, %rbx
	movq	camlStress_cae.33@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L194:
	movq	camlStress_cae.32@GOTPCREL(%rip), %rcx
	movq	camlStress_cae.31@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	movq	(%rsp), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_atomic_cas_field@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	%rax, %rbx
	movq	camlStress_cae.34@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L195:
	movq	camlStress_cae.32@GOTPCREL(%rip), %rax
	movq	(%rsp), %rbx
	movq	(%rbx), %rbx
	cmpq	%rax, %rbx
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlStress_cae.35@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L196:
	movl	$1, %edi
	movq	caml_gc_full_major@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L197:
	movq	camlStress_cae.32@GOTPCREL(%rip), %rsi
	movq	(%rsp), %rax
	movq	(%rax), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_string_equal@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	%rax, %rbx
	movq	camlStress_cae.36@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L198:
	movl	$200001, %eax
	movq	%rax, 8(%rsp)
	movl	$9, %eax
	movq	%rax, (%rsp)
	movq	camlStress_cae.46@GOTPCREL(%rip), %rbx
	movq	camlStdlib@GOTPCREL(%rip), %rax
	movq	304(%rax), %rax
	call	camlStdlib__Printf.fprintf_433@PLT
.L199:
	movq	%rax, %rdi
	movq	(%rsp), %rax
	movq	8(%rsp), %rbx
	call	caml_apply2@PLT
.L200:
	subq	$80, %r15
	call	caml_allocN@PLT
.L201:
	leaq	8(%r15), %rax
	addq	$64, %rax
	movq	%rax, 16(%rsp)
	movq	$1024, -8(%rax)
	movq	$1, (%rax)
	leaq	-32(%rax), %rdi
	movq	%rdi, (%rsp)
	movq	$3319, -8(%rdi)
	movq	camlStress_cae.bump_387@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rdi)
	movabsq	$72057594037927941, %rbx
	movq	%rbx, 8(%rdi)
	movq	%rax, 16(%rdi)
	leaq	-32(%rdi), %rbx
	movq	$3319, -8(%rbx)
	movq	camlStress_cae.fun_604@GOTPCREL(%rip), %rax
	movq	%rax, (%rbx)
	movabsq	$72057594037927941, %rax
	movq	%rax, 8(%rbx)
	movq	%rdi, 16(%rbx)
	movl	$7, %eax
	call	camlStdlib__List.init_332@PLT
.L202:
	movq	%rax, 8(%rsp)
	movl	$1, %eax
	movq	(%rsp), %rbx
	call	camlStress_cae.bump_387@PLT
.L203:
	movq	camlStdlib__Domain@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movq	8(%rsp), %rbx
	call	camlStdlib__List.iter_403@PLT
.L204:
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$800001, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlStress_cae.47@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L205:
	movq	camlStress_cae.50@GOTPCREL(%rip), %rbx
	movq	camlStdlib@GOTPCREL(%rip), %rax
	movq	304(%rax), %rax
	call	camlStdlib__Printf.fprintf_433@PLT
.L206:
	call	caml_alloc1@PLT
.L207:
	leaq	8(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	$1024, -8(%rax)
	movq	$1, (%rax)
	movl	$1, %esi
	movl	$800003, %edi
	movq	caml_array_make@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L208:
	movq	%rax, 24(%rsp)
	subq	$64, %r15
	call	caml_allocN@PLT
.L209:
	leaq	8(%r15), %rax
	addq	$32, %rax
	movq	%rax, (%rsp)
	movq	$3319, -8(%rax)
	movq	camlStress_cae.collect_556@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	movabsq	$72057594037927941, %rbx
	movq	%rbx, 8(%rax)
	movq	16(%rsp), %rbx
	movq	%rbx, 16(%rax)
	leaq	-32(%rax), %rbx
	movq	$3319, -8(%rbx)
	movq	camlStress_cae.fun_613@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rbx)
	movabsq	$72057594037927941, %rdi
	movq	%rdi, 8(%rbx)
	movq	%rax, 16(%rbx)
	movl	$7, %eax
	call	camlStdlib__List.init_332@PLT
.L210:
	movq	%rax, 8(%rsp)
	movl	$1, %eax
	movq	(%rsp), %rbx
	call	camlStress_cae.collect_556@PLT
.L211:
	movq	%rax, (%rsp)
	movq	camlStdlib__Domain@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movq	8(%rsp), %rbx
	call	camlStdlib__List.map_340@PLT
.L212:
	call	caml_alloc2@PLT
.L213:
	leaq	8(%r15), %rbx
	movq	$2048, -8(%rbx)
	movq	(%rsp), %rdi
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	movq	%rbx, %rax
	call	camlStdlib__List.flatten_335@PLT
.L214:
	movq	%rax, %rbx
	call	caml_alloc3@PLT
.L215:
	leaq	8(%r15), %rax
	movq	$3319, -8(%rax)
	movq	camlStress_cae.fun_634@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rax)
	movabsq	$72057594037927941, %rdi
	movq	%rdi, 8(%rax)
	movq	24(%rsp), %rdi
	movq	%rdi, 16(%rax)
	call	camlStdlib__List.iter_403@PLT
.L216:
	movq	16(%rsp), %rsi
	movq	(%rsi), %rbx
	movq	24(%rsp), %rax
	movq	-8(%rax), %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L217
	movq	-4(%rax,%rbx,4), %rbx
	addq	$2, %rbx
	movq	(%rsi), %rsi
	cmpq	%rsi, %rdi
	jbe	.L217
	movq	%rbx, -4(%rax,%rsi,4)
	movl	$3, %ebx
	movl	$1, %edi
	cmpq	$800001, %rdi
	jg	.L144
.L145:
	movq	-8(%rax), %rsi
	shrq	$9, %rsi
	cmpq	%rdi, %rsi
	jbe	.L217
	movq	-4(%rax,%rdi,4), %rsi
	cmpq	$3, %rsi
	je	.L146
	movl	$1, %ebx
.L146:
	movq	%rdi, %rsi
	addq	$2, %rdi
	cmpq	$800001, %rsi
	je	.L144
	cmpq	(%r14), %r15
	ja	.L145
	jmp	.L218
.L144:
	movq	camlStress_cae.51@GOTPCREL(%rip), %rax
	call	camlStress_cae.check_277@PLT
.L220:
	movq	camlStress_cae@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	jne	.L143
	movq	camlStress_cae.52@GOTPCREL(%rip), %rax
	call	camlStdlib.print_endline_369@PLT
.L221:
	jmp	.L142
.L143:
	movq	%rax, (%rsp)
	movq	camlStress_cae.57@GOTPCREL(%rip), %rbx
	movq	camlStdlib@GOTPCREL(%rip), %rax
	movq	304(%rax), %rax
	call	camlStdlib__Printf.fprintf_433@PLT
.L222:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	call	*%rdi
.L223:
	movl	$3, %eax
	call	camlStdlib.exit_480@PLT
.L224:
.L142:
	movl	$1, %eax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	ret
	.cfi_adjust_cfa_offset 32
.L218:
	call	caml_call_gc@PLT
.L219:
	jmp	.L145
.L217:
	call	caml_ml_array_bound_error@PLT
.L148:
	push	$37
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L149
	.cfi_adjust_cfa_offset -32
	.cfi_endproc
	.type camlStress_cae.entry,@function
	.size camlStress_cae.entry,. - camlStress_cae.entry
	.data
	.align	8
	.text
	.globl	camlStress_cae.code_end
camlStress_cae.code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlStress_cae.data_end
camlStress_cae.data_end:
	.quad	0
	.align	8
	.globl	camlStress_cae.frametable
camlStress_cae.frametable:
	.quad	58
	.quad	.L224
	.word	41
	.word	0
	.align	4
	.long	(.L225 - .) + 0
	.align	8
	.quad	.L223
	.word	41
	.word	0
	.align	4
	.long	(.L226 - .) + 0
	.align	8
	.quad	.L222
	.word	41
	.word	0
	.align	4
	.long	(.L227 - .) + 0
	.align	8
	.quad	.L221
	.word	41
	.word	0
	.align	4
	.long	(.L228 - .) + 0
	.align	8
	.quad	.L220
	.word	41
	.word	0
	.align	4
	.long	(.L229 - .) + 0
	.align	8
	.quad	.L219
	.word	42
	.word	1
	.word	1
	.byte	0
	.align	8
	.quad	.L216
	.word	41
	.word	2
	.word	16
	.word	24
	.align	4
	.long	(.L230 - .) + 0
	.align	8
	.quad	.L215
	.word	42
	.word	3
	.word	3
	.word	16
	.word	24
	.byte	1
	.byte	2
	.align	8
	.quad	.L214
	.word	41
	.word	2
	.word	16
	.word	24
	.align	4
	.long	(.L231 - .) + 0
	.align	8
	.quad	.L213
	.word	42
	.word	4
	.word	0
	.word	1
	.word	16
	.word	24
	.byte	1
	.byte	1
	.align	8
	.quad	.L212
	.word	41
	.word	3
	.word	0
	.word	16
	.word	24
	.align	4
	.long	(.L232 - .) + 0
	.align	8
	.quad	.L211
	.word	41
	.word	3
	.word	8
	.word	16
	.word	24
	.align	4
	.long	(.L233 - .) + 0
	.align	8
	.quad	.L210
	.word	41
	.word	3
	.word	0
	.word	16
	.word	24
	.align	4
	.long	(.L234 - .) + 0
	.align	8
	.quad	.L209
	.word	42
	.word	2
	.word	16
	.word	24
	.byte	2
	.byte	2
	.byte	2
	.align	8
	.quad	.L208
	.word	41
	.word	1
	.word	16
	.align	4
	.long	(.L235 - .) + 0
	.align	8
	.quad	.L207
	.word	42
	.word	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L206
	.word	41
	.word	0
	.align	4
	.long	(.L227 - .) + 0
	.align	8
	.quad	.L205
	.word	41
	.word	0
	.align	4
	.long	(.L236 - .) + 0
	.align	8
	.quad	.L204
	.word	41
	.word	1
	.word	16
	.align	4
	.long	(.L237 - .) + 0
	.align	8
	.quad	.L203
	.word	41
	.word	2
	.word	8
	.word	16
	.align	4
	.long	(.L238 - .) + 0
	.align	8
	.quad	.L202
	.word	41
	.word	2
	.word	0
	.word	16
	.align	4
	.long	(.L239 - .) + 0
	.align	8
	.quad	.L201
	.word	42
	.word	0
	.byte	3
	.byte	2
	.byte	2
	.byte	0
	.align	8
	.quad	.L200
	.word	41
	.word	0
	.align	4
	.long	(.L240 - .) + 0
	.align	8
	.quad	.L199
	.word	41
	.word	0
	.align	4
	.long	(.L227 - .) + 0
	.align	8
	.quad	.L198
	.word	41
	.word	0
	.align	4
	.long	(.L241 - .) + 0
	.align	8
	.quad	.L197
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L242 - .) + 0
	.align	8
	.quad	.L196
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L243 - .) + 0
	.align	8
	.quad	.L195
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L244 - .) + 0
	.align	8
	.quad	.L194
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L245 - .) + 0
	.align	8
	.quad	.L193
	.word	42
	.word	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L192
	.word	41
	.word	0
	.align	4
	.long	(.L227 - .) + 0
	.align	8
	.quad	.L191
	.word	41
	.word	0
	.align	4
	.long	(.L246 - .) + 0
	.align	8
	.quad	.L190
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L247 - .) + 0
	.align	8
	.quad	.L186
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L248 - .) + 0
	.align	8
	.quad	.L185
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L249 - .) + 0
	.align	8
	.quad	.L181
	.word	42
	.word	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L180
	.word	41
	.word	0
	.align	4
	.long	(.L250 - .) + 0
	.align	8
	.quad	.L179
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L251 - .) + 0
	.align	8
	.quad	.L175
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L252 - .) + 0
	.align	8
	.quad	.L171
	.word	42
	.word	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L170
	.word	41
	.word	0
	.align	4
	.long	(.L253 - .) + 0
	.align	8
	.quad	.L169
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L254 - .) + 0
	.align	8
	.quad	.L166
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L255 - .) + 0
	.align	8
	.quad	.L162
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L256 - .) + 0
	.align	8
	.quad	.L161
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L257 - .) + 0
	.align	8
	.quad	.L157
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L258 - .) + 0
	.align	8
	.quad	.L156
	.word	41
	.word	1
	.word	0
	.align	4
	.long	(.L259 - .) + 0
	.align	8
	.quad	.L152
	.word	42
	.word	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L151
	.word	41
	.word	0
	.align	4
	.long	(.L227 - .) + 0
	.align	8
	.quad	.L150
	.word	42
	.word	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L138
	.word	10
	.word	1
	.word	3
	.byte	1
	.byte	3
	.align	8
	.quad	.L133
	.word	10
	.word	2
	.word	3
	.word	7
	.byte	1
	.byte	1
	.align	8
	.quad	.L122
	.word	10
	.word	1
	.word	3
	.byte	0
	.align	8
	.quad	.L117
	.word	25
	.word	1
	.word	0
	.align	4
	.long	(.L260 - .) + 0
	.align	8
	.quad	.L115
	.word	26
	.word	1
	.word	0
	.byte	1
	.byte	2
	.align	8
	.quad	.L108
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L227 - .) + 0
	.align	8
	.quad	.L107
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L227 - .) + 0
	.align	8
	.quad	.L106
	.word	18
	.word	1
	.word	1
	.byte	0
	.align	8
	.align	4
.L232:
	.long	(.L262 - .) + 0
	.long	45647296
	.align	4
.L227:
	.long	(.L264 - .) + 0
	.long	16270616
	.align	4
.L250:
	.long	(.L262 - .) + 0
	.long	16779600
	.align	4
.L229:
	.long	(.L262 - .) + 0
	.long	50334072
	.align	4
.L243:
	.long	(.L262 - .) + 0
	.long	25168200
	.align	4
.L251:
	.long	(.L262 - .) + 0
	.long	16255512
	.align	4
.L246:
	.long	(.L262 - .) + 0
	.long	19925384
	.align	4
.L245:
	.long	(.L262 - .) + 0
	.long	24119784
	.align	4
.L233:
	.long	(.L262 - .) + 0
	.long	45102256
	.align	4
.L252:
	.long	(.L262 - .) + 0
	.long	15731168
	.align	4
.L259:
	.long	(.L262 - .) + 0
	.long	11536872
	.align	4
.L226:
	.long	(.L262 - .) + 0
	.long	52442528
	.align	4
.L247:
	.long	(.L262 - .) + 0
	.long	19401216
	.align	4
.L238:
	.long	(.L262 - .) + 0
	.long	35129416
	.align	4
.L260:
	.long	(.L265 - .) + 0
	.long	33036376
	.align	4
.L236:
	.long	(.L262 - .) + 0
	.long	36178432
	.align	4
.L255:
	.long	(.L262 - .) + 0
	.long	13634000
	.align	4
.L254:
	.long	(.L262 - .) + 0
	.long	14158272
	.align	4
.L235:
	.long	(.L262 - .) + 0
	.long	39859624
	.align	4
.L228:
	.long	(.L262 - .) + 0
	.long	51929456
	.align	4
.L258:
	.long	(.L262 - .) + 0
	.long	12061016
	.align	4
.L248:
	.long	(.L262 - .) + 0
	.long	18876816
	.align	4
.L230:
	.long	(.L262 - .) + 0
	.long	46139800
	.align	4
.L225:
	.long	(.L262 - .) + 0
	.long	52484576
	.align	4
.L257:
	.long	(.L262 - .) + 0
	.long	12585512
	.align	4
.L242:
	.long	(.L262 - .) + 0
	.long	25692304
	.align	4
.L256:
	.long	(.L262 - .) + 0
	.long	13109680
	.align	4
.L241:
	.long	(.L262 - .) + 0
	.long	26216832
	.align	4
.L239:
	.long	(.L262 - .) + 0
	.long	34614784
	.align	4
.L234:
	.long	(.L262 - .) + 402653184
	.long	44117161
	.align	4
.L231:
	.long	(.L262 - .) + 0
	.long	45625800
	.align	4
.L249:
	.long	(.L262 - .) + 0
	.long	18352624
	.align	4
.L237:
	.long	(.L262 - .) + 0
	.long	35653840
	.align	4
.L244:
	.long	(.L262 - .) + 0
	.long	24644016
	.align	4
.L253:
	.long	(.L262 - .) + 0
	.long	14682464
	.align	4
.L240:
	.long	(.L262 - .) + 0
	.long	28838504
.L263:
	.ascii	"printf.ml\0"
.L261:
	.ascii	"stress_cae.ml\0"
	.align	4
.L262:
	.long	(.L261 - .) + 0
	.ascii	"Stress_cae\0"
	.align	4
.L265:
	.long	(.L261 - .) + 0
	.ascii	"Stress_cae.bump\0"
	.align	4
.L264:
	.long	(.L263 - .) + 0
	.ascii	"Stdlib__Printf.printf\0"
	.align	8
	.type camlStress_cae.frametable,@object
	.size camlStress_cae.frametable,. - camlStress_cae.frametable
	.section .note.GNU-stack,"",%progbits
