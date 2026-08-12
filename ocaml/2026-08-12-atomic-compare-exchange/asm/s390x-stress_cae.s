	.file	""
	.section ".data"
	.align	8
	.globl	camlStress_cae.data_begin
	.type	camlStress_cae.data_begin, @object
camlStress_cae.data_begin:
	.text
	.globl	camlStress_cae.code_begin
	.type	camlStress_cae.code_begin, @object
camlStress_cae.code_begin:
	.section ".data"
	.align	8
	.section ".data"
	.align	8
	.quad	4087
camlStress_cae.58:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlStress_cae.check_277
	.section ".data"
	.align	8
	.quad	4864
	.globl	camlStress_cae
	.type	camlStress_cae, @object
camlStress_cae:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.section ".data"
	.align	8
	.globl	camlStress_cae.gc_roots
	.type	camlStress_cae.gc_roots, @object
camlStress_cae.gc_roots:
	.quad	camlStress_cae
	.quad	0
	.globl	camlStress_cae.check_277
	.type	camlStress_cae.check_277, @function
	.text
	.align	8
camlStress_cae.check_277:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	lay	%r1, -328(%r15)
	clg	%r1, 40(%r10)
	brcl	4, .L102
.L103:
	lay	%r15, -16(%r15)
	.cfi_def_cfa_offset	16
	.cfi_escape 0x14, 15, 0
	stg	%r14, 8(%r15)
	.cfi_offset 14, -8
.L101:
	clg	%r11, 0(%r10)
	brcl	4, .L104
.L105:	cgfi	%r3, 1
	brcl	8, .L100
	stg	%r2, 0(%r15)
	lgrl	%r3, camlStress_cae.6@GOT
	lgrl	%r7, camlStdlib@GOT
	lg	%r2, 304(%r7)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L107:
	lgr	%r3, %r2
	lg	%r12, 0(%r3)
	lg	%r2, 0(%r15)
	lg	%r14, 8(%r15)
	la	%r15, 16(%r15)
	br	%r12
.L100:
	lgrl	%r4, camlStress_cae@GOT
	lg	%r5, 16(%r4)
	lg	%r6, 0(%r5)
	la	%r7, 2(%r6)
	stg	%r7, 0(%r5)
	stg	%r2, 0(%r15)
	lgrl	%r3, camlStress_cae.10@GOT
	lgrl	%r12, camlStdlib@GOT
	lg	%r2, 304(%r12)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L108:
	lgr	%r3, %r2
	lg	%r4, 0(%r3)
	lg	%r2, 0(%r15)
	lg	%r14, 8(%r15)
	la	%r15, 16(%r15)
	br	%r4
.L104:	lgrl	%r1, caml_call_gc@GOT
	basr	%r14, %r1
.L106:	brcl	15, .L105
.L102:
	lay	%r15, -8(%r15)
	.cfi_def_cfa_offset	8
	.cfi_escape 0x14, 15, 0
	stg	%r14, 0(%r15)
	.cfi_offset 14, -8
	lgfi	%r12, 34
	lgrl	%r1, caml_call_realloc_stack@GOT
	basr	%r14, %r1
	lg	%r14, 0(%r15)
	la	%r15, 8(%r15)
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	brcl	15, .L103
	.cfi_endproc
	.size	camlStress_cae.check_277, . - camlStress_cae.check_277
	.globl	camlStress_cae.bump_387
	.type	camlStress_cae.bump_387, @function
	.text
	.align	8
camlStress_cae.bump_387:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	lay	%r1, -336(%r15)
	clg	%r1, 40(%r10)
	brcl	4, .L112
.L113:
	lay	%r15, -24(%r15)
	.cfi_def_cfa_offset	24
	.cfi_escape 0x14, 15, 0
	stg	%r14, 16(%r15)
	.cfi_offset 14, -8
.L111:
	lghi	%r4, 3
	cgfi	%r4, 200001
	brcl	2, .L109
	stg	%r4, 8(%r15)
	stg	%r3, 0(%r15)
.L110:
	lay	%r11, -32(%r11)
	clg	%r11, 0(%r10)
	brcl	4, .L116
.L115:	la	%r3, 8(%r11)
	lghi	%r7, 3319
	stg	%r7, -8(%r3)
	lgrl	%r8, camlStress_cae.go_390@GOT
	stg	%r8, 0(%r3)
	lgrl	%r9, .L117
	stg	%r9, 8(%r3)
	lg	%r7, 0(%r15)
	lg	%r12, 16(%r7)
	stg	%r12, 16(%r3)
	lghi	%r2, 1
	brasl	%r14, camlStress_cae.go_390@PLT
.L118:
	lg	%r4, 8(%r15)
	lgr	%r3, %r4
	la	%r4, 2(%r4)
	stg	%r4, 8(%r15)
	cgfi	%r3, 200001
	brcl	7, .L110
.L109:
	lghi	%r2, 1
	lg	%r14, 16(%r15)
	la	%r15, 24(%r15)
	br	%r14
.L116:	lgrl	%r1, caml_call_gc@GOT
	basr	%r14, %r1
.L114:	brcl	15, .L115
.L112:
	lay	%r15, -8(%r15)
	.cfi_def_cfa_offset	8
	.cfi_escape 0x14, 15, 0
	stg	%r14, 0(%r15)
	.cfi_offset 14, -8
	lgfi	%r12, 35
	lgrl	%r1, caml_call_realloc_stack@GOT
	basr	%r14, %r1
	lg	%r14, 0(%r15)
	la	%r15, 8(%r15)
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	brcl	15, .L113
	.cfi_endproc
	.size	camlStress_cae.bump_387, . - camlStress_cae.bump_387
	.section ".rodata"
	.align	8
.L117:	.quad	72057594037927941
	.globl	camlStress_cae.go_390
	.type	camlStress_cae.go_390, @function
	.text
	.align	8
camlStress_cae.go_390:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	lay	%r15, -8(%r15)
	.cfi_def_cfa_offset	8
	.cfi_escape 0x14, 15, 0
	stg	%r14, 0(%r15)
	.cfi_offset 14, -8
.L120:
	clg	%r11, 0(%r10)
	brcl	4, .L121
.L122:	lg	%r4, 16(%r3)
	lg	%r5, 0(%r4)
	la	%r6, 2(%r5)
	lgr	%r8, %r5
	csg	%r8, %r6, 0(%r4)
	cgr	%r8, %r5
	brcl	7, .L119
	lghi	%r2, 1
	lg	%r14, 0(%r15)
	la	%r15, 8(%r15)
	br	%r14
.L119:
	lghi	%r2, 1
	brcl	15, .L120
.L121:	lgrl	%r1, caml_call_gc@GOT
	basr	%r14, %r1
.L123:	brcl	15, .L122
	.cfi_endproc
	.size	camlStress_cae.go_390, . - camlStress_cae.go_390
	.globl	camlStress_cae.fun_604
	.type	camlStress_cae.fun_604, @function
	.text
	.align	8
camlStress_cae.fun_604:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
.L124:
	lg	%r2, 16(%r3)
	lgrl	%r5, camlStdlib__Domain@GOT
	lg	%r3, 0(%r5)
	brcl	15, camlStdlib__Domain.spawn_790@PLT
	.cfi_endproc
	.size	camlStress_cae.fun_604, . - camlStress_cae.fun_604
	.globl	camlStress_cae.collect_556
	.type	camlStress_cae.collect_556, @function
	.text
	.align	8
camlStress_cae.collect_556:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	lay	%r15, -8(%r15)
	.cfi_def_cfa_offset	8
	.cfi_escape 0x14, 15, 0
	stg	%r14, 0(%r15)
	.cfi_offset 14, -8
.L127:
	lgr	%r6, %r2
	lghi	%r2, 1
	lghi	%r4, 3
	cgfi	%r4, 200001
	brcl	2, .L125
.L126:
	lgr	%r5, %r2
	lgr	%r12, %r6
	msgfi	%r12, 100000
	agr	%r12, %r4
	lay	%r7, -100000(%r12)
	lg	%r8, 16(%r3)
	lg	%r9, 0(%r8)
.L128:
	csg	%r9, %r7, 0(%r8)
	brc	4, .L128
	lay	%r11, -24(%r11)
	clg	%r11, 0(%r10)
	brcl	4, .L131
.L130:	la	%r2, 8(%r11)
	lghi	%r7, 2048
	stg	%r7, -8(%r2)
	stg	%r9, 0(%r2)
	stg	%r5, 8(%r2)
	lgr	%r8, %r4
	la	%r4, 2(%r4)
	cgfi	%r8, 200001
	brcl	7, .L126
.L125:
	lg	%r14, 0(%r15)
	la	%r15, 8(%r15)
	br	%r14
.L131:	lgrl	%r1, caml_call_gc@GOT
	basr	%r14, %r1
.L129:	brcl	15, .L130
	.cfi_endproc
	.size	camlStress_cae.collect_556, . - camlStress_cae.collect_556
	.globl	camlStress_cae.fun_625
	.type	camlStress_cae.fun_625, @function
	.text
	.align	8
camlStress_cae.fun_625:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
.L132:
	lg	%r4, 24(%r3)
	la	%r2, 2(%r4)
	lg	%r3, 16(%r3)
	brcl	15, camlStress_cae.collect_556@PLT
	.cfi_endproc
	.size	camlStress_cae.fun_625, . - camlStress_cae.fun_625
	.globl	camlStress_cae.fun_613
	.type	camlStress_cae.fun_613, @function
	.text
	.align	8
camlStress_cae.fun_613:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	lay	%r15, -8(%r15)
	.cfi_def_cfa_offset	8
	.cfi_escape 0x14, 15, 0
	stg	%r14, 0(%r15)
	.cfi_offset 14, -8
.L133:
	lay	%r11, -40(%r11)
	clg	%r11, 0(%r10)
	brcl	4, .L136
.L135:	la	%r4, 8(%r11)
	lghi	%r5, 4343
	stg	%r5, -8(%r4)
	lgrl	%r6, camlStress_cae.fun_625@GOT
	stg	%r6, 0(%r4)
	lgrl	%r7, .L137
	stg	%r7, 8(%r4)
	lg	%r8, 16(%r3)
	stg	%r8, 16(%r4)
	stg	%r2, 24(%r4)
	lgrl	%r9, camlStdlib__Domain@GOT
	lg	%r3, 0(%r9)
	lgr	%r2, %r4
	lg	%r14, 0(%r15)
	la	%r15, 8(%r15)
	brcl	15, camlStdlib__Domain.spawn_790@PLT
.L136:	lgrl	%r1, caml_call_gc@GOT
	basr	%r14, %r1
.L134:	brcl	15, .L135
	.cfi_endproc
	.size	camlStress_cae.fun_613, . - camlStress_cae.fun_613
	.section ".rodata"
	.align	8
.L137:	.quad	72057594037927941
	.globl	camlStress_cae.fun_634
	.type	camlStress_cae.fun_634, @function
	.text
	.align	8
camlStress_cae.fun_634:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
.L138:
	lg	%r4, 16(%r3)
	lg	%r5, -8(%r4)
	srlg	%r6, %r5,9(%r0)
	clgr	%r6, %r2
	brcl	12, .L139
	sllg	%r7, %r2,2(%r0)
	lg	%r8, -4(%r4,%r7)
	la	%r9, 2(%r8)
	stg	%r9, -4(%r4,%r7)
	lghi	%r2, 1
	br	%r14
.L139:	lgrl	%r1, caml_ml_array_bound_error@GOT
	basr	%r14, %r1
	.cfi_endproc
	.size	camlStress_cae.fun_634, . - camlStress_cae.fun_634
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.9:
	.byte	32,32,70,65,73,76,58,32,37,115,10
	.space	4
	.byte	4
	.section ".data"
	.align	8
	.quad	2827
camlStress_cae.8:
	.quad	camlStress_cae.7
	.quad	camlStress_cae.3
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.7:
	.byte	32,32,70,65,73,76,58,32
	.space	7
	.byte	7
	.section ".data"
	.align	8
	.quad	2816
camlStress_cae.6:
	.quad	camlStress_cae.4
	.quad	camlStress_cae.5
	.section ".data"
	.align	8
	.quad	2816
camlStress_cae.57:
	.quad	camlStress_cae.55
	.quad	camlStress_cae.56
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.56:
	.byte	37,100,32,70,65,73,76,85,82,69,83,10
	.space	3
	.byte	3
	.section ".data"
	.align	8
	.quad	4868
camlStress_cae.55:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.54
	.section ".data"
	.align	8
	.quad	2827
camlStress_cae.54:
	.quad	camlStress_cae.53
	.quad	1
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.53:
	.byte	32,70,65,73,76,85,82,69,83,10
	.space	5
	.byte	5
	.section ".data"
	.align	8
	.quad	2044
camlStress_cae.52:
	.byte	65,76,76,32,79,75
	.space	1
	.byte	1
	.section ".data"
	.align	8
	.quad	6140
camlStress_cae.51:
	.byte	101,118,101,114,121,32,118,97,108,117,101,32,111,98,115,101
	.byte	114,118,101,100,32,101,120,97,99,116,108,121,32,111,110,99
	.byte	101
	.space	6
	.byte	6
	.section ".data"
	.align	8
	.quad	2816
camlStress_cae.50:
	.quad	camlStress_cae.49
	.quad	camlStress_cae.48
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.5:
	.byte	32,32,80,65,83,83,58,32,37,115,10
	.space	4
	.byte	4
	.section ".data"
	.align	8
	.quad	2827
camlStress_cae.49:
	.quad	camlStress_cae.48
	.quad	1
	.section ".data"
	.align	8
	.quad	4092
camlStress_cae.48:
	.byte	67,111,110,116,101,110,100,101,100,32,101,120,99,104,97,110
	.byte	103,101,10
	.space	4
	.byte	4
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.47:
	.byte	110,111,32,108,111,115,116,32,117,112,100,97,116,101,115
	.byte	0
	.section ".data"
	.align	8
	.quad	2816
camlStress_cae.46:
	.quad	camlStress_cae.44
	.quad	camlStress_cae.45
	.section ".data"
	.align	8
	.quad	6140
camlStress_cae.45:
	.byte	67,111,110,116,101,110,100,101,100,32,105,110,99,114,101,109
	.byte	101,110,116,32,40,37,100,32,100,111,109,97,105,110,115,32
	.byte	120,32,37,100,41,10
	.space	1
	.byte	1
	.section ".data"
	.align	8
	.quad	2827
camlStress_cae.44:
	.quad	camlStress_cae.37
	.quad	camlStress_cae.43
	.section ".data"
	.align	8
	.quad	4868
camlStress_cae.43:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.42
	.section ".data"
	.align	8
	.quad	2827
camlStress_cae.42:
	.quad	camlStress_cae.38
	.quad	camlStress_cae.41
	.section ".data"
	.align	8
	.quad	4868
camlStress_cae.41:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.40
	.section ".data"
	.align	8
	.quad	2827
camlStress_cae.40:
	.quad	camlStress_cae.39
	.quad	1
	.section ".data"
	.align	8
	.quad	2827
camlStress_cae.4:
	.quad	camlStress_cae.1
	.quad	camlStress_cae.3
	.section ".data"
	.align	8
	.quad	2044
camlStress_cae.39:
	.byte	41,10
	.space	5
	.byte	5
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.38:
	.byte	32,100,111,109,97,105,110,115,32,120,32
	.space	4
	.byte	4
	.section ".data"
	.align	8
	.quad	4092
camlStress_cae.37:
	.byte	67,111,110,116,101,110,100,101,100,32,105,110,99,114,101,109
	.byte	101,110,116,32,40
	.space	2
	.byte	2
	.section ".data"
	.align	8
	.quad	4092
camlStress_cae.36:
	.byte	98,111,120,101,100,32,115,117,114,118,105,118,101,115,32,103
	.byte	99
	.space	6
	.byte	6
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.35:
	.byte	98,111,120,101,100,32,118,97,108,117,101
	.space	4
	.byte	4
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.34:
	.byte	98,111,120,101,100,32,99,97,115,32,104,105,116
	.space	2
	.byte	2
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.33:
	.byte	98,111,120,101,100,32,99,97,115,32,109,105,115,115
	.space	1
	.byte	1
	.section ".data"
	.align	8
	.quad	2044
camlStress_cae.32:
	.byte	98
	.space	6
	.byte	6
	.section ".data"
	.align	8
	.quad	2044
camlStress_cae.31:
	.byte	97
	.space	6
	.byte	6
	.section ".data"
	.align	8
	.quad	2816
camlStress_cae.30:
	.quad	camlStress_cae.29
	.quad	camlStress_cae.28
	.section ".data"
	.align	8
	.quad	2818
camlStress_cae.3:
	.quad	1
	.quad	camlStress_cae.2
	.section ".data"
	.align	8
	.quad	2827
camlStress_cae.29:
	.quad	camlStress_cae.28
	.quad	1
	.section ".data"
	.align	8
	.quad	5116
camlStress_cae.28:
	.byte	66,111,120,101,100,32,40,98,97,114,114,105,101,114,32,114
	.byte	101,116,97,105,110,101,100,41,10
	.space	6
	.byte	6
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.27:
	.byte	109,97,120,95,105,110,116,32,115,116,111,114,101,100
	.space	1
	.byte	1
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.26:
	.byte	109,97,120,95,105,110,116,32,99,97,115
	.space	4
	.byte	4
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.25:
	.byte	110,101,103,97,116,105,118,101,32,115,116,111,114,101,100
	.byte	0
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.24:
	.byte	110,101,103,97,116,105,118,101,32,99,97,115
	.space	3
	.byte	3
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.23:
	.byte	98,111,111,108,32,118,97,108,117,101
	.space	5
	.byte	5
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.22:
	.byte	98,111,111,108,32,99,97,115,32,109,105,115,115
	.space	2
	.byte	2
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.21:
	.byte	98,111,111,108,32,99,97,115,32,104,105,116
	.space	3
	.byte	3
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.20:
	.byte	101,120,99,104,97,110,103,101,32,115,116,111,114,101,100
	.byte	0
	.section ".data"
	.align	8
	.quad	2828
camlStress_cae.2:
	.quad	21
	.quad	1
	.section ".data"
	.align	8
	.quad	4092
camlStress_cae.19:
	.byte	101,120,99,104,97,110,103,101,32,114,101,116,117,114,110,115
	.byte	32,111,108,100
	.space	3
	.byte	3
	.section ".data"
	.align	8
	.quad	4092
camlStress_cae.18:
	.byte	99,97,115,32,116,111,32,115,97,109,101,32,118,97,108,117
	.byte	101
	.space	6
	.byte	6
	.section ".data"
	.align	8
	.quad	5116
camlStress_cae.17:
	.byte	99,97,115,32,109,105,115,115,32,108,101,102,116,32,118,97
	.byte	108,117,101,32,97,108,111,110,101
	.space	6
	.byte	6
	.section ".data"
	.align	8
	.quad	4092
camlStress_cae.16:
	.byte	99,97,115,32,109,105,115,115,32,114,101,116,117,114,110,115
	.byte	32,102,97,108,115,101
	.space	1
	.byte	1
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.15:
	.byte	99,97,115,32,104,105,116,32,115,116,111,114,101,100
	.space	1
	.byte	1
	.section ".data"
	.align	8
	.quad	4092
camlStress_cae.14:
	.byte	99,97,115,32,104,105,116,32,114,101,116,117,114,110,115,32
	.byte	116,114,117,101
	.space	3
	.byte	3
	.section ".data"
	.align	8
	.quad	2816
camlStress_cae.13:
	.quad	camlStress_cae.12
	.quad	camlStress_cae.11
	.section ".data"
	.align	8
	.quad	2827
camlStress_cae.12:
	.quad	camlStress_cae.11
	.quad	1
	.section ".data"
	.align	8
	.quad	5116
camlStress_cae.11:
	.byte	83,105,110,103,108,101,45,116,104,114,101,97,100,101,100,32
	.byte	115,101,109,97,110,116,105,99,115,10
	.space	5
	.byte	5
	.section ".data"
	.align	8
	.quad	2816
camlStress_cae.10:
	.quad	camlStress_cae.8
	.quad	camlStress_cae.9
	.section ".data"
	.align	8
	.quad	3068
camlStress_cae.1:
	.byte	32,32,80,65,83,83,58,32
	.space	7
	.byte	7
	.globl	camlStress_cae.entry
	.type	camlStress_cae.entry, @function
	.text
	.align	8
camlStress_cae.entry:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	lay	%r1, -352(%r15)
	clg	%r1, 40(%r10)
	brcl	4, .L146
.L147:
	lay	%r15, -40(%r15)
	.cfi_def_cfa_offset	40
	.cfi_escape 0x14, 15, 0
	stg	%r14, 32(%r15)
	.cfi_offset 14, -8
.L145:
	lghi	%r3, 9
	lgrl	%r2, camlStress_cae@GOT
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_initialize@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	lgfi	%r3, 200001
	lgrl	%r7, camlStress_cae@GOT
	la	%r2, 8(%r7)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_initialize@PLT
	lgr	%r15, %r12
	.cfi_restore_state
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L148:
	la	%r3, 8(%r11)
	lghi	%r12, 1024
	stg	%r12, -8(%r3)
	lghi	%r2, 1
	stg	%r2, 0(%r3)
	lgrl	%r4, camlStress_cae@GOT
	la	%r2, 16(%r4)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_initialize@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	lgrl	%r3, camlStress_cae.58@GOT
	lgrl	%r6, camlStress_cae@GOT
	la	%r2, 24(%r6)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_initialize@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	lgrl	%r3, camlStress_cae.13@GOT
	lgrl	%r9, camlStdlib@GOT
	lg	%r2, 304(%r9)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L149:
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L150:
	la	%r2, 8(%r11)
	stg	%r2, 0(%r15)
	lghi	%r3, 1024
	stg	%r3, -8(%r2)
	lghi	%r4, 1
	stg	%r4, 0(%r2)
	lghi	%r5, 3
	lghi	%r6, 1
	lgr	%r7, %r6
	csg	%r7, %r5, 0(%r2)
	cgfi	%r7, 1
	lghi	%r8, 1
	brc	8, .L151
	lghi	%r8, 0
.L151:
	sllg	%r9, %r8,1(%r0)
	la	%r3, 1(%r9)
	lgrl	%r2, camlStress_cae.14@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L152:
	lg	%r5, 0(%r15)
	lg	%r3, 0(%r5)
	cgfi	%r3, 3
	lghi	%r4, 1
	brc	8, .L153
	lghi	%r4, 0
.L153:
	sllg	%r5, %r4,1(%r0)
	la	%r3, 1(%r5)
	lgrl	%r2, camlStress_cae.15@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L154:
	lghi	%r8, 5
	lghi	%r9, 1
	lg	%r6, 0(%r15)
	lgr	%r12, %r9
	csg	%r12, %r8, 0(%r6)
	cgfi	%r12, 1
	lghi	%r2, 1
	brc	7, .L155
	lghi	%r2, 0
.L155:
	sllg	%r3, %r2,1(%r0)
	la	%r3, 1(%r3)
	lgrl	%r2, camlStress_cae.16@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L156:
	lg	%r7, 0(%r15)
	lg	%r6, 0(%r7)
	cgfi	%r6, 3
	lghi	%r7, 1
	brc	8, .L157
	lghi	%r7, 0
.L157:
	sllg	%r8, %r7,1(%r0)
	la	%r3, 1(%r8)
	lgrl	%r2, camlStress_cae.17@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L158:
	lghi	%r2, 3
	lghi	%r3, 3
	lg	%r8, 0(%r15)
	lgr	%r4, %r3
	csg	%r4, %r2, 0(%r8)
	cgfi	%r4, 3
	lghi	%r5, 1
	brc	8, .L159
	lghi	%r5, 0
.L159:
	sllg	%r6, %r5,1(%r0)
	la	%r3, 1(%r6)
	lgrl	%r2, camlStress_cae.18@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L160:
	lghi	%r9, 19
	lg	%r2, 0(%r15)
	lg	%r12, 0(%r2)
.L161:
	csg	%r12, %r9, 0(%r2)
	brc	4, .L161
	cgfi	%r12, 3
	lghi	%r2, 1
	brc	8, .L162
	lghi	%r2, 0
.L162:
	sllg	%r3, %r2,1(%r0)
	la	%r3, 1(%r3)
	lgrl	%r2, camlStress_cae.19@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L163:
	lg	%r12, 0(%r15)
	lg	%r6, 0(%r12)
	cgfi	%r6, 19
	lghi	%r7, 1
	brc	8, .L164
	lghi	%r7, 0
.L164:
	sllg	%r8, %r7,1(%r0)
	la	%r3, 1(%r8)
	lgrl	%r2, camlStress_cae.20@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L165:
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L166:
	la	%r2, 8(%r11)
	stg	%r2, 0(%r15)
	lghi	%r3, 1024
	stg	%r3, -8(%r2)
	lghi	%r4, 1
	stg	%r4, 0(%r2)
	lghi	%r5, 3
	lghi	%r6, 1
	lgr	%r7, %r6
	csg	%r7, %r5, 0(%r2)
	cgfi	%r7, 1
	lghi	%r8, 1
	brc	8, .L167
	lghi	%r8, 0
.L167:
	sllg	%r9, %r8,1(%r0)
	la	%r3, 1(%r9)
	lgrl	%r2, camlStress_cae.21@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L168:
	lghi	%r3, 3
	lghi	%r4, 1
	lg	%r2, 0(%r15)
	lgr	%r5, %r4
	csg	%r5, %r3, 0(%r2)
	cgfi	%r5, 1
	lghi	%r6, 1
	brc	7, .L169
	lghi	%r6, 0
.L169:
	sllg	%r7, %r6,1(%r0)
	la	%r3, 1(%r7)
	lgrl	%r2, camlStress_cae.22@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L170:
	lg	%r3, 0(%r15)
	lg	%r12, 0(%r3)
	cgfi	%r12, 3
	lghi	%r2, 1
	brc	8, .L171
	lghi	%r2, 0
.L171:
	sllg	%r3, %r2,1(%r0)
	la	%r3, 1(%r3)
	lgrl	%r2, camlStress_cae.23@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L172:
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L173:
	la	%r6, 8(%r11)
	stg	%r6, 0(%r15)
	lghi	%r7, 1024
	stg	%r7, -8(%r6)
	lghi	%r8, -1
	stg	%r8, 0(%r6)
	lgrl	%r9, .L174
	lghi	%r12, -1
	lgr	%r2, %r12
	csg	%r2, %r9, 0(%r6)
	cgfi	%r2, -1
	lghi	%r3, 1
	brc	8, .L175
	lghi	%r3, 0
.L175:
	sllg	%r4, %r3,1(%r0)
	la	%r3, 1(%r4)
	lgrl	%r2, camlStress_cae.24@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L176:
	lgrl	%r7, .L177
	lg	%r4, 0(%r15)
	lg	%r8, 0(%r4)
	cgr	%r8, %r7
	lghi	%r9, 1
	brc	8, .L178
	lghi	%r9, 0
.L178:
	sllg	%r12, %r9,1(%r0)
	la	%r3, 1(%r12)
	lgrl	%r2, camlStress_cae.25@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L179:
	lgrl	%r4, .L180
	lgrl	%r5, .L181
	lg	%r7, 0(%r15)
	lgr	%r6, %r5
	csg	%r6, %r4, 0(%r7)
	cgr	%r6, %r5
	lghi	%r8, 1
	brc	8, .L182
	lghi	%r8, 0
.L182:
	sllg	%r9, %r8,1(%r0)
	la	%r3, 1(%r9)
	lgrl	%r2, camlStress_cae.26@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L183:
	lgrl	%r3, .L184
	lg	%r6, 0(%r15)
	lg	%r4, 0(%r6)
	cgr	%r4, %r3
	lghi	%r5, 1
	brc	8, .L185
	lghi	%r5, 0
.L185:
	sllg	%r6, %r5,1(%r0)
	la	%r3, 1(%r6)
	lgrl	%r2, camlStress_cae.27@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L186:
	lgrl	%r3, camlStress_cae.30@GOT
	lgrl	%r2, camlStdlib@GOT
	lg	%r2, 304(%r2)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L187:
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L188:
	la	%r2, 8(%r11)
	stg	%r2, 0(%r15)
	lghi	%r5, 1024
	stg	%r5, -8(%r2)
	lgrl	%r5, camlStress_cae.31@GOT
	stg	%r5, 0(%r2)
	lgrl	%r4, camlStress_cae.32@GOT
	lghi	%r3, 1
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_atomic_cas_field@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	lghi	%r3, 4
	sgr	%r3, %r2
	lgrl	%r2, camlStress_cae.33@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L189:
	lgrl	%r5, camlStress_cae.32@GOT
	lgrl	%r4, camlStress_cae.31@GOT
	lghi	%r3, 1
	lg	%r2, 0(%r15)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_atomic_cas_field@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	lgr	%r3, %r2
	lgrl	%r2, camlStress_cae.34@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L190:
	lgrl	%r12, camlStress_cae.32@GOT
	lg	%r8, 0(%r15)
	lg	%r2, 0(%r8)
	cgr	%r2, %r12
	lghi	%r3, 1
	brc	8, .L191
	lghi	%r3, 0
.L191:
	sllg	%r4, %r3,1(%r0)
	la	%r3, 1(%r4)
	lgrl	%r2, camlStress_cae.35@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L192:
	lghi	%r2, 1
	lgrl	%r7, caml_gc_full_major@GOT
	lgrl	%r1, caml_c_call@GOT
	basr	%r14, %r1
.L193:
	lgrl	%r3, camlStress_cae.32@GOT
	lg	%r9, 0(%r15)
	lg	%r2, 0(%r9)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_string_equal@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	lgr	%r3, %r2
	lgrl	%r2, camlStress_cae.36@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L194:
	lgfi	%r4, 200001
	stg	%r4, 8(%r15)
	lghi	%r5, 9
	stg	%r5, 0(%r15)
	lgrl	%r3, camlStress_cae.46@GOT
	lgrl	%r7, camlStdlib@GOT
	lg	%r2, 304(%r7)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L195:
	lgr	%r4, %r2
	lg	%r2, 0(%r15)
	lg	%r3, 8(%r15)
	brasl	%r14, caml_apply2@PLT
.L196:
	lay	%r11, -80(%r11)
		lgrl	%r1, caml_allocN@GOT
	basr	%r14, %r1

.L197:
	la	%r12, 8(%r11)
	la	%r12, 64(%r12)
	stg	%r12, 16(%r15)
	lghi	%r2, 1024
	stg	%r2, -8(%r12)
	lghi	%r3, 1
	stg	%r3, 0(%r12)
	lay	%r4, -32(%r12)
	stg	%r4, 0(%r15)
	lghi	%r5, 3319
	stg	%r5, -8(%r4)
	lgrl	%r6, camlStress_cae.bump_387@GOT
	stg	%r6, 0(%r4)
	lgrl	%r7, .L198
	stg	%r7, 8(%r4)
	stg	%r12, 16(%r4)
	lay	%r3, -32(%r4)
	lghi	%r9, 3319
	stg	%r9, -8(%r3)
	lgrl	%r12, camlStress_cae.fun_604@GOT
	stg	%r12, 0(%r3)
	stg	%r7, 8(%r3)
	stg	%r4, 16(%r3)
	lghi	%r2, 7
	brasl	%r14, camlStdlib__List.init_332@PLT
.L199:
	stg	%r2, 8(%r15)
	lghi	%r2, 1
	lg	%r3, 0(%r15)
	brasl	%r14, camlStress_cae.bump_387@PLT
.L200:
	lgrl	%r6, camlStdlib__Domain@GOT
	lg	%r2, 8(%r6)
	lg	%r3, 8(%r15)
	brasl	%r14, camlStdlib__List.iter_403@PLT
.L201:
	lg	%r5, 16(%r15)
	lg	%r8, 0(%r5)
	cgfi	%r8, 800001
	lghi	%r9, 1
	brc	8, .L202
	lghi	%r9, 0
.L202:
	sllg	%r12, %r9,1(%r0)
	la	%r3, 1(%r12)
	lgrl	%r2, camlStress_cae.47@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L203:
	lgrl	%r3, camlStress_cae.50@GOT
	lgrl	%r6, camlStdlib@GOT
	lg	%r2, 304(%r6)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L204:
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L205:
	la	%r8, 8(%r11)
	stg	%r8, 16(%r15)
	lghi	%r9, 1024
	stg	%r9, -8(%r8)
	lghi	%r12, 1
	stg	%r12, 0(%r8)
	lghi	%r3, 1
	lgfi	%r2, 800003
	lgrl	%r7, caml_array_make@GOT
	lgrl	%r1, caml_c_call@GOT
	basr	%r14, %r1
.L206:
	stg	%r2, 24(%r15)
	lay	%r11, -64(%r11)
		lgrl	%r1, caml_allocN@GOT
	basr	%r14, %r1

.L207:
	la	%r5, 8(%r11)
	la	%r5, 32(%r5)
	stg	%r5, 0(%r15)
	lghi	%r6, 3319
	stg	%r6, -8(%r5)
	lgrl	%r7, camlStress_cae.collect_556@GOT
	stg	%r7, 0(%r5)
	lgrl	%r8, .L208
	stg	%r8, 8(%r5)
	lg	%r6, 16(%r15)
	stg	%r6, 16(%r5)
	lay	%r3, -32(%r5)
	lghi	%r12, 3319
	stg	%r12, -8(%r3)
	lgrl	%r2, camlStress_cae.fun_613@GOT
	stg	%r2, 0(%r3)
	stg	%r8, 8(%r3)
	stg	%r5, 16(%r3)
	lghi	%r2, 7
	brasl	%r14, camlStdlib__List.init_332@PLT
.L209:
	stg	%r2, 8(%r15)
	lghi	%r2, 1
	lg	%r3, 0(%r15)
	brasl	%r14, camlStress_cae.collect_556@PLT
.L210:
	stg	%r2, 0(%r15)
	lgrl	%r8, camlStdlib__Domain@GOT
	lg	%r2, 8(%r8)
	lg	%r3, 8(%r15)
	brasl	%r14, camlStdlib__List.map_340@PLT
.L211:
		lgrl	%r1, caml_alloc2@GOT
	basr	%r14, %r1

.L212:
	la	%r3, 8(%r11)
	lghi	%r4, 2048
	stg	%r4, -8(%r3)
	lg	%r9, 0(%r15)
	stg	%r9, 0(%r3)
	stg	%r2, 8(%r3)
	lgr	%r2, %r3
	brasl	%r14, camlStdlib__List.flatten_335@PLT
.L213:
	lgr	%r3, %r2
		lgrl	%r1, caml_alloc3@GOT
	basr	%r14, %r1

.L214:
	la	%r2, 8(%r11)
	lghi	%r6, 3319
	stg	%r6, -8(%r2)
	lgrl	%r7, camlStress_cae.fun_634@GOT
	stg	%r7, 0(%r2)
	lgrl	%r8, .L215
	stg	%r8, 8(%r2)
	lg	%r12, 24(%r15)
	stg	%r12, 16(%r2)
	brasl	%r14, camlStdlib__List.iter_403@PLT
.L216:
	lg	%r6, 16(%r15)
	lg	%r9, 0(%r6)
	lg	%r4, 24(%r15)
	lg	%r12, -8(%r4)
	srlg	%r2, %r12,9(%r0)
	clgr	%r2, %r9
	brcl	12, .L217
	sllg	%r3, %r9,2(%r0)
	lg	%r5, -4(%r4,%r3)
	la	%r5, 2(%r5)
	lg	%r6, 0(%r6)
	clgr	%r2, %r6
	brcl	12, .L217
	sllg	%r9, %r6,2(%r0)
	stg	%r5, -4(%r4,%r9)
	lghi	%r3, 3
	lghi	%r2, 1
	cgfi	%r2, 800001
	brcl	2, .L142
.L143:
	lg	%r5, -8(%r4)
	srlg	%r6, %r5,9(%r0)
	clgr	%r6, %r2
	brcl	12, .L217
	sllg	%r7, %r2,2(%r0)
	lg	%r8, -4(%r4,%r7)
	cgfi	%r8, 3
	brcl	8, .L144
	lghi	%r3, 1
.L144:
	lgr	%r12, %r2
	la	%r2, 2(%r2)
	cgfi	%r12, 800001
	brcl	8, .L142
	clg	%r11, 0(%r10)
	brcl	10, .L143
	brcl	15, .L218
.L142:
	lgrl	%r2, camlStress_cae.51@GOT
	brasl	%r14, camlStress_cae.check_277@PLT
.L220:
	lgrl	%r7, camlStress_cae@GOT
	lg	%r8, 16(%r7)
	lg	%r9, 0(%r8)
	cgfi	%r9, 1
	brcl	7, .L141
	lgrl	%r2, camlStress_cae.52@GOT
	brasl	%r14, camlStdlib.print_endline_369@PLT
.L221:
	brcl	15,.L140
.L141:
	stg	%r9, 0(%r15)
	lgrl	%r3, camlStress_cae.57@GOT
	lgrl	%r7, camlStdlib@GOT
	lg	%r2, 304(%r7)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L222:
	lgr	%r3, %r2
	lg	%r12, 0(%r3)
	lg	%r2, 0(%r15)
	basr	%r14, %r12
.L223:
	lghi	%r2, 3
	brasl	%r14, camlStdlib.exit_480@PLT
.L224:
.L140:
	lghi	%r2, 1
	lg	%r14, 32(%r15)
	la	%r15, 40(%r15)
	br	%r14
.L218:	lgrl	%r1, caml_call_gc@GOT
	basr	%r14, %r1
.L219:	brcl	15, .L143
.L217:	lgrl	%r1, caml_ml_array_bound_error@GOT
	basr	%r14, %r1
.L146:
	lay	%r15, -8(%r15)
	.cfi_def_cfa_offset	8
	.cfi_escape 0x14, 15, 0
	stg	%r14, 0(%r15)
	.cfi_offset 14, -8
	lgfi	%r12, 37
	lgrl	%r1, caml_call_realloc_stack@GOT
	basr	%r14, %r1
	lg	%r14, 0(%r15)
	la	%r15, 8(%r15)
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	brcl	15, .L147
	.cfi_endproc
	.size	camlStress_cae.entry, . - camlStress_cae.entry
	.section ".rodata"
	.align	8
.L215:	.quad	72057594037927941
.L208:	.quad	72057594037927941
.L198:	.quad	72057594037927941
.L184:	.quad	9223372036854775807
.L181:	.quad	-9223372036854775807
.L180:	.quad	9223372036854775807
.L177:	.quad	-9223372036854775807
.L174:	.quad	-9223372036854775807
	.section ".data"
	.align	8
	.text
	.globl	camlStress_cae.code_end
	.type	camlStress_cae.code_end, @object
camlStress_cae.code_end:
	.long	0
	.section ".data"
	.align	8
	.globl	camlStress_cae.data_end
	.type	camlStress_cae.data_end, @object
	.quad	0
camlStress_cae.data_end:
	.quad	0
	.section ".data"
	.align	8
	.globl	camlStress_cae.frametable
	.type	camlStress_cae.frametable, @object
camlStress_cae.frametable:
	.quad	58
	.quad	.L224
	.short	41
	.short	0
	.align	4
	.long	(.L225 - .) + 0x0
	.align	8
	.quad	.L223
	.short	41
	.short	0
	.align	4
	.long	(.L226 - .) + 0x0
	.align	8
	.quad	.L222
	.short	41
	.short	0
	.align	4
	.long	(.L227 - .) + 0x0
	.align	8
	.quad	.L221
	.short	41
	.short	0
	.align	4
	.long	(.L228 - .) + 0x0
	.align	8
	.quad	.L220
	.short	41
	.short	0
	.align	4
	.long	(.L229 - .) + 0x0
	.align	8
	.quad	.L219
	.short	42
	.short	1
	.short	5
	.byte	0
	.align	8
	.quad	.L216
	.short	41
	.short	2
	.short	16
	.short	24
	.align	4
	.long	(.L230 - .) + 0x0
	.align	8
	.quad	.L214
	.short	42
	.short	3
	.short	3
	.short	16
	.short	24
	.byte	1
	.byte	2
	.align	8
	.quad	.L213
	.short	41
	.short	2
	.short	16
	.short	24
	.align	4
	.long	(.L231 - .) + 0x0
	.align	8
	.quad	.L212
	.short	42
	.short	4
	.short	0
	.short	1
	.short	16
	.short	24
	.byte	1
	.byte	1
	.align	8
	.quad	.L211
	.short	41
	.short	3
	.short	0
	.short	16
	.short	24
	.align	4
	.long	(.L232 - .) + 0x0
	.align	8
	.quad	.L210
	.short	41
	.short	3
	.short	8
	.short	16
	.short	24
	.align	4
	.long	(.L233 - .) + 0x0
	.align	8
	.quad	.L209
	.short	41
	.short	3
	.short	0
	.short	16
	.short	24
	.align	4
	.long	(.L234 - .) + 0x0
	.align	8
	.quad	.L207
	.short	42
	.short	2
	.short	16
	.short	24
	.byte	2
	.byte	2
	.byte	2
	.align	8
	.quad	.L206
	.short	41
	.short	1
	.short	16
	.align	4
	.long	(.L235 - .) + 0x0
	.align	8
	.quad	.L205
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L204
	.short	41
	.short	0
	.align	4
	.long	(.L227 - .) + 0x0
	.align	8
	.quad	.L203
	.short	41
	.short	0
	.align	4
	.long	(.L236 - .) + 0x0
	.align	8
	.quad	.L201
	.short	41
	.short	1
	.short	16
	.align	4
	.long	(.L237 - .) + 0x0
	.align	8
	.quad	.L200
	.short	41
	.short	2
	.short	8
	.short	16
	.align	4
	.long	(.L238 - .) + 0x0
	.align	8
	.quad	.L199
	.short	41
	.short	2
	.short	0
	.short	16
	.align	4
	.long	(.L239 - .) + 0x0
	.align	8
	.quad	.L197
	.short	42
	.short	0
	.byte	3
	.byte	2
	.byte	2
	.byte	0
	.align	8
	.quad	.L196
	.short	41
	.short	0
	.align	4
	.long	(.L240 - .) + 0x0
	.align	8
	.quad	.L195
	.short	41
	.short	0
	.align	4
	.long	(.L227 - .) + 0x0
	.align	8
	.quad	.L194
	.short	41
	.short	0
	.align	4
	.long	(.L241 - .) + 0x0
	.align	8
	.quad	.L193
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L242 - .) + 0x0
	.align	8
	.quad	.L192
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L243 - .) + 0x0
	.align	8
	.quad	.L190
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L244 - .) + 0x0
	.align	8
	.quad	.L189
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L245 - .) + 0x0
	.align	8
	.quad	.L188
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L187
	.short	41
	.short	0
	.align	4
	.long	(.L227 - .) + 0x0
	.align	8
	.quad	.L186
	.short	41
	.short	0
	.align	4
	.long	(.L246 - .) + 0x0
	.align	8
	.quad	.L183
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L247 - .) + 0x0
	.align	8
	.quad	.L179
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L248 - .) + 0x0
	.align	8
	.quad	.L176
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L249 - .) + 0x0
	.align	8
	.quad	.L173
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L172
	.short	41
	.short	0
	.align	4
	.long	(.L250 - .) + 0x0
	.align	8
	.quad	.L170
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L251 - .) + 0x0
	.align	8
	.quad	.L168
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L252 - .) + 0x0
	.align	8
	.quad	.L166
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L165
	.short	41
	.short	0
	.align	4
	.long	(.L253 - .) + 0x0
	.align	8
	.quad	.L163
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L254 - .) + 0x0
	.align	8
	.quad	.L160
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L255 - .) + 0x0
	.align	8
	.quad	.L158
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L256 - .) + 0x0
	.align	8
	.quad	.L156
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L257 - .) + 0x0
	.align	8
	.quad	.L154
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L258 - .) + 0x0
	.align	8
	.quad	.L152
	.short	41
	.short	1
	.short	0
	.align	4
	.long	(.L259 - .) + 0x0
	.align	8
	.quad	.L150
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L149
	.short	41
	.short	0
	.align	4
	.long	(.L227 - .) + 0x0
	.align	8
	.quad	.L148
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L134
	.short	10
	.short	1
	.short	3
	.byte	1
	.byte	3
	.align	8
	.quad	.L129
	.short	10
	.short	2
	.short	3
	.short	7
	.byte	1
	.byte	1
	.align	8
	.quad	.L123
	.short	10
	.short	1
	.short	3
	.byte	0
	.align	8
	.quad	.L118
	.short	25
	.short	1
	.short	0
	.align	4
	.long	(.L260 - .) + 0x0
	.align	8
	.quad	.L114
	.short	26
	.short	1
	.short	0
	.byte	1
	.byte	2
	.align	8
	.quad	.L108
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L227 - .) + 0x0
	.align	8
	.quad	.L107
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L227 - .) + 0x0
	.align	8
	.quad	.L106
	.short	18
	.short	1
	.short	1
	.byte	0
	.align	8
	.align	4
.L260:
	.long	(.L262 - .) + 0x0
	.long	0x1f81858
	.align	4
.L227:
	.long	(.L264 - .) + 0x0
	.long	0xf84518
	.align	4
.L240:
	.long	(.L265 - .) + 0x0
	.long	0x1b80a68
	.align	4
.L254:
	.long	(.L265 - .) + 0x0
	.long	0xd809c0
	.align	4
.L247:
	.long	(.L265 - .) + 0x0
	.long	0x1280a00
	.align	4
.L244:
	.long	(.L265 - .) + 0x0
	.long	0x17809b0
	.align	4
.L238:
	.long	(.L265 - .) + 0x0
	.long	0x2180848
	.align	4
.L237:
	.long	(.L265 - .) + 0x0
	.long	0x22008d0
	.align	4
.L233:
	.long	(.L265 - .) + 0x0
	.long	0x2b034b0
	.align	4
.L225:
	.long	(.L265 - .) + 0x0
	.long	0x320d9e0
	.align	4
.L230:
	.long	(.L265 - .) + 0x0
	.long	0x2c00998
	.align	4
.L228:
	.long	(.L265 - .) + 0x0
	.long	0x3186170
	.align	4
.L245:
	.long	(.L265 - .) + 0x0
	.long	0x17009e8
	.align	4
.L239:
	.long	(.L265 - .) + 0x0
	.long	0x2102e00
	.align	4
.L252:
	.long	(.L265 - .) + 0x0
	.long	0xf009e0
	.align	4
.L249:
	.long	(.L265 - .) + 0x0
	.long	0x11809f0
	.align	4
.L248:
	.long	(.L265 - .) + 0x0
	.long	0x1200990
	.align	4
.L234:
	.long	(.L265 - .) + 0x18000000
	.long	0x2a12ca9
	.align	4
.L259:
	.long	(.L265 - .) + 0x0
	.long	0xb009e8
	.align	4
.L258:
	.long	(.L265 - .) + 0x0
	.long	0xb80958
	.align	4
.L256:
	.long	(.L265 - .) + 0x0
	.long	0xc809b0
	.align	4
.L250:
	.long	(.L265 - .) + 0x0
	.long	0x1000950
	.align	4
.L236:
	.long	(.L265 - .) + 0x0
	.long	0x2280a00
	.align	4
.L257:
	.long	(.L265 - .) + 0x0
	.long	0xc00a28
	.align	4
.L255:
	.long	(.L265 - .) + 0x0
	.long	0xd009d0
	.align	4
.L251:
	.long	(.L265 - .) + 0x0
	.long	0xf80a18
	.align	4
.L246:
	.long	(.L265 - .) + 0x0
	.long	0x1300988
	.align	4
.L241:
	.long	(.L265 - .) + 0x0
	.long	0x1900980
	.align	4
.L231:
	.long	(.L265 - .) + 0x0
	.long	0x2b831c8
	.align	4
.L242:
	.long	(.L265 - .) + 0x0
	.long	0x1880890
	.align	4
.L243:
	.long	(.L265 - .) + 0x0
	.long	0x1800948
	.align	4
.L235:
	.long	(.L265 - .) + 0x0
	.long	0x26035a8
	.align	4
.L253:
	.long	(.L265 - .) + 0x0
	.long	0xe00960
	.align	4
.L232:
	.long	(.L265 - .) + 0x0
	.long	0x2b885c0
	.align	4
.L229:
	.long	(.L265 - .) + 0x0
	.long	0x3000978
	.align	4
.L226:
	.long	(.L265 - .) + 0x0
	.long	0x32035a0
.L261:
	.byte	47,114,111,111,116,47,97,98,47,115,116,114,101,115,115,95
	.byte	99,97,101,46,109,108,0
.L263:
	.byte	112,114,105,110,116,102,46,109,108,0
	.align	4
.L262:
	.long	(.L261 - .) + 0x0
	.byte	83,116,114,101,115,115,95,99,97,101,46,98,117,109,112,0
	.align	4
.L264:
	.long	(.L263 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.align	4
.L265:
	.long	(.L261 - .) + 0x0
	.byte	83,116,114,101,115,115,95,99,97,101,0
	.align	8
	.size	camlStress_cae.frametable, . - camlStress_cae.frametable
	.section .note.GNU-stack,"",%progbits
