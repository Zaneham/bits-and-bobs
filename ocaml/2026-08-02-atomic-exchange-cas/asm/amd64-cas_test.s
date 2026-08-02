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
	.globl	camlCas_test.data_begin
camlCas_test.data_begin:
	.text
	.globl	camlCas_test.code_begin
camlCas_test.code_begin:
	.data
	.align	8
	.data
	.align	8
	.quad	4087
camlCas_test.29:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlCas_test.check_279
	.data
	.align	8
	.quad	1792
	.globl	camlCas_test
camlCas_test:
	.quad	1
	.data
	.align	8
	.globl	camlCas_test.gc_roots
camlCas_test.gc_roots:
	.quad	camlCas_test
	.quad	0
	.text
	.align	16
	.globl	camlCas_test.check_279
camlCas_test.check_279:
	.cfi_startproc
	leaq	-328(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L102
.L103:
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L101:
	cmpq	$1, %rbx
	je	.L100
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.align	4
.L100:
	movq	%rax, (%rsp)
	movq	camlCas_test.6@GOTPCREL(%rip), %rbx
	movq	camlStdlib@GOTPCREL(%rip), %rax
	movq	304(%rax), %rax
	call	camlStdlib__Printf.fprintf_433@PLT
.L104:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	call	*%rdi
.L105:
	movl	$3, %eax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	camlStdlib.exit_480@PLT
	.cfi_adjust_cfa_offset 8
.L102:
	push	$34
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L103
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlCas_test.check_279,@function
	.size camlCas_test.check_279,. - camlCas_test.check_279
	.data
	.align	8
	.quad	3068
camlCas_test.9:
	.ascii	"cas-ok-result"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	3068
camlCas_test.8:
	.ascii	"cas-fail-value"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3068
camlCas_test.7:
	.ascii	"cas-fail-result"
	.byte	0
	.data
	.align	8
	.quad	2816
camlCas_test.6:
	.quad	camlCas_test.4
	.quad	camlCas_test.5
	.data
	.align	8
	.quad	3068
camlCas_test.5:
	.ascii	"FAIL %s\12"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	2827
camlCas_test.4:
	.quad	camlCas_test.1
	.quad	camlCas_test.3
	.data
	.align	8
	.quad	2818
camlCas_test.3:
	.quad	1
	.quad	camlCas_test.2
	.data
	.align	8
	.quad	2044
camlCas_test.28:
	.ascii	"all ok"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3068
camlCas_test.27:
	.ascii	"cas-loop"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	3068
camlCas_test.26:
	.ascii	"cas-branch"
	.space	5
	.byte	5
	.data
	.align	8
	.quad	2044
camlCas_test.25:
	.ascii	"no"
	.space	5
	.byte	5
	.data
	.align	8
	.quad	2044
camlCas_test.24:
	.ascii	"yes"
	.space	4
	.byte	4
	.data
	.align	8
	.quad	3068
camlCas_test.23:
	.ascii	"cas-bool-fail"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	3068
camlCas_test.22:
	.ascii	"cas-bool-value"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3068
camlCas_test.21:
	.ascii	"cas-bool"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	3068
camlCas_test.20:
	.ascii	"exch-new2"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	2828
camlCas_test.2:
	.quad	21
	.quad	1
	.data
	.align	8
	.quad	3068
camlCas_test.19:
	.ascii	"exch-old2"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	3068
camlCas_test.18:
	.ascii	"exch-new"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	3068
camlCas_test.17:
	.ascii	"exch-old"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	3068
camlCas_test.16:
	.ascii	"cas-same-value"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3068
camlCas_test.15:
	.ascii	"cas-same"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	3068
camlCas_test.14:
	.ascii	"cas-zero-value"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3068
camlCas_test.13:
	.ascii	"cas-zero"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	3068
camlCas_test.12:
	.ascii	"cas-neg-value"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	2044
camlCas_test.11:
	.ascii	"cas-neg"
	.byte	0
	.data
	.align	8
	.quad	3068
camlCas_test.10:
	.ascii	"cas-ok-value"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	2044
camlCas_test.1:
	.ascii	"FAIL "
	.space	2
	.byte	2
	.text
	.align	16
	.globl	camlCas_test.entry
camlCas_test.entry:
	.cfi_startproc
	leaq	-328(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L112
.L113:
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L111:
	movq	camlCas_test.29@GOTPCREL(%rip), %rsi
	movq	camlCas_test@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	call	caml_alloc1@PLT
.L114:
	leaq	8(%r15), %rbx
	movq	%rbx, (%rsp)
	movq	$1024, -8(%rbx)
	movq	$21, (%rbx)
	movq	caml_num_domains_running@GOTPCREL(%rip), %rdi
	movl	$85, %esi
	movl	$199, %eax
	cmpq	$1, (%rdi)
	jne	.L115
	movq	(%rbx), %rdx
	cmpq	%rdx, %rax
	jne	.L116
	movq	%rsi, (%rbx)
	jmp	.L116
.L115:
	lock cmpxchgq	%rsi, (%rbx)
.L116:
	sete	%al
	movzbq	%al, %rax
	salq	$1, %rax
	incq	%rax
	cmpq	$1, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlCas_test.7@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L117:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$21, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlCas_test.8@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L118:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rbx
	movl	$85, %edi
	movl	$21, %eax
	movq	(%rsp), %rdx
	cmpq	$1, (%rbx)
	jne	.L119
	movq	(%rdx), %rsi
	cmpq	%rsi, %rax
	jne	.L120
	movq	%rdi, (%rdx)
	jmp	.L120
.L119:
	lock cmpxchgq	%rdi, (%rdx)
.L120:
	sete	%al
	movzbq	%al, %rax
	salq	$1, %rax
	incq	%rax
	cmpq	$3, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlCas_test.9@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L121:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$85, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlCas_test.10@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L122:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rbx
	movq	$-13, %rdi
	movl	$85, %eax
	movq	(%rsp), %rdx
	cmpq	$1, (%rbx)
	jne	.L123
	movq	(%rdx), %rsi
	cmpq	%rsi, %rax
	jne	.L124
	movq	%rdi, (%rdx)
	jmp	.L124
.L123:
	lock cmpxchgq	%rdi, (%rdx)
.L124:
	sete	%al
	movzbq	%al, %rax
	salq	$1, %rax
	incq	%rax
	cmpq	$3, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlCas_test.11@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L125:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$-13, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlCas_test.12@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L126:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	movq	$-13, %rax
	movq	(%rsp), %rdx
	cmpq	$1, (%rbx)
	jne	.L127
	movq	(%rdx), %rsi
	cmpq	%rsi, %rax
	jne	.L128
	movq	%rdi, (%rdx)
	jmp	.L128
.L127:
	lock cmpxchgq	%rdi, (%rdx)
.L128:
	sete	%al
	movzbq	%al, %rax
	salq	$1, %rax
	incq	%rax
	cmpq	$3, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlCas_test.13@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L129:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlCas_test.14@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L130:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	movl	$1, %eax
	movq	(%rsp), %rdx
	cmpq	$1, (%rbx)
	jne	.L131
	movq	(%rdx), %rsi
	cmpq	%rsi, %rax
	jne	.L132
	movq	%rdi, (%rdx)
	jmp	.L132
.L131:
	lock cmpxchgq	%rdi, (%rdx)
.L132:
	sete	%al
	movzbq	%al, %rax
	salq	$1, %rax
	incq	%rax
	cmpq	$3, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlCas_test.15@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L133:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlCas_test.16@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L134:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rax
	movl	$11, %ebx
	movq	(%rsp), %rsi
	cmpq	$1, (%rax)
	jne	.L135
	movq	(%rsi), %rdi
	movq	%rbx, (%rsi)
	movq	%rdi, %rbx
	jmp	.L136
.L135:
	xchg	%rbx, (%rsi)
.L136:
	cmpq	$1, %rbx
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlCas_test.17@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L137:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$11, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlCas_test.18@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L138:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rax
	movq	$-1, %rbx
	movq	(%rsp), %rsi
	cmpq	$1, (%rax)
	jne	.L139
	movq	(%rsi), %rdi
	movq	%rbx, (%rsi)
	movq	%rdi, %rbx
	jmp	.L140
.L139:
	xchg	%rbx, (%rsi)
.L140:
	cmpq	$11, %rbx
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlCas_test.19@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L141:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlCas_test.20@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L142:
	call	caml_alloc1@PLT
.L143:
	leaq	8(%r15), %rbx
	movq	%rbx, (%rsp)
	movq	$1024, -8(%rbx)
	movq	$3, (%rbx)
	movq	caml_num_domains_running@GOTPCREL(%rip), %rdi
	movl	$1, %esi
	movl	$3, %eax
	cmpq	$1, (%rdi)
	jne	.L144
	movq	(%rbx), %rdx
	cmpq	%rdx, %rax
	jne	.L145
	movq	%rsi, (%rbx)
	jmp	.L145
.L144:
	lock cmpxchgq	%rsi, (%rbx)
.L145:
	sete	%al
	movzbq	%al, %rax
	salq	$1, %rax
	incq	%rax
	cmpq	$3, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlCas_test.21@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L146:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax,%rax), %rbx
	movq	camlCas_test.22@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L147:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	movl	$3, %eax
	movq	(%rsp), %rdx
	cmpq	$1, (%rbx)
	jne	.L148
	movq	(%rdx), %rsi
	cmpq	%rsi, %rax
	jne	.L149
	movq	%rdi, (%rdx)
	jmp	.L149
.L148:
	lock cmpxchgq	%rdi, (%rdx)
.L149:
	sete	%al
	movzbq	%al, %rax
	salq	$1, %rax
	incq	%rax
	cmpq	$1, %rax
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlCas_test.23@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L150:
	call	caml_alloc1@PLT
.L151:
	leaq	8(%r15), %rbx
	movq	%rbx, (%rsp)
	movq	$1024, -8(%rbx)
	movq	$3, (%rbx)
	movq	caml_num_domains_running@GOTPCREL(%rip), %rdi
	movl	$5, %esi
	movl	$3, %eax
	cmpq	$1, (%rdi)
	jne	.L152
	movq	(%rbx), %rdx
	cmpq	%rdx, %rax
	jne	.L153
	movq	%rsi, (%rbx)
	jmp	.L153
.L152:
	lock cmpxchgq	%rsi, (%rbx)
.L153:
	sete	%al
	movzbq	%al, %rax
	testq	%rax, %rax
	je	.L110
	movq	camlCas_test.24@GOTPCREL(%rip), %rdi
	jmp	.L109
.L110:
	movq	camlCas_test.25@GOTPCREL(%rip), %rdi
.L109:
	movq	camlCas_test.24@GOTPCREL(%rip), %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_string_equal@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	%rax, %rbx
	movq	camlCas_test.26@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L154:
	movl	$1, %edi
	movl	$3, %ebx
	cmpq	$2001, %rbx
	jg	.L106
.L107:
	movq	caml_num_domains_running@GOTPCREL(%rip), %rsi
	movl	$5, %edx
	movl	$5, %eax
	movq	(%rsp), %r8
	cmpq	$1, (%rsi)
	jne	.L155
	movq	(%r8), %rcx
	cmpq	%rcx, %rax
	jne	.L156
	movq	%rdx, (%r8)
	jmp	.L156
.L155:
	lock cmpxchgq	%rdx, (%r8)
.L156:
	sete	%al
	movzbq	%al, %rax
	testq	%rax, %rax
	je	.L108
	addq	$2, %rdi
.L108:
	movq	%rbx, %rax
	addq	$2, %rbx
	cmpq	$2001, %rax
	je	.L106
	cmpq	(%r14), %r15
	ja	.L107
	jmp	.L157
.L106:
	cmpq	$2001, %rdi
	sete	%al
	movzbq	%al, %rbx
	salq	$1, %rbx
	incq	%rbx
	movq	camlCas_test.27@GOTPCREL(%rip), %rax
	call	camlCas_test.check_279@PLT
.L159:
	movq	camlCas_test.28@GOTPCREL(%rip), %rax
	call	camlStdlib.print_endline_369@PLT
.L160:
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
.L157:
	call	caml_call_gc@PLT
.L158:
	jmp	.L107
.L112:
	push	$34
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L113
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlCas_test.entry,@function
	.size camlCas_test.entry,. - camlCas_test.entry
	.data
	.align	8
	.text
	.globl	camlCas_test.code_end
camlCas_test.code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlCas_test.data_end
camlCas_test.data_end:
	.quad	0
	.align	8
	.globl	camlCas_test.frametable
camlCas_test.frametable:
	.quad	26
	.quad	.L160
	.word	17
	.word	0
	.align	4
	.long	(.L161 - .) + 0
	.align	8
	.quad	.L159
	.word	17
	.word	0
	.align	4
	.long	(.L162 - .) + 0
	.align	8
	.quad	.L158
	.word	18
	.word	1
	.word	0
	.byte	0
	.align	8
	.quad	.L154
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L163 - .) + 0
	.align	8
	.quad	.L151
	.word	18
	.word	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L150
	.word	17
	.word	0
	.align	4
	.long	(.L164 - .) + 0
	.align	8
	.quad	.L147
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L165 - .) + 0
	.align	8
	.quad	.L146
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L166 - .) + 0
	.align	8
	.quad	.L143
	.word	18
	.word	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L142
	.word	17
	.word	0
	.align	4
	.long	(.L167 - .) + 0
	.align	8
	.quad	.L141
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L168 - .) + 0
	.align	8
	.quad	.L138
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L169 - .) + 0
	.align	8
	.quad	.L137
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L170 - .) + 0
	.align	8
	.quad	.L134
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L171 - .) + 0
	.align	8
	.quad	.L133
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L172 - .) + 0
	.align	8
	.quad	.L130
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L173 - .) + 0
	.align	8
	.quad	.L129
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L174 - .) + 0
	.align	8
	.quad	.L126
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L175 - .) + 0
	.align	8
	.quad	.L125
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L176 - .) + 0
	.align	8
	.quad	.L122
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L177 - .) + 0
	.align	8
	.quad	.L121
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L178 - .) + 0
	.align	8
	.quad	.L118
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L179 - .) + 0
	.align	8
	.quad	.L117
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L180 - .) + 0
	.align	8
	.quad	.L114
	.word	18
	.word	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L105
	.word	17
	.word	0
	.align	4
	.long	(.L181 - .) + 0
	.align	8
	.quad	.L104
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L182 - .) + 0
	.align	8
	.align	4
.L182:
	.long	(.L184 - .) + 0
	.long	16270616
	.align	4
.L175:
	.long	(.L186 - .) + 0
	.long	10488120
	.align	4
.L168:
	.long	(.L186 - .) + 0
	.long	15206720
	.align	4
.L179:
	.long	(.L186 - .) + 0
	.long	7342400
	.align	4
.L178:
	.long	(.L186 - .) + 0
	.long	8391032
	.align	4
.L169:
	.long	(.L186 - .) + 0
	.long	14682376
	.align	4
.L180:
	.long	(.L186 - .) + 0
	.long	6818192
	.align	4
.L172:
	.long	(.L186 - .) + 0
	.long	12585280
	.align	4
.L176:
	.long	(.L186 - .) + 0
	.long	9963864
	.align	4
.L167:
	.long	(.L186 - .) + 0
	.long	15730968
	.align	4
.L162:
	.long	(.L186 - .) + 0
	.long	23070960
	.align	4
.L161:
	.long	(.L186 - .) + 0
	.long	23595200
	.align	4
.L174:
	.long	(.L186 - .) + 0
	.long	11012440
	.align	4
.L173:
	.long	(.L186 - .) + 0
	.long	11536696
	.align	4
.L165:
	.long	(.L186 - .) + 0
	.long	17828184
	.align	4
.L177:
	.long	(.L186 - .) + 0
	.long	8915248
	.align	4
.L171:
	.long	(.L186 - .) + 0
	.long	13109560
	.align	4
.L181:
	.long	(.L187 - .) + 0
	.long	4229632
	.align	4
.L166:
	.long	(.L186 - .) + 0
	.long	17303928
	.align	4
.L170:
	.long	(.L186 - .) + 0
	.long	14158112
	.align	4
.L164:
	.long	(.L186 - .) + 0
	.long	18352552
	.align	4
.L163:
	.long	(.L186 - .) + 0
	.long	20449568
.L185:
	.ascii	"cas_test.ml\0"
.L183:
	.ascii	"printf.ml\0"
	.align	4
.L187:
	.long	(.L185 - .) + 0
	.ascii	"Cas_test.check\0"
	.align	4
.L184:
	.long	(.L183 - .) + 0
	.ascii	"Stdlib__Printf.printf\0"
	.align	4
.L186:
	.long	(.L185 - .) + 0
	.ascii	"Cas_test\0"
	.align	8
	.type camlCas_test.frametable,@object
	.size camlCas_test.frametable,. - camlCas_test.frametable
	.section .note.GNU-stack,"",%progbits
