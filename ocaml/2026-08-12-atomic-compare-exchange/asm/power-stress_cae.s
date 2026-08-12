	.file	""
	.abiversion 2
	.section ".data"
	.globl	camlStress_cae.data_begin
	.type	camlStress_cae.data_begin, @object
camlStress_cae.data_begin:
	.text
	.globl	camlStress_cae.code_begin
	.type	camlStress_cae.code_begin, @object
camlStress_cae.code_begin:
	.section ".data"
	.align  3
	.section ".data"
	.align  3
	.quad	4087
camlStress_cae.58:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlStress_cae.check_277
	.section ".data"
	.align  3
	.quad	4864
	.globl	camlStress_cae
	.type	camlStress_cae, @object
camlStress_cae:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.section ".data"
	.align  3
	.globl	camlStress_cae.gc_roots
	.type	camlStress_cae.gc_roots, @object
camlStress_cae.gc_roots:
	.quad	camlStress_cae
	.quad	0
	.text
	.align	2
.L102:	mflr	28
	li	27, 38
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L103
	.globl	camlStress_cae.check_277
	.type	camlStress_cae.check_277, @function
camlStress_cae.check_277:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlStress_cae.check_277, . - 0b
	ld	11, 40(30)
	addi	11, 11, 360
	cmpld	1, 11
	ble-	.L102
.L103:
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -48
	.cfi_adjust_cfa_offset	48
.L101:
	ld	0, 0(30)
	cmpld	31, 0
	bltl-	.L104
.L105:
	cmpdi	4, 1
	beq	.L100
	addis	4, 2, .L106@toc@ha
	ld	4, .L106@toc@l(4) # camlStress_cae.6
	std	3, 32(1)
	addis	11, 2, .L107@toc@ha
	ld	11, .L107@toc@l(11) # camlStdlib
	ld	3, 304(11)
	bl	camlStdlib__Printf.fprintf_433
.L108:
	nop
	ld	2, 56(1)
	mr	4, 3
	ld	20, 0(4)
	ld	3, 32(1)
	mtctr	20
	mr	12, 20
	ld	11, 64(1)
	mtlr	11
	addi	1, 1, 48
	bctr
.L100:
	addis	11, 2, .L109@toc@ha
	ld	11, .L109@toc@l(11) # camlStress_cae
	ld	5, 16(11)
	addis	4, 2, .L110@toc@ha
	ld	4, .L110@toc@l(4) # camlStress_cae.10
	ld	6, 0(5)
	std	3, 32(1)
	addi	7, 6, 2
	lwsync
	std	7, 0(5)
	addis	11, 2, .L107@toc@ha
	ld	11, .L107@toc@l(11) # camlStdlib
	ld	3, 304(11)
	bl	camlStdlib__Printf.fprintf_433
.L111:
	nop
	ld	2, 56(1)
	mr	4, 3
	ld	15, 0(4)
	ld	3, 32(1)
	mtctr	15
	mr	12, 15
	ld	11, 64(1)
	mtlr	11
	addi	1, 1, 48
	bctr
.L104:
	std	2, 24(1)
	addis	12, 2, .L112@toc@ha
	ld	12, .L112@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlStress_cae.check_277, . - camlStress_cae.check_277
	.text
	.align	2
.L116:	mflr	28
	li	27, 38
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L117
	.globl	camlStress_cae.bump_387
	.type	camlStress_cae.bump_387, @function
camlStress_cae.bump_387:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlStress_cae.bump_387, . - 0b
	ld	11, 40(30)
	addi	11, 11, 360
	cmpld	1, 11
	ble-	.L116
.L117:
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -48
	.cfi_adjust_cfa_offset	48
.L115:
	addis	8, 0, 3
	addi	8, 8, 3393
	li	5, 3
	cmpd	5, 8
	bgt	.L113
	std	4, 32(1)
	std	5, 40(1)
.L114:
	ld	0, 0(30)
	addi	31, 31, -32
	cmpld	31, 0
	bltl-	.L118
.L119:
	addi	4, 31, 8
	ld	23, 32(1)
	addis	15, 2, .L120@toc@ha
	ld	15, .L120@toc@l(15) # 72057594037927941
	addis	14, 2, .L121@toc@ha
	ld	14, .L121@toc@l(14) # camlStress_cae.go_390
	li	10, 3319
	std	10, -8(4)
	std	14, 0(4)
	std	15, 8(4)
	ld	16, 16(23)
	li	3, 1
	std	16, 16(4)
	bl	camlStress_cae.go_390
.L122:
	nop
	ld	2, 56(1)
	ld	19, 40(1)
	addis	21, 0, 3
	addi	21, 21, 3393
	mr	18, 19
	addi	19, 19, 2
	std	19, 40(1)
	cmpd	18, 21
	bne	.L114
.L113:
	ld	11, 64(1)
	mtlr	11
	li	3, 1
	addi	1, 1, 48
	blr
.L118:
	std	2, 24(1)
	addis	12, 2, .L112@toc@ha
	ld	12, .L112@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlStress_cae.bump_387, . - camlStress_cae.bump_387
	.text
	.align	2
	.globl	camlStress_cae.go_390
	.type	camlStress_cae.go_390, @function
camlStress_cae.go_390:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlStress_cae.go_390, . - 0b
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -32
	.cfi_adjust_cfa_offset	32
.L124:
	ld	0, 0(30)
	cmpld	31, 0
	bltl-	.L125
.L126:
	ld	5, 16(4)
	sync
	ld	6, 0(5)
	cmpw	6, 6
	bne-	$+4
	isync
	addi	7, 6, 2
	sync
.L127:
	ldarx	9, 0, 5
	cmpd	9, 6
	bne-	.L128
	stdcx.	7, 0, 5
	bne-	.L127
.L128:
	isync
	lwsync
	cmpd	9, 6
	bne	.L123
	ld	11, 48(1)
	mtlr	11
	li	3, 1
	addi	1, 1, 32
	blr
.L123:
	li	3, 1
	b	.L124
.L125:
	std	2, 24(1)
	addis	12, 2, .L112@toc@ha
	ld	12, .L112@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlStress_cae.go_390, . - camlStress_cae.go_390
	.text
	.align	2
	.globl	camlStress_cae.fun_604
	.type	camlStress_cae.fun_604, @function
camlStress_cae.fun_604:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlStress_cae.fun_604, . - 0b
.L129:
	ld	3, 16(4)
	addis	11, 2, .L130@toc@ha
	ld	11, .L130@toc@l(11) # camlStdlib__Domain
	ld	4, 0(11)
	addis	12, 2, .L131@toc@ha
	ld	12, .L131@toc@l(12) # camlStdlib__Domain.spawn_790
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlStress_cae.fun_604, . - camlStress_cae.fun_604
	.text
	.align	2
	.globl	camlStress_cae.collect_556
	.type	camlStress_cae.collect_556, @function
camlStress_cae.collect_556:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlStress_cae.collect_556, . - 0b
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -32
	.cfi_adjust_cfa_offset	32
.L134:
	addis	10, 0, 3
	addi	10, 10, 3393
	li	7, 3
	mr	5, 3
	li	3, 1
	cmpd	7, 10
	bgt	.L132
.L133:
	addis	16, 0, 2
	addi	16, 16, -31072
	mulld	17, 5, 16
	ld	21, 16(4)
	addis	19, 0, -2
	addi	19, 19, 31072
	add	18, 17, 7
	add	20, 18, 19
	sync
.L135:
	ldarx	22, 0, 21
	stdcx.	20, 0, 21
	bne-	.L135
	isync
	lwsync
	ld	0, 0(30)
	addi	31, 31, -24
	cmpld	31, 0
	bltl-	.L136
.L137:
	addi	23, 31, 8
	addis	28, 0, 3
	addi	28, 28, 3393
	li	24, 2048
	std	24, -8(23)
	std	22, 0(23)
	std	3, 8(23)
	mr	3, 23
	mr	25, 7
	addi	7, 7, 2
	cmpd	25, 28
	bne	.L133
.L132:
	ld	11, 48(1)
	mtlr	11
	addi	1, 1, 32
	blr
.L136:
	std	2, 24(1)
	addis	12, 2, .L112@toc@ha
	ld	12, .L112@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlStress_cae.collect_556, . - camlStress_cae.collect_556
	.text
	.align	2
	.globl	camlStress_cae.fun_625
	.type	camlStress_cae.fun_625, @function
camlStress_cae.fun_625:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlStress_cae.fun_625, . - 0b
.L138:
	ld	5, 24(4)
	ld	4, 16(4)
	addi	3, 5, 2
	addis	12, 2, .L139@toc@ha
	ld	12, .L139@toc@l(12) # camlStress_cae.collect_556
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlStress_cae.fun_625, . - camlStress_cae.fun_625
	.text
	.align	2
	.globl	camlStress_cae.fun_613
	.type	camlStress_cae.fun_613, @function
camlStress_cae.fun_613:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlStress_cae.fun_613, . - 0b
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -32
	.cfi_adjust_cfa_offset	32
.L140:
	ld	0, 0(30)
	addi	31, 31, -40
	cmpld	31, 0
	bltl-	.L141
.L142:
	addi	5, 31, 8
	addis	8, 2, .L120@toc@ha
	ld	8, .L120@toc@l(8) # 72057594037927941
	addis	7, 2, .L143@toc@ha
	ld	7, .L143@toc@l(7) # camlStress_cae.fun_625
	li	6, 4343
	std	6, -8(5)
	std	7, 0(5)
	std	8, 8(5)
	ld	9, 16(4)
	std	9, 16(5)
	std	3, 24(5)
	addis	11, 2, .L130@toc@ha
	ld	11, .L130@toc@l(11) # camlStdlib__Domain
	ld	4, 0(11)
	mr	3, 5
	addis	12, 2, .L131@toc@ha
	ld	12, .L131@toc@l(12) # camlStdlib__Domain.spawn_790
	mtctr	12
	ld	11, 48(1)
	mtlr	11
	addi	1, 1, 32
	bctr
.L141:
	std	2, 24(1)
	addis	12, 2, .L112@toc@ha
	ld	12, .L112@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlStress_cae.fun_613, . - camlStress_cae.fun_613
	.text
	.align	2
	.globl	camlStress_cae.fun_634
	.type	camlStress_cae.fun_634, @function
camlStress_cae.fun_634:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlStress_cae.fun_634, . - 0b
.L144:
	ld	5, 16(4)
	sldi	8, 3, 2
	ld	6, -8(5)
	add	9, 5, 8
	srdi	7, 6, 9
	cmpld	7, 3
	ble-	.L145
	ld	10, -4(9)
	li	3, 1
	addi	14, 10, 2
	lwsync
	std	14, -4(9)
	blr
.L145:	bl	caml_ml_array_bound_error
	nop	
	.cfi_endproc
	.size	camlStress_cae.fun_634, . - camlStress_cae.fun_634
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.9:
	.byte	32,32,70,65,73,76,58,32,37,115,10
	.space	4
	.byte	4
	.section ".data"
	.align  3
	.quad	2827
camlStress_cae.8:
	.quad	camlStress_cae.7
	.quad	camlStress_cae.3
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.7:
	.byte	32,32,70,65,73,76,58,32
	.space	7
	.byte	7
	.section ".data"
	.align  3
	.quad	2816
camlStress_cae.6:
	.quad	camlStress_cae.4
	.quad	camlStress_cae.5
	.section ".data"
	.align  3
	.quad	2816
camlStress_cae.57:
	.quad	camlStress_cae.55
	.quad	camlStress_cae.56
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.56:
	.byte	37,100,32,70,65,73,76,85,82,69,83,10
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	4868
camlStress_cae.55:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.54
	.section ".data"
	.align  3
	.quad	2827
camlStress_cae.54:
	.quad	camlStress_cae.53
	.quad	1
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.53:
	.byte	32,70,65,73,76,85,82,69,83,10
	.space	5
	.byte	5
	.section ".data"
	.align  3
	.quad	2044
camlStress_cae.52:
	.byte	65,76,76,32,79,75
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	6140
camlStress_cae.51:
	.byte	101,118,101,114,121,32,118,97,108,117,101,32,111,98,115,101
	.byte	114,118,101,100,32,101,120,97,99,116,108,121,32,111,110,99
	.byte	101
	.space	6
	.byte	6
	.section ".data"
	.align  3
	.quad	2816
camlStress_cae.50:
	.quad	camlStress_cae.49
	.quad	camlStress_cae.48
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.5:
	.byte	32,32,80,65,83,83,58,32,37,115,10
	.space	4
	.byte	4
	.section ".data"
	.align  3
	.quad	2827
camlStress_cae.49:
	.quad	camlStress_cae.48
	.quad	1
	.section ".data"
	.align  3
	.quad	4092
camlStress_cae.48:
	.byte	67,111,110,116,101,110,100,101,100,32,101,120,99,104,97,110
	.byte	103,101,10
	.space	4
	.byte	4
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.47:
	.byte	110,111,32,108,111,115,116,32,117,112,100,97,116,101,115
	.byte	0
	.section ".data"
	.align  3
	.quad	2816
camlStress_cae.46:
	.quad	camlStress_cae.44
	.quad	camlStress_cae.45
	.section ".data"
	.align  3
	.quad	6140
camlStress_cae.45:
	.byte	67,111,110,116,101,110,100,101,100,32,105,110,99,114,101,109
	.byte	101,110,116,32,40,37,100,32,100,111,109,97,105,110,115,32
	.byte	120,32,37,100,41,10
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	2827
camlStress_cae.44:
	.quad	camlStress_cae.37
	.quad	camlStress_cae.43
	.section ".data"
	.align  3
	.quad	4868
camlStress_cae.43:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.42
	.section ".data"
	.align  3
	.quad	2827
camlStress_cae.42:
	.quad	camlStress_cae.38
	.quad	camlStress_cae.41
	.section ".data"
	.align  3
	.quad	4868
camlStress_cae.41:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.40
	.section ".data"
	.align  3
	.quad	2827
camlStress_cae.40:
	.quad	camlStress_cae.39
	.quad	1
	.section ".data"
	.align  3
	.quad	2827
camlStress_cae.4:
	.quad	camlStress_cae.1
	.quad	camlStress_cae.3
	.section ".data"
	.align  3
	.quad	2044
camlStress_cae.39:
	.byte	41,10
	.space	5
	.byte	5
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.38:
	.byte	32,100,111,109,97,105,110,115,32,120,32
	.space	4
	.byte	4
	.section ".data"
	.align  3
	.quad	4092
camlStress_cae.37:
	.byte	67,111,110,116,101,110,100,101,100,32,105,110,99,114,101,109
	.byte	101,110,116,32,40
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	4092
camlStress_cae.36:
	.byte	98,111,120,101,100,32,115,117,114,118,105,118,101,115,32,103
	.byte	99
	.space	6
	.byte	6
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.35:
	.byte	98,111,120,101,100,32,118,97,108,117,101
	.space	4
	.byte	4
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.34:
	.byte	98,111,120,101,100,32,99,97,115,32,104,105,116
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.33:
	.byte	98,111,120,101,100,32,99,97,115,32,109,105,115,115
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	2044
camlStress_cae.32:
	.byte	98
	.space	6
	.byte	6
	.section ".data"
	.align  3
	.quad	2044
camlStress_cae.31:
	.byte	97
	.space	6
	.byte	6
	.section ".data"
	.align  3
	.quad	2816
camlStress_cae.30:
	.quad	camlStress_cae.29
	.quad	camlStress_cae.28
	.section ".data"
	.align  3
	.quad	2818
camlStress_cae.3:
	.quad	1
	.quad	camlStress_cae.2
	.section ".data"
	.align  3
	.quad	2827
camlStress_cae.29:
	.quad	camlStress_cae.28
	.quad	1
	.section ".data"
	.align  3
	.quad	5116
camlStress_cae.28:
	.byte	66,111,120,101,100,32,40,98,97,114,114,105,101,114,32,114
	.byte	101,116,97,105,110,101,100,41,10
	.space	6
	.byte	6
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.27:
	.byte	109,97,120,95,105,110,116,32,115,116,111,114,101,100
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.26:
	.byte	109,97,120,95,105,110,116,32,99,97,115
	.space	4
	.byte	4
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.25:
	.byte	110,101,103,97,116,105,118,101,32,115,116,111,114,101,100
	.byte	0
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.24:
	.byte	110,101,103,97,116,105,118,101,32,99,97,115
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.23:
	.byte	98,111,111,108,32,118,97,108,117,101
	.space	5
	.byte	5
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.22:
	.byte	98,111,111,108,32,99,97,115,32,109,105,115,115
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.21:
	.byte	98,111,111,108,32,99,97,115,32,104,105,116
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.20:
	.byte	101,120,99,104,97,110,103,101,32,115,116,111,114,101,100
	.byte	0
	.section ".data"
	.align  3
	.quad	2828
camlStress_cae.2:
	.quad	21
	.quad	1
	.section ".data"
	.align  3
	.quad	4092
camlStress_cae.19:
	.byte	101,120,99,104,97,110,103,101,32,114,101,116,117,114,110,115
	.byte	32,111,108,100
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	4092
camlStress_cae.18:
	.byte	99,97,115,32,116,111,32,115,97,109,101,32,118,97,108,117
	.byte	101
	.space	6
	.byte	6
	.section ".data"
	.align  3
	.quad	5116
camlStress_cae.17:
	.byte	99,97,115,32,109,105,115,115,32,108,101,102,116,32,118,97
	.byte	108,117,101,32,97,108,111,110,101
	.space	6
	.byte	6
	.section ".data"
	.align  3
	.quad	4092
camlStress_cae.16:
	.byte	99,97,115,32,109,105,115,115,32,114,101,116,117,114,110,115
	.byte	32,102,97,108,115,101
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.15:
	.byte	99,97,115,32,104,105,116,32,115,116,111,114,101,100
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	4092
camlStress_cae.14:
	.byte	99,97,115,32,104,105,116,32,114,101,116,117,114,110,115,32
	.byte	116,114,117,101
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	2816
camlStress_cae.13:
	.quad	camlStress_cae.12
	.quad	camlStress_cae.11
	.section ".data"
	.align  3
	.quad	2827
camlStress_cae.12:
	.quad	camlStress_cae.11
	.quad	1
	.section ".data"
	.align  3
	.quad	5116
camlStress_cae.11:
	.byte	83,105,110,103,108,101,45,116,104,114,101,97,100,101,100,32
	.byte	115,101,109,97,110,116,105,99,115,10
	.space	5
	.byte	5
	.section ".data"
	.align  3
	.quad	2816
camlStress_cae.10:
	.quad	camlStress_cae.8
	.quad	camlStress_cae.9
	.section ".data"
	.align  3
	.quad	3068
camlStress_cae.1:
	.byte	32,32,80,65,83,83,58,32
	.space	7
	.byte	7
	.text
	.align	2
.L152:	mflr	28
	li	27, 40
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L153
	.globl	camlStress_cae.entry
	.type	camlStress_cae.entry, @function
camlStress_cae.entry:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlStress_cae.entry, . - 0b
	ld	11, 40(30)
	addi	11, 11, 376
	cmpld	1, 11
	ble-	.L152
.L153:
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -64
	.cfi_adjust_cfa_offset	64
.L151:
	li	4, 9
	addis	3, 2, .L109@toc@ha
	ld	3, .L109@toc@l(3) # camlStress_cae
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 0, 3
	addi	4, 4, 3393
	addis	7, 2, .L109@toc@ha
	ld	7, .L109@toc@l(7) # camlStress_cae
	addi	3, 7, 8
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	ld	0, 0(30)
	addi	31, 31, -16
	cmpld	31, 0
	bltl-	.L154
.L155:
	addi	4, 31, 8
	li	10, 1024
	std	10, -8(4)
	li	14, 1
	std	14, 0(4)
	addis	15, 2, .L109@toc@ha
	ld	15, .L109@toc@l(15) # camlStress_cae
	addi	3, 15, 16
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 2, .L156@toc@ha
	ld	4, .L156@toc@l(4) # camlStress_cae.58
	addis	18, 2, .L109@toc@ha
	ld	18, .L109@toc@l(18) # camlStress_cae
	addi	3, 18, 24
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 2, .L157@toc@ha
	ld	4, .L157@toc@l(4) # camlStress_cae.13
	addis	11, 2, .L107@toc@ha
	ld	11, .L107@toc@l(11) # camlStdlib
	ld	3, 304(11)
	bl	camlStdlib__Printf.fprintf_433
.L158:
	nop
	ld	2, 72(1)
	ld	0, 0(30)
	addi	31, 31, -16
	cmpld	31, 0
	bltl-	.L154
.L159:
	addi	22, 31, 8
	std	22, 32(1)
	li	23, 1024
	std	23, -8(22)
	li	24, 1
	std	24, 0(22)
	li	25, 3
	li	26, 1
	sync
.L160:
	ldarx	27, 0, 22
	cmpd	27, 26
	bne-	.L161
	stdcx.	25, 0, 22
	bne-	.L160
.L161:
	isync
	lwsync
	cmpdi	27, 1
	mfcr	0
	rlwinm	28, 0, 3, 31, 31
	sldi	3, 28, 1
	addi	4, 3, 1
	addis	3, 2, .L162@toc@ha
	ld	3, .L162@toc@l(3) # camlStress_cae.14
	bl	camlStress_cae.check_277
.L163:
	nop
	ld	2, 72(1)
	ld	20, 32(1)
	sync
	ld	6, 0(20)
	cmpw	6, 6
	bne-	$+4
	isync
	cmpdi	6, 3
	mfcr	0
	rlwinm	7, 0, 3, 31, 31
	sldi	8, 7, 1
	addi	4, 8, 1
	addis	3, 2, .L164@toc@ha
	ld	3, .L164@toc@l(3) # camlStress_cae.15
	bl	camlStress_cae.check_277
.L165:
	nop
	ld	2, 72(1)
	li	14, 5
	li	15, 1
	ld	21, 32(1)
	sync
.L166:
	ldarx	16, 0, 21
	cmpd	16, 15
	bne-	.L167
	stdcx.	14, 0, 21
	bne-	.L166
.L167:
	isync
	lwsync
	cmpdi	16, 1
	mfcr	0
	rlwinm	17, 0, 3, 31, 31
	xori	17, 17, 1
	sldi	18, 17, 1
	addi	4, 18, 1
	addis	3, 2, .L168@toc@ha
	ld	3, .L168@toc@l(3) # camlStress_cae.16
	bl	camlStress_cae.check_277
.L169:
	nop
	ld	2, 72(1)
	ld	22, 32(1)
	sync
	ld	21, 0(22)
	cmpw	21, 21
	bne-	$+4
	isync
	cmpdi	21, 3
	mfcr	0
	rlwinm	22, 0, 3, 31, 31
	sldi	23, 22, 1
	addi	4, 23, 1
	addis	3, 2, .L170@toc@ha
	ld	3, .L170@toc@l(3) # camlStress_cae.17
	bl	camlStress_cae.check_277
.L171:
	nop
	ld	2, 72(1)
	li	26, 3
	li	27, 3
	ld	23, 32(1)
	sync
.L172:
	ldarx	28, 0, 23
	cmpd	28, 27
	bne-	.L173
	stdcx.	26, 0, 23
	bne-	.L172
.L173:
	isync
	lwsync
	cmpdi	28, 3
	mfcr	0
	rlwinm	3, 0, 3, 31, 31
	sldi	4, 3, 1
	addi	4, 4, 1
	addis	3, 2, .L174@toc@ha
	ld	3, .L174@toc@l(3) # camlStress_cae.18
	bl	camlStress_cae.check_277
.L175:
	nop
	ld	2, 72(1)
	li	7, 19
	ld	24, 32(1)
	sync
.L176:
	ldarx	8, 0, 24
	stdcx.	7, 0, 24
	bne-	.L176
	isync
	lwsync
	cmpdi	8, 3
	mfcr	0
	rlwinm	9, 0, 3, 31, 31
	sldi	10, 9, 1
	addi	4, 10, 1
	addis	3, 2, .L177@toc@ha
	ld	3, .L177@toc@l(3) # camlStress_cae.19
	bl	camlStress_cae.check_277
.L178:
	nop
	ld	2, 72(1)
	ld	25, 32(1)
	sync
	ld	16, 0(25)
	cmpw	16, 16
	bne-	$+4
	isync
	cmpdi	16, 19
	mfcr	0
	rlwinm	17, 0, 3, 31, 31
	sldi	18, 17, 1
	addi	4, 18, 1
	addis	3, 2, .L179@toc@ha
	ld	3, .L179@toc@l(3) # camlStress_cae.20
	bl	camlStress_cae.check_277
.L180:
	nop
	ld	2, 72(1)
	ld	0, 0(30)
	addi	31, 31, -16
	cmpld	31, 0
	bltl-	.L154
.L181:
	addi	21, 31, 8
	std	21, 32(1)
	li	22, 1024
	std	22, -8(21)
	li	23, 1
	std	23, 0(21)
	li	24, 3
	li	25, 1
	sync
.L182:
	ldarx	26, 0, 21
	cmpd	26, 25
	bne-	.L183
	stdcx.	24, 0, 21
	bne-	.L182
.L183:
	isync
	lwsync
	cmpdi	26, 1
	mfcr	0
	rlwinm	27, 0, 3, 31, 31
	sldi	28, 27, 1
	addi	4, 28, 1
	addis	3, 2, .L184@toc@ha
	ld	3, .L184@toc@l(3) # camlStress_cae.21
	bl	camlStress_cae.check_277
.L185:
	nop
	ld	2, 72(1)
	li	5, 3
	li	6, 1
	ld	26, 32(1)
	sync
.L186:
	ldarx	7, 0, 26
	cmpd	7, 6
	bne-	.L187
	stdcx.	5, 0, 26
	bne-	.L186
.L187:
	isync
	lwsync
	cmpdi	7, 1
	mfcr	0
	rlwinm	8, 0, 3, 31, 31
	xori	8, 8, 1
	sldi	9, 8, 1
	addi	4, 9, 1
	addis	3, 2, .L188@toc@ha
	ld	3, .L188@toc@l(3) # camlStress_cae.22
	bl	camlStress_cae.check_277
.L189:
	nop
	ld	2, 72(1)
	ld	27, 32(1)
	sync
	ld	15, 0(27)
	cmpw	15, 15
	bne-	$+4
	isync
	cmpdi	15, 3
	mfcr	0
	rlwinm	16, 0, 3, 31, 31
	sldi	17, 16, 1
	addi	4, 17, 1
	addis	3, 2, .L190@toc@ha
	ld	3, .L190@toc@l(3) # camlStress_cae.23
	bl	camlStress_cae.check_277
.L191:
	nop
	ld	2, 72(1)
	ld	0, 0(30)
	addi	31, 31, -16
	cmpld	31, 0
	bltl-	.L154
.L192:
	addi	20, 31, 8
	std	20, 32(1)
	li	21, 1024
	std	21, -8(20)
	li	22, -1
	std	22, 0(20)
	addis	23, 2, .L193@toc@ha
	ld	23, .L193@toc@l(23) # -9223372036854775807
	li	24, -1
	sync
.L194:
	ldarx	25, 0, 20
	cmpd	25, 24
	bne-	.L195
	stdcx.	23, 0, 20
	bne-	.L194
.L195:
	isync
	lwsync
	cmpdi	25, -1
	mfcr	0
	rlwinm	26, 0, 3, 31, 31
	sldi	27, 26, 1
	addi	4, 27, 1
	addis	3, 2, .L196@toc@ha
	ld	3, .L196@toc@l(3) # camlStress_cae.24
	bl	camlStress_cae.check_277
.L197:
	nop
	ld	2, 72(1)
	addis	4, 2, .L193@toc@ha
	ld	4, .L193@toc@l(4) # -9223372036854775807
	ld	28, 32(1)
	sync
	ld	5, 0(28)
	cmpw	5, 5
	bne-	$+4
	isync
	cmpd	5, 4
	mfcr	0
	rlwinm	6, 0, 3, 31, 31
	sldi	7, 6, 1
	addi	4, 7, 1
	addis	3, 2, .L198@toc@ha
	ld	3, .L198@toc@l(3) # camlStress_cae.25
	bl	camlStress_cae.check_277
.L199:
	nop
	ld	2, 72(1)
	addis	10, 2, .L200@toc@ha
	ld	10, .L200@toc@l(10) # 9223372036854775807
	addis	14, 2, .L193@toc@ha
	ld	14, .L193@toc@l(14) # -9223372036854775807
	ld	3, 32(1)
	sync
.L201:
	ldarx	15, 0, 3
	cmpd	15, 14
	bne-	.L202
	stdcx.	10, 0, 3
	bne-	.L201
.L202:
	isync
	lwsync
	cmpd	15, 14
	mfcr	0
	rlwinm	17, 0, 3, 31, 31
	sldi	18, 17, 1
	addi	4, 18, 1
	addis	3, 2, .L203@toc@ha
	ld	3, .L203@toc@l(3) # camlStress_cae.26
	bl	camlStress_cae.check_277
.L204:
	nop
	ld	2, 72(1)
	addis	21, 2, .L200@toc@ha
	ld	21, .L200@toc@l(21) # 9223372036854775807
	ld	4, 32(1)
	sync
	ld	22, 0(4)
	cmpw	22, 22
	bne-	$+4
	isync
	cmpd	22, 21
	mfcr	0
	rlwinm	23, 0, 3, 31, 31
	sldi	24, 23, 1
	addi	4, 24, 1
	addis	3, 2, .L205@toc@ha
	ld	3, .L205@toc@l(3) # camlStress_cae.27
	bl	camlStress_cae.check_277
.L206:
	nop
	ld	2, 72(1)
	addis	4, 2, .L207@toc@ha
	ld	4, .L207@toc@l(4) # camlStress_cae.30
	addis	11, 2, .L107@toc@ha
	ld	11, .L107@toc@l(11) # camlStdlib
	ld	3, 304(11)
	bl	camlStdlib__Printf.fprintf_433
.L208:
	nop
	ld	2, 72(1)
	ld	0, 0(30)
	addi	31, 31, -16
	cmpld	31, 0
	bltl-	.L154
.L209:
	addi	3, 31, 8
	std	3, 32(1)
	li	5, 1024
	std	5, -8(3)
	addis	6, 2, .L210@toc@ha
	ld	6, .L210@toc@l(6) # camlStress_cae.31
	std	6, 0(3)
	addis	5, 2, .L211@toc@ha
	ld	5, .L211@toc@l(5) # camlStress_cae.32
	li	4, 1
	mr	28, 1
	ld	1, 64(30)
	bl	caml_atomic_cas_field
	nop	
	mr	1, 28
	li	14, 4
	subfc	4, 3, 14
	addis	3, 2, .L212@toc@ha
	ld	3, .L212@toc@l(3) # camlStress_cae.33
	bl	camlStress_cae.check_277
.L213:
	nop
	ld	2, 72(1)
	addis	6, 2, .L211@toc@ha
	ld	6, .L211@toc@l(6) # camlStress_cae.32
	addis	5, 2, .L210@toc@ha
	ld	5, .L210@toc@l(5) # camlStress_cae.31
	li	4, 1
	ld	3, 32(1)
	mr	28, 1
	ld	1, 64(30)
	bl	caml_atomic_cas_field
	nop	
	mr	1, 28
	mr	4, 3
	addis	3, 2, .L214@toc@ha
	ld	3, .L214@toc@l(3) # camlStress_cae.34
	bl	camlStress_cae.check_277
.L215:
	nop
	ld	2, 72(1)
	addis	22, 2, .L211@toc@ha
	ld	22, .L211@toc@l(22) # camlStress_cae.32
	ld	6, 32(1)
	sync
	ld	23, 0(6)
	cmpw	23, 23
	bne-	$+4
	isync
	cmpd	23, 22
	mfcr	0
	rlwinm	24, 0, 3, 31, 31
	sldi	25, 24, 1
	addi	4, 25, 1
	addis	3, 2, .L216@toc@ha
	ld	3, .L216@toc@l(3) # camlStress_cae.35
	bl	camlStress_cae.check_277
.L217:
	nop
	ld	2, 72(1)
	li	3, 1
	addis	25, 2, .L218@toc@ha
	ld	25, .L218@toc@l(25) # caml_gc_full_major
	bl	caml_c_call
.L219:
	nop
	addis	4, 2, .L211@toc@ha
	ld	4, .L211@toc@l(4) # camlStress_cae.32
	ld	7, 32(1)
	sync
	ld	3, 0(7)
	cmpw	3, 3
	bne-	$+4
	isync
	mr	28, 1
	ld	1, 64(30)
	bl	caml_string_equal
	nop	
	mr	1, 28
	mr	4, 3
	addis	3, 2, .L220@toc@ha
	ld	3, .L220@toc@l(3) # camlStress_cae.36
	bl	camlStress_cae.check_277
.L221:
	nop
	ld	2, 72(1)
	addis	8, 0, 3
	addi	8, 8, 3393
	std	8, 40(1)
	li	9, 9
	std	9, 32(1)
	addis	4, 2, .L222@toc@ha
	ld	4, .L222@toc@l(4) # camlStress_cae.46
	addis	11, 2, .L107@toc@ha
	ld	11, .L107@toc@l(11) # camlStdlib
	ld	3, 304(11)
	bl	camlStdlib__Printf.fprintf_433
.L223:
	nop
	ld	2, 72(1)
	mr	5, 3
	ld	3, 32(1)
	ld	4, 40(1)
	bl	caml_apply2
.L224:
	nop
	ld	2, 72(1)
	ld	0, 0(30)
	addi	31, 31, -80
	cmpld	31, 0
	bltl-	.L154
.L225:
	addi	16, 31, 8
	addi	16, 16, 64
	std	16, 48(1)
	li	17, 1024
	std	17, -8(16)
	li	18, 1
	std	18, 0(16)
	addi	19, 16, -32
	std	19, 32(1)
	li	20, 3319
	std	20, -8(19)
	addis	21, 2, .L226@toc@ha
	ld	21, .L226@toc@l(21) # camlStress_cae.bump_387
	std	21, 0(19)
	addis	22, 2, .L120@toc@ha
	ld	22, .L120@toc@l(22) # 72057594037927941
	std	22, 8(19)
	std	16, 16(19)
	addi	4, 19, -32
	li	24, 3319
	std	24, -8(4)
	addis	25, 2, .L227@toc@ha
	ld	25, .L227@toc@l(25) # camlStress_cae.fun_604
	std	25, 0(4)
	std	22, 8(4)
	std	19, 16(4)
	li	3, 7
	bl	camlStdlib__List.init_332
.L228:
	nop
	ld	2, 72(1)
	std	3, 40(1)
	li	3, 1
	ld	4, 32(1)
	bl	camlStress_cae.bump_387
.L229:
	nop
	ld	2, 72(1)
	addis	11, 2, .L130@toc@ha
	ld	11, .L130@toc@l(11) # camlStdlib__Domain
	ld	3, 8(11)
	ld	4, 40(1)
	bl	camlStdlib__List.iter_403
.L230:
	nop
	ld	2, 72(1)
	addis	5, 0, 12
	addi	5, 5, 13569
	ld	15, 48(1)
	sync
	ld	6, 0(15)
	cmpw	6, 6
	bne-	$+4
	isync
	cmpd	6, 5
	mfcr	0
	rlwinm	7, 0, 3, 31, 31
	sldi	8, 7, 1
	addi	4, 8, 1
	addis	3, 2, .L231@toc@ha
	ld	3, .L231@toc@l(3) # camlStress_cae.47
	bl	camlStress_cae.check_277
.L232:
	nop
	ld	2, 72(1)
	addis	4, 2, .L233@toc@ha
	ld	4, .L233@toc@l(4) # camlStress_cae.50
	addis	11, 2, .L107@toc@ha
	ld	11, .L107@toc@l(11) # camlStdlib
	ld	3, 304(11)
	bl	camlStdlib__Printf.fprintf_433
.L234:
	nop
	ld	2, 72(1)
	ld	0, 0(30)
	addi	31, 31, -16
	cmpld	31, 0
	bltl-	.L154
.L235:
	addi	17, 31, 8
	std	17, 48(1)
	li	18, 1024
	std	18, -8(17)
	li	19, 1
	std	19, 0(17)
	li	4, 1
	addis	3, 0, 12
	addi	3, 3, 13571
	addis	25, 2, .L236@toc@ha
	ld	25, .L236@toc@l(25) # caml_array_make
	bl	caml_c_call
.L237:
	nop
	std	3, 56(1)
	ld	0, 0(30)
	addi	31, 31, -64
	cmpld	31, 0
	bltl-	.L154
.L238:
	addi	23, 31, 8
	addi	23, 23, 32
	std	23, 32(1)
	li	24, 3319
	std	24, -8(23)
	addis	25, 2, .L139@toc@ha
	ld	25, .L139@toc@l(25) # camlStress_cae.collect_556
	std	25, 0(23)
	addis	26, 2, .L120@toc@ha
	ld	26, .L120@toc@l(26) # 72057594037927941
	std	26, 8(23)
	ld	16, 48(1)
	std	16, 16(23)
	addi	4, 23, -32
	li	28, 3319
	std	28, -8(4)
	addis	3, 2, .L239@toc@ha
	ld	3, .L239@toc@l(3) # camlStress_cae.fun_613
	std	3, 0(4)
	std	26, 8(4)
	std	23, 16(4)
	li	3, 7
	bl	camlStdlib__List.init_332
.L240:
	nop
	ld	2, 72(1)
	std	3, 40(1)
	li	3, 1
	ld	4, 32(1)
	bl	camlStress_cae.collect_556
.L241:
	nop
	ld	2, 72(1)
	std	3, 32(1)
	addis	11, 2, .L130@toc@ha
	ld	11, .L130@toc@l(11) # camlStdlib__Domain
	ld	3, 8(11)
	ld	4, 40(1)
	bl	camlStdlib__List.map_340
.L242:
	nop
	ld	2, 72(1)
	ld	0, 0(30)
	addi	31, 31, -24
	cmpld	31, 0
	bltl-	.L154
.L243:
	addi	14, 31, 8
	li	15, 2048
	std	15, -8(14)
	ld	19, 32(1)
	std	19, 0(14)
	std	3, 8(14)
	mr	3, 14
	bl	camlStdlib__List.flatten_335
.L244:
	nop
	ld	2, 72(1)
	mr	4, 3
	ld	0, 0(30)
	addi	31, 31, -32
	cmpld	31, 0
	bltl-	.L154
.L245:
	addi	3, 31, 8
	li	18, 3319
	std	18, -8(3)
	addis	19, 2, .L246@toc@ha
	ld	19, .L246@toc@l(19) # camlStress_cae.fun_634
	std	19, 0(3)
	addis	20, 2, .L120@toc@ha
	ld	20, .L120@toc@l(20) # 72057594037927941
	std	20, 8(3)
	ld	20, 56(1)
	std	20, 16(3)
	bl	camlStdlib__List.iter_403
.L247:
	nop
	ld	2, 72(1)
	ld	28, 48(1)
	sync
	ld	21, 0(28)
	cmpw	21, 21
	bne-	$+4
	isync
	ld	3, 56(1)
	ld	22, -8(3)
	srdi	23, 22, 9
	cmpld	23, 21
	ble-	.L248
	sldi	24, 21, 2
	add	25, 3, 24
	ld	26, -4(25)
	addi	27, 26, 2
	sync
	ld	28, 0(28)
	cmpw	28, 28
	bne-	$+4
	isync
	cmpld	23, 28
	ble-	.L248
	sldi	5, 28, 2
	add	6, 3, 5
	lwsync
	std	27, -4(6)
	li	4, 3
	li	9, 1
	addis	15, 0, 12
	addi	15, 15, 13569
	cmpd	9, 15
	bgt	.L148
.L149:
	ld	17, -8(3)
	srdi	18, 17, 9
	cmpld	18, 9
	ble-	.L248
	sldi	19, 9, 2
	add	20, 3, 19
	ld	21, -4(20)
	cmpdi	21, 3
	beq	.L150
	li	4, 1
.L150:
	mr	23, 9
	addi	9, 9, 2
	addis	26, 0, 12
	addi	26, 26, 13569
	cmpd	23, 26
	beq	.L148
	ld	0, 0(30)
	cmpld	31, 0
	bltl-	.L154
.L249:
	b	.L149
.L148:
	addis	3, 2, .L250@toc@ha
	ld	3, .L250@toc@l(3) # camlStress_cae.51
	bl	camlStress_cae.check_277
.L251:
	nop
	ld	2, 72(1)
	addis	11, 2, .L109@toc@ha
	ld	11, .L109@toc@l(11) # camlStress_cae
	ld	4, 16(11)
	ld	5, 0(4)
	cmpdi	5, 1
	bne	.L147
	addis	3, 2, .L252@toc@ha
	ld	3, .L252@toc@l(3) # camlStress_cae.52
	bl	camlStdlib.print_endline_369
.L253:
	nop
	ld	2, 72(1)
	b	.L146
.L147:
	std	5, 32(1)
	addis	4, 2, .L254@toc@ha
	ld	4, .L254@toc@l(4) # camlStress_cae.57
	addis	11, 2, .L107@toc@ha
	ld	11, .L107@toc@l(11) # camlStdlib
	ld	3, 304(11)
	bl	camlStdlib__Printf.fprintf_433
.L255:
	nop
	ld	2, 72(1)
	mr	4, 3
	ld	16, 0(4)
	ld	3, 32(1)
	mtctr	16
	mr	12, 16
	bctrl
.L256:
	ld	2, 72(1)
	li	3, 3
	bl	camlStdlib.exit_480
.L257:
	nop
	ld	2, 72(1)
.L146:
	li	3, 1
	ld	11, 80(1)
	mtlr	11
	addi	1, 1, 64
	blr
.L154:
	std	2, 24(1)
	addis	12, 2, .L112@toc@ha
	ld	12, .L112@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
.L248:	bl	caml_ml_array_bound_error
	nop	
	.cfi_endproc
	.size	camlStress_cae.entry, . - camlStress_cae.entry
	.section ".data"
	.align  3
	.text
	.globl	camlStress_cae.code_end
	.type	camlStress_cae.code_end, @object
camlStress_cae.code_end:
	.long	0
	.section ".data"
	.globl	camlStress_cae.data_end
	.type	camlStress_cae.data_end, @object
	.quad	0
camlStress_cae.data_end:
	.quad	0
	.section ".data"
	.align  3
	.globl	camlStress_cae.frametable
	.type	camlStress_cae.frametable, @object
camlStress_cae.frametable:
	.quad	58
	.quad	.L257
	.short	65
	.short	0
	.balign	4
	.long	(.L258 - .) + 0x0
	.balign	8
	.quad	.L256
	.short	65
	.short	0
	.balign	4
	.long	(.L259 - .) + 0x0
	.balign	8
	.quad	.L255
	.short	65
	.short	0
	.balign	4
	.long	(.L260 - .) + 0x0
	.balign	8
	.quad	.L253
	.short	65
	.short	0
	.balign	4
	.long	(.L261 - .) + 0x0
	.balign	8
	.quad	.L251
	.short	65
	.short	0
	.balign	4
	.long	(.L262 - .) + 0x0
	.balign	8
	.quad	.L249
	.short	66
	.short	1
	.short	1
	.byte	0
	.balign	8
	.quad	.L247
	.short	65
	.short	2
	.short	48
	.short	56
	.balign	4
	.long	(.L263 - .) + 0x0
	.balign	8
	.quad	.L245
	.short	66
	.short	3
	.short	3
	.short	48
	.short	56
	.byte	1
	.byte	2
	.balign	8
	.quad	.L244
	.short	65
	.short	2
	.short	48
	.short	56
	.balign	4
	.long	(.L264 - .) + 0x0
	.balign	8
	.quad	.L243
	.short	66
	.short	4
	.short	1
	.short	32
	.short	48
	.short	56
	.byte	1
	.byte	1
	.balign	8
	.quad	.L242
	.short	65
	.short	3
	.short	32
	.short	48
	.short	56
	.balign	4
	.long	(.L265 - .) + 0x0
	.balign	8
	.quad	.L241
	.short	65
	.short	3
	.short	40
	.short	48
	.short	56
	.balign	4
	.long	(.L266 - .) + 0x0
	.balign	8
	.quad	.L240
	.short	65
	.short	3
	.short	32
	.short	48
	.short	56
	.balign	4
	.long	(.L267 - .) + 0x0
	.balign	8
	.quad	.L238
	.short	66
	.short	2
	.short	48
	.short	56
	.byte	2
	.byte	2
	.byte	2
	.balign	8
	.quad	.L237
	.short	65
	.short	1
	.short	48
	.balign	4
	.long	(.L268 - .) + 0x0
	.balign	8
	.quad	.L235
	.short	66
	.short	0
	.byte	1
	.byte	0
	.balign	8
	.quad	.L234
	.short	65
	.short	0
	.balign	4
	.long	(.L260 - .) + 0x0
	.balign	8
	.quad	.L232
	.short	65
	.short	0
	.balign	4
	.long	(.L269 - .) + 0x0
	.balign	8
	.quad	.L230
	.short	65
	.short	1
	.short	48
	.balign	4
	.long	(.L270 - .) + 0x0
	.balign	8
	.quad	.L229
	.short	65
	.short	2
	.short	40
	.short	48
	.balign	4
	.long	(.L271 - .) + 0x0
	.balign	8
	.quad	.L228
	.short	65
	.short	2
	.short	32
	.short	48
	.balign	4
	.long	(.L272 - .) + 0x0
	.balign	8
	.quad	.L225
	.short	66
	.short	0
	.byte	3
	.byte	2
	.byte	2
	.byte	0
	.balign	8
	.quad	.L224
	.short	65
	.short	0
	.balign	4
	.long	(.L273 - .) + 0x0
	.balign	8
	.quad	.L223
	.short	65
	.short	0
	.balign	4
	.long	(.L260 - .) + 0x0
	.balign	8
	.quad	.L221
	.short	65
	.short	0
	.balign	4
	.long	(.L274 - .) + 0x0
	.balign	8
	.quad	.L219
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L275 - .) + 0x0
	.balign	8
	.quad	.L217
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L276 - .) + 0x0
	.balign	8
	.quad	.L215
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L277 - .) + 0x0
	.balign	8
	.quad	.L213
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L278 - .) + 0x0
	.balign	8
	.quad	.L209
	.short	66
	.short	0
	.byte	1
	.byte	0
	.balign	8
	.quad	.L208
	.short	65
	.short	0
	.balign	4
	.long	(.L260 - .) + 0x0
	.balign	8
	.quad	.L206
	.short	65
	.short	0
	.balign	4
	.long	(.L279 - .) + 0x0
	.balign	8
	.quad	.L204
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L280 - .) + 0x0
	.balign	8
	.quad	.L199
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L281 - .) + 0x0
	.balign	8
	.quad	.L197
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L282 - .) + 0x0
	.balign	8
	.quad	.L192
	.short	66
	.short	0
	.byte	1
	.byte	0
	.balign	8
	.quad	.L191
	.short	65
	.short	0
	.balign	4
	.long	(.L283 - .) + 0x0
	.balign	8
	.quad	.L189
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L284 - .) + 0x0
	.balign	8
	.quad	.L185
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L285 - .) + 0x0
	.balign	8
	.quad	.L181
	.short	66
	.short	0
	.byte	1
	.byte	0
	.balign	8
	.quad	.L180
	.short	65
	.short	0
	.balign	4
	.long	(.L286 - .) + 0x0
	.balign	8
	.quad	.L178
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L287 - .) + 0x0
	.balign	8
	.quad	.L175
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L288 - .) + 0x0
	.balign	8
	.quad	.L171
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L289 - .) + 0x0
	.balign	8
	.quad	.L169
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L290 - .) + 0x0
	.balign	8
	.quad	.L165
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L291 - .) + 0x0
	.balign	8
	.quad	.L163
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L292 - .) + 0x0
	.balign	8
	.quad	.L159
	.short	66
	.short	0
	.byte	1
	.byte	0
	.balign	8
	.quad	.L158
	.short	65
	.short	0
	.balign	4
	.long	(.L260 - .) + 0x0
	.balign	8
	.quad	.L155
	.short	66
	.short	0
	.byte	1
	.byte	0
	.balign	8
	.quad	.L142
	.short	34
	.short	1
	.short	3
	.byte	1
	.byte	3
	.balign	8
	.quad	.L137
	.short	34
	.short	2
	.short	1
	.short	3
	.byte	1
	.byte	1
	.balign	8
	.quad	.L126
	.short	34
	.short	1
	.short	3
	.byte	0
	.balign	8
	.quad	.L122
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L293 - .) + 0x0
	.balign	8
	.quad	.L119
	.short	50
	.short	1
	.short	32
	.byte	1
	.byte	2
	.balign	8
	.quad	.L111
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L260 - .) + 0x0
	.balign	8
	.quad	.L108
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L260 - .) + 0x0
	.balign	8
	.quad	.L105
	.short	50
	.short	1
	.short	1
	.byte	0
	.balign	8
	.balign	4
.L293:
	.long	(.L295 - .) + 0x0
	.long	0x1f81858
	.balign	4
.L260:
	.long	(.L297 - .) + 0x0
	.long	0xf84518
	.balign	4
.L273:
	.long	(.L298 - .) + 0x0
	.long	0x1b80a68
	.balign	4
.L287:
	.long	(.L298 - .) + 0x0
	.long	0xd809c0
	.balign	4
.L280:
	.long	(.L298 - .) + 0x0
	.long	0x1280a00
	.balign	4
.L277:
	.long	(.L298 - .) + 0x0
	.long	0x17809b0
	.balign	4
.L271:
	.long	(.L298 - .) + 0x0
	.long	0x2180848
	.balign	4
.L270:
	.long	(.L298 - .) + 0x0
	.long	0x22008d0
	.balign	4
.L266:
	.long	(.L298 - .) + 0x0
	.long	0x2b034b0
	.balign	4
.L258:
	.long	(.L298 - .) + 0x0
	.long	0x320d9e0
	.balign	4
.L263:
	.long	(.L298 - .) + 0x0
	.long	0x2c00998
	.balign	4
.L261:
	.long	(.L298 - .) + 0x0
	.long	0x3186170
	.balign	4
.L278:
	.long	(.L298 - .) + 0x0
	.long	0x17009e8
	.balign	4
.L272:
	.long	(.L298 - .) + 0x0
	.long	0x2102e00
	.balign	4
.L285:
	.long	(.L298 - .) + 0x0
	.long	0xf009e0
	.balign	4
.L282:
	.long	(.L298 - .) + 0x0
	.long	0x11809f0
	.balign	4
.L281:
	.long	(.L298 - .) + 0x0
	.long	0x1200990
	.balign	4
.L267:
	.long	(.L298 - .) + 0x18000000
	.long	0x2a12ca9
	.balign	4
.L292:
	.long	(.L298 - .) + 0x0
	.long	0xb009e8
	.balign	4
.L291:
	.long	(.L298 - .) + 0x0
	.long	0xb80958
	.balign	4
.L289:
	.long	(.L298 - .) + 0x0
	.long	0xc809b0
	.balign	4
.L283:
	.long	(.L298 - .) + 0x0
	.long	0x1000950
	.balign	4
.L269:
	.long	(.L298 - .) + 0x0
	.long	0x2280a00
	.balign	4
.L290:
	.long	(.L298 - .) + 0x0
	.long	0xc00a28
	.balign	4
.L288:
	.long	(.L298 - .) + 0x0
	.long	0xd009d0
	.balign	4
.L284:
	.long	(.L298 - .) + 0x0
	.long	0xf80a18
	.balign	4
.L279:
	.long	(.L298 - .) + 0x0
	.long	0x1300988
	.balign	4
.L274:
	.long	(.L298 - .) + 0x0
	.long	0x1900980
	.balign	4
.L264:
	.long	(.L298 - .) + 0x0
	.long	0x2b831c8
	.balign	4
.L275:
	.long	(.L298 - .) + 0x0
	.long	0x1880890
	.balign	4
.L276:
	.long	(.L298 - .) + 0x0
	.long	0x1800948
	.balign	4
.L268:
	.long	(.L298 - .) + 0x0
	.long	0x26035a8
	.balign	4
.L286:
	.long	(.L298 - .) + 0x0
	.long	0xe00960
	.balign	4
.L265:
	.long	(.L298 - .) + 0x0
	.long	0x2b885c0
	.balign	4
.L262:
	.long	(.L298 - .) + 0x0
	.long	0x3000978
	.balign	4
.L259:
	.long	(.L298 - .) + 0x0
	.long	0x32035a0
.L294:
	.byte	47,114,111,111,116,47,97,98,47,115,116,114,101,115,115,95
	.byte	99,97,101,46,109,108,0
.L296:
	.byte	112,114,105,110,116,102,46,109,108,0
	.balign	4
.L295:
	.long	(.L294 - .) + 0x0
	.byte	83,116,114,101,115,115,95,99,97,101,46,98,117,109,112,0
	.balign	4
.L297:
	.long	(.L296 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.balign	4
.L298:
	.long	(.L294 - .) + 0x0
	.byte	83,116,114,101,115,115,95,99,97,101,0
	.balign	8
	.size	camlStress_cae.frametable, . - camlStress_cae.frametable
 .section ".toc","aw"
.L184:	.quad	camlStress_cae.21
.L222:	.quad	camlStress_cae.46
.L106:	.quad	camlStress_cae.6
.L227:	.quad	camlStress_cae.fun_604
.L196:	.quad	camlStress_cae.24
.L170:	.quad	camlStress_cae.17
.L198:	.quad	camlStress_cae.25
.L157:	.quad	camlStress_cae.13
.L246:	.quad	camlStress_cae.fun_634
.L220:	.quad	camlStress_cae.36
.L188:	.quad	camlStress_cae.22
.L200:	.quad	9223372036854775807
.L107:	.quad	camlStdlib
.L121:	.quad	camlStress_cae.go_390
.L231:	.quad	camlStress_cae.47
.L143:	.quad	camlStress_cae.fun_625
.L239:	.quad	camlStress_cae.fun_613
.L233:	.quad	camlStress_cae.50
.L164:	.quad	camlStress_cae.15
.L203:	.quad	camlStress_cae.26
.L174:	.quad	camlStress_cae.18
.L207:	.quad	camlStress_cae.30
.L250:	.quad	camlStress_cae.51
.L211:	.quad	camlStress_cae.32
.L210:	.quad	camlStress_cae.31
.L177:	.quad	camlStress_cae.19
.L179:	.quad	camlStress_cae.20
.L156:	.quad	camlStress_cae.58
.L218:	.quad	caml_gc_full_major
.L190:	.quad	camlStress_cae.23
.L226:	.quad	camlStress_cae.bump_387
.L139:	.quad	camlStress_cae.collect_556
.L120:	.quad	72057594037927941
.L131:	.quad	camlStdlib__Domain.spawn_790
.L112:	.quad	caml_call_gc
.L236:	.quad	caml_array_make
.L193:	.quad	-9223372036854775807
.L252:	.quad	camlStress_cae.52
.L254:	.quad	camlStress_cae.57
.L168:	.quad	camlStress_cae.16
.L216:	.quad	camlStress_cae.35
.L205:	.quad	camlStress_cae.27
.L130:	.quad	camlStdlib__Domain
.L212:	.quad	camlStress_cae.33
.L162:	.quad	camlStress_cae.14
.L110:	.quad	camlStress_cae.10
.L109:	.quad	camlStress_cae
.L214:	.quad	camlStress_cae.34
	.section .note.GNU-stack,"",%progbits
