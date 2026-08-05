	.file	""
	.abiversion 2
	.section ".data"
	.globl	camlComb_group.data_begin
	.type	camlComb_group.data_begin, @object
camlComb_group.data_begin:
	.text
	.globl	camlComb_group.code_begin
	.type	camlComb_group.code_begin, @object
camlComb_group.code_begin:
	.section ".data"
	.align  3
	.section ".data"
	.align  3
	.quad	4087
camlComb_group.42:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlComb_group.check_275
	.section ".data"
	.align  3
	.quad	3063
camlComb_group.41:
	.quad	camlComb_group.mk_323
	.quad	72057594037927941
	.section ".data"
	.align  3
	.quad	3063
camlComb_group.40:
	.quad	camlComb_group.mk2_329
	.quad	72057594037927941
	.section ".data"
	.align  3
	.quad	3063
camlComb_group.39:
	.quad	camlComb_group.contents_335
	.quad	72057594037927941
	.section ".data"
	.align  3
	.quad	3063
camlComb_group.38:
	.quad	camlComb_group.overlap_399
	.quad	72057594037927941
	.section ".data"
	.align  3
	.quad	3063
camlComb_group.37:
	.quad	camlComb_group.more_405
	.quad	72057594037927941
	.section ".data"
	.align  3
	.quad	3063
camlComb_group.36:
	.quad	camlComb_group.clobber_410
	.quad	72057594037927941
	.section ".data"
	.align  3
	.quad	4087
camlComb_group.35:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlComb_group.survives_501
	.section ".data"
	.align  3
	.quad	11008
	.globl	camlComb_group
	.type	camlComb_group, @object
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
	.section ".data"
	.align  3
	.globl	camlComb_group.gc_roots
	.type	camlComb_group.gc_roots, @object
camlComb_group.gc_roots:
	.quad	camlComb_group
	.quad	0
	.text
	.align	2
.L103:	mflr	28
	li	27, 38
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L104
	.globl	camlComb_group.check_275
	.type	camlComb_group.check_275, @function
camlComb_group.check_275:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlComb_group.check_275, . - 0b
	ld	11, 40(30)
	addi	11, 11, 360
	cmpld	1, 11
	ble-	.L103
.L104:
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -48
	.cfi_adjust_cfa_offset	48
.L102:
	ld	0, 0(30)
	cmpld	31, 0
	bltl-	.L105
.L106:
	cmpdi	4, 1
	beq	.L101
	ld	11, 64(1)
	mtlr	11
	li	3, 1
	addi	1, 1, 48
	blr
.L101:
	addis	11, 2, .L107@toc@ha
	ld	11, .L107@toc@l(11) # camlComb_group
	ld	5, 0(11)
	ld	6, 0(5)
	addi	7, 6, 2
	lwsync
	std	7, 0(5)
	ld	9, 0(5)
	cmpdi	9, 41
	bge	.L100
	addis	4, 2, .L108@toc@ha
	ld	4, .L108@toc@l(4) # camlComb_group.6
	std	3, 32(1)
	addis	11, 2, .L109@toc@ha
	ld	11, .L109@toc@l(11) # camlStdlib
	ld	3, 304(11)
	bl	camlStdlib__Printf.fprintf_433
.L110:
	nop
	ld	2, 56(1)
	mr	4, 3
	ld	18, 0(4)
	ld	3, 32(1)
	mtctr	18
	mr	12, 18
	ld	11, 64(1)
	mtlr	11
	addi	1, 1, 48
	bctr
.L100:
	ld	11, 64(1)
	mtlr	11
	li	3, 1
	addi	1, 1, 48
	blr
.L105:
	std	2, 24(1)
	addis	12, 2, .L111@toc@ha
	ld	12, .L111@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlComb_group.check_275, . - camlComb_group.check_275
	.text
	.align	2
	.globl	camlComb_group.mk_323
	.type	camlComb_group.mk_323, @function
camlComb_group.mk_323:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlComb_group.mk_323, . - 0b
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -32
	.cfi_adjust_cfa_offset	32
.L112:
	ld	0, 0(30)
	addi	31, 31, -104
	cmpld	31, 0
	bltl-	.L113
.L114:
	addi	4, 31, 88
	ld	11, 48(1)
	mtlr	11
	addi	7, 4, -32
	addi	15, 7, -16
	li	5, 2048
	std	5, -8(4)
	std	3, 0(4)
	li	19, 3072
	addi	17, 3, 10
	li	16, 1024
	addi	14, 3, 8
	addi	10, 3, 6
	addi	9, 3, 4
	li	8, 3072
	addi	6, 3, 2
	addi	3, 15, -32
	std	6, 8(4)
	std	8, -8(7)
	std	9, 0(7)
	std	10, 8(7)
	std	14, 16(7)
	std	16, -8(15)
	std	17, 0(15)
	std	19, -8(3)
	std	4, 0(3)
	std	7, 8(3)
	std	15, 16(3)
	addi	1, 1, 32
	blr
.L113:
	std	2, 24(1)
	addis	12, 2, .L111@toc@ha
	ld	12, .L111@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlComb_group.mk_323, . - camlComb_group.mk_323
	.text
	.align	2
	.globl	camlComb_group.mk2_329
	.type	camlComb_group.mk2_329, @function
camlComb_group.mk2_329:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlComb_group.mk2_329, . - 0b
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -32
	.cfi_adjust_cfa_offset	32
.L115:
	ld	0, 0(30)
	addi	31, 31, -128
	cmpld	31, 0
	bltl-	.L116
.L117:
	addi	4, 31, 120
	ld	11, 48(1)
	mtlr	11
	addi	6, 4, -56
	addi	17, 6, -24
	li	5, 1024
	std	5, -8(4)
	std	3, 0(4)
	li	22, 3072
	addi	20, 3, 16
	addi	19, 3, 14
	li	18, 2048
	addi	16, 3, 12
	addi	15, 3, 10
	addi	14, 3, 8
	addi	10, 3, 6
	addi	9, 3, 4
	addi	8, 3, 2
	addi	3, 17, -32
	li	7, 6144
	std	7, -8(6)
	std	8, 0(6)
	std	9, 8(6)
	std	10, 16(6)
	std	14, 24(6)
	std	15, 32(6)
	std	16, 40(6)
	std	18, -8(17)
	std	19, 0(17)
	std	20, 8(17)
	std	22, -8(3)
	std	17, 0(3)
	std	6, 8(3)
	std	4, 16(3)
	addi	1, 1, 32
	blr
.L116:
	std	2, 24(1)
	addis	12, 2, .L111@toc@ha
	ld	12, .L111@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlComb_group.mk2_329, . - camlComb_group.mk2_329
	.text
	.align	2
.L123:	mflr	28
	li	27, 40
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L124
	.globl	camlComb_group.contents_335
	.type	camlComb_group.contents_335, @function
camlComb_group.contents_335:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlComb_group.contents_335, . - 0b
	ld	11, 40(30)
	addi	11, 11, 376
	cmpld	1, 11
	ble-	.L123
.L124:
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -64
	.cfi_adjust_cfa_offset	64
.L122:
	std	3, 56(1)
	bl	camlComb_group.mk_323
.L125:
	nop
	ld	2, 72(1)
	ld	6, 0(3)
	ld	17, 56(1)
	ld	7, -8(6)
	ld	5, 8(3)
	cmpldi	7, 1023
	ble-	.L126
	ld	8, 0(6)
	std	5, 40(1)
	cmpd	8, 17
	mfcr	0
	rlwinm	9, 0, 3, 31, 31
	sldi	10, 9, 1
	addi	4, 10, 1
	std	6, 32(1)
	std	3, 48(1)
	addis	3, 2, .L127@toc@ha
	ld	3, .L127@toc@l(3) # camlComb_group.7
	bl	camlComb_group.check_275
.L128:
	nop
	ld	2, 72(1)
	ld	19, 32(1)
	ld	18, 56(1)
	ld	17, -8(19)
	addi	16, 18, 2
	cmpldi	17, 2047
	ble-	.L126
	ld	18, 8(19)
	addis	3, 2, .L129@toc@ha
	ld	3, .L129@toc@l(3) # camlComb_group.8
	cmpd	18, 16
	mfcr	0
	rlwinm	19, 0, 3, 31, 31
	sldi	20, 19, 1
	addi	4, 20, 1
	bl	camlComb_group.check_275
.L130:
	nop
	ld	2, 72(1)
	ld	21, 40(1)
	ld	20, 56(1)
	ld	24, -8(21)
	addi	23, 20, 4
	cmpldi	24, 1023
	ble-	.L126
	ld	25, 0(21)
	addis	3, 2, .L131@toc@ha
	ld	3, .L131@toc@l(3) # camlComb_group.9
	cmpd	25, 23
	mfcr	0
	rlwinm	26, 0, 3, 31, 31
	sldi	27, 26, 1
	addi	4, 27, 1
	bl	camlComb_group.check_275
.L132:
	nop
	ld	2, 72(1)
	ld	23, 40(1)
	ld	22, 56(1)
	ld	5, -8(23)
	addi	4, 22, 6
	cmpldi	5, 2047
	ble-	.L126
	ld	6, 8(23)
	addis	3, 2, .L133@toc@ha
	ld	3, .L133@toc@l(3) # camlComb_group.10
	cmpd	6, 4
	mfcr	0
	rlwinm	7, 0, 3, 31, 31
	sldi	8, 7, 1
	addi	4, 8, 1
	bl	camlComb_group.check_275
.L134:
	nop
	ld	2, 72(1)
	ld	25, 40(1)
	ld	24, 56(1)
	ld	15, -8(25)
	addi	14, 24, 8
	cmpldi	15, 3071
	ble-	.L126
	ld	16, 16(25)
	addis	3, 2, .L135@toc@ha
	ld	3, .L135@toc@l(3) # camlComb_group.11
	cmpd	16, 14
	mfcr	0
	rlwinm	17, 0, 3, 31, 31
	sldi	18, 17, 1
	addi	4, 18, 1
	bl	camlComb_group.check_275
.L136:
	nop
	ld	2, 72(1)
	ld	27, 48(1)
	ld	26, 56(1)
	ld	22, 16(27)
	addi	21, 26, 10
	ld	23, -8(22)
	addis	3, 2, .L137@toc@ha
	ld	3, .L137@toc@l(3) # camlComb_group.12
	cmpldi	23, 1023
	ble-	.L126
	ld	24, 0(22)
	cmpd	24, 21
	mfcr	0
	rlwinm	25, 0, 3, 31, 31
	sldi	26, 25, 1
	addi	4, 26, 1
	bl	camlComb_group.check_275
.L138:
	nop
	ld	2, 72(1)
	ld	3, 56(1)
	bl	camlComb_group.mk2_329
.L139:
	nop
	ld	2, 72(1)
	ld	6, 16(3)
	ld	5, 0(3)
	ld	7, -8(6)
	ld	4, 8(3)
	ld	3, 56(1)
	cmpldi	7, 1023
	ble-	.L126
	ld	8, 0(6)
	std	4, 40(1)
	cmpd	8, 3
	mfcr	0
	rlwinm	9, 0, 3, 31, 31
	sldi	10, 9, 1
	addi	4, 10, 1
	addis	3, 2, .L140@toc@ha
	ld	3, .L140@toc@l(3) # camlComb_group.13
	std	5, 32(1)
	bl	camlComb_group.check_275
.L141:
	nop
	ld	2, 72(1)
	ld	5, 40(1)
	ld	4, 56(1)
	ld	17, -8(5)
	addi	16, 4, 2
	cmpldi	17, 1023
	ble-	.L126
	ld	18, 0(5)
	cmpd	18, 16
	bne	.L121
	cmpldi	17, 6143
	ble-	.L126
	ld	21, 40(5)
	addi	19, 4, 12
	cmpd	21, 19
	mfcr	0
	rlwinm	22, 0, 3, 31, 31
	sldi	23, 22, 1
	addi	4, 23, 1
	b	.L120
.L121:
	li	4, 1
.L120:
	addis	3, 2, .L142@toc@ha
	ld	3, .L142@toc@l(3) # camlComb_group.14
	bl	camlComb_group.check_275
.L143:
	nop
	ld	2, 72(1)
	ld	7, 32(1)
	ld	6, 56(1)
	ld	3, -8(7)
	addi	28, 6, 14
	cmpldi	3, 1023
	ble-	.L126
	ld	4, 0(7)
	cmpd	4, 28
	bne	.L119
	cmpldi	3, 2047
	ble-	.L126
	ld	7, 8(7)
	addi	5, 6, 16
	cmpd	7, 5
	mfcr	0
	rlwinm	8, 0, 3, 31, 31
	sldi	9, 8, 1
	addi	4, 9, 1
	b	.L118
.L119:
	li	4, 1
.L118:
	addis	3, 2, .L144@toc@ha
	ld	3, .L144@toc@l(3) # camlComb_group.15
	addis	12, 2, .L145@toc@ha
	ld	12, .L145@toc@l(12) # camlComb_group.check_275
	mtctr	12
	ld	11, 80(1)
	mtlr	11
	addi	1, 1, 64
	bctr
.L126:	bl	caml_ml_array_bound_error
	nop	
	.cfi_endproc
	.size	camlComb_group.contents_335, . - camlComb_group.contents_335
	.text
	.align	2
.L151:	mflr	28
	li	27, 40
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L152
	.globl	camlComb_group.overlap_399
	.type	camlComb_group.overlap_399, @function
camlComb_group.overlap_399:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlComb_group.overlap_399, . - 0b
	ld	11, 40(30)
	addi	11, 11, 376
	cmpld	1, 11
	ble-	.L151
.L152:
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -64
	.cfi_adjust_cfa_offset	64
.L150:
	std	3, 48(1)
	bl	camlComb_group.mk_323
.L153:
	nop
	ld	2, 72(1)
	ld	7, 0(3)
	ld	6, 8(3)
	ld	8, -8(7)
	addis	9, 0, 1
	addi	9, 9, 21845
	cmpldi	8, 1023
	ble-	.L154
	ld	5, 16(3)
	lwsync
	std	9, 0(7)
	ld	10, -8(6)
	addis	14, 0, 1
	addi	14, 14, 30583
	cmpldi	10, 1023
	ble-	.L154
	lwsync
	std	14, 0(6)
	ld	15, -8(5)
	addis	16, 0, 2
	addi	16, 16, -26215
	cmpldi	15, 1023
	ble-	.L154
	lwsync
	std	16, 0(5)
	ld	19, 0(7)
	addis	17, 0, 1
	addi	17, 17, 21845
	std	5, 32(1)
	std	6, 40(1)
	cmpd	19, 17
	bne	.L149
	ld	28, 48(1)
	cmpldi	8, 2047
	ble-	.L154
	ld	22, 8(7)
	addi	20, 28, 2
	cmpd	22, 20
	mfcr	0
	rlwinm	23, 0, 3, 31, 31
	sldi	24, 23, 1
	addi	4, 24, 1
	b	.L148
.L149:
	li	4, 1
.L148:
	addis	3, 2, .L155@toc@ha
	ld	3, .L155@toc@l(3) # camlComb_group.16
	bl	camlComb_group.check_275
.L156:
	nop
	ld	2, 72(1)
	ld	7, 40(1)
	addis	3, 0, 1
	addi	3, 3, 30583
	ld	4, -8(7)
	cmpldi	4, 1023
	ble-	.L154
	ld	5, 0(7)
	cmpd	5, 3
	bne	.L147
	ld	5, 48(1)
	cmpldi	4, 2047
	ble-	.L154
	ld	8, 8(7)
	addi	6, 5, 6
	cmpd	8, 6
	bne	.L147
	cmpldi	4, 3071
	ble-	.L154
	ld	14, 16(7)
	addi	9, 5, 8
	cmpd	14, 9
	mfcr	0
	rlwinm	15, 0, 3, 31, 31
	sldi	16, 15, 1
	addi	4, 16, 1
	b	.L146
.L147:
	li	4, 1
.L146:
	addis	3, 2, .L157@toc@ha
	ld	3, .L157@toc@l(3) # camlComb_group.17
	bl	camlComb_group.check_275
.L158:
	nop
	ld	2, 72(1)
	ld	5, 32(1)
	addis	21, 0, 2
	addi	21, 21, -26215
	ld	22, -8(5)
	addis	3, 2, .L159@toc@ha
	ld	3, .L159@toc@l(3) # camlComb_group.18
	cmpldi	22, 1023
	ble-	.L154
	ld	23, 0(5)
	cmpd	23, 21
	mfcr	0
	rlwinm	24, 0, 3, 31, 31
	sldi	25, 24, 1
	addi	4, 25, 1
	addis	12, 2, .L145@toc@ha
	ld	12, .L145@toc@l(12) # camlComb_group.check_275
	mtctr	12
	ld	11, 80(1)
	mtlr	11
	addi	1, 1, 64
	bctr
.L154:	bl	caml_ml_array_bound_error
	nop	
	.cfi_endproc
	.size	camlComb_group.overlap_399, . - camlComb_group.overlap_399
	.text
	.align	2
	.globl	camlComb_group.more_405
	.type	camlComb_group.more_405, @function
camlComb_group.more_405:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlComb_group.more_405, . - 0b
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -32
	.cfi_adjust_cfa_offset	32
.L160:
	ld	0, 0(30)
	addi	31, 31, -80
	cmpld	31, 0
	bltl-	.L161
.L162:
	addi	4, 31, 64
	ld	11, 48(1)
	mtlr	11
	addi	7, 4, -32
	li	5, 2048
	std	5, -8(4)
	std	3, 0(4)
	li	16, 2048
	addi	14, 3, 8
	addi	10, 3, 6
	addi	9, 3, 4
	li	8, 3072
	addi	6, 3, 2
	addi	3, 7, -24
	std	6, 8(4)
	std	8, -8(7)
	std	9, 0(7)
	std	10, 8(7)
	std	14, 16(7)
	std	16, -8(3)
	std	4, 0(3)
	std	7, 8(3)
	addi	1, 1, 32
	blr
.L161:
	std	2, 24(1)
	addis	12, 2, .L111@toc@ha
	ld	12, .L111@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlComb_group.more_405, . - camlComb_group.more_405
	.text
	.align	2
.L170:	mflr	28
	li	27, 42
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L171
	.globl	camlComb_group.clobber_410
	.type	camlComb_group.clobber_410, @function
camlComb_group.clobber_410:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlComb_group.clobber_410, . - 0b
	ld	11, 40(30)
	addi	11, 11, 392
	cmpld	1, 11
	ble-	.L170
.L171:
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -80
	.cfi_adjust_cfa_offset	80
.L169:
	std	3, 56(1)
	bl	camlComb_group.mk_323
.L172:
	nop
	ld	2, 88(1)
	ld	6, 0(3)
	ld	5, 8(3)
	li	7, 1
	std	5, 40(1)
	std	6, 48(1)
	std	3, 32(1)
	cmpdi	7, 31
	bgt	.L167
	std	7, 64(1)
.L168:
	ld	27, 56(1)
	add	10, 27, 7
	addi	3, 10, -1
	bl	camlComb_group.more_405
.L173:
	nop
	ld	2, 88(1)
	ld	7, 64(1)
	mr	16, 7
	addi	7, 7, 2
	std	7, 64(1)
	cmpdi	16, 31
	beq	.L167
	ld	0, 0(30)
	cmpld	31, 0
	bltl-	.L174
.L175:
	b	.L168
.L167:
	ld	3, 48(1)
	ld	4, 56(1)
	ld	19, -8(3)
	cmpldi	19, 1023
	ble-	.L176
	ld	20, 0(3)
	cmpd	20, 4
	bne	.L166
	cmpldi	19, 2047
	ble-	.L176
	ld	23, 8(3)
	addi	21, 4, 2
	cmpd	23, 21
	mfcr	0
	rlwinm	24, 0, 3, 31, 31
	sldi	25, 24, 1
	addi	4, 25, 1
	b	.L165
.L166:
	li	4, 1
.L165:
	addis	3, 2, .L177@toc@ha
	ld	3, .L177@toc@l(3) # camlComb_group.19
	bl	camlComb_group.check_275
.L178:
	nop
	ld	2, 88(1)
	ld	8, 40(1)
	ld	7, 56(1)
	ld	5, -8(8)
	addi	4, 7, 4
	cmpldi	5, 1023
	ble-	.L176
	ld	6, 0(8)
	cmpd	6, 4
	bne	.L164
	cmpldi	5, 3071
	ble-	.L176
	ld	9, 16(8)
	addi	7, 7, 8
	cmpd	9, 7
	mfcr	0
	rlwinm	10, 0, 3, 31, 31
	sldi	14, 10, 1
	addi	4, 14, 1
	b	.L163
.L164:
	li	4, 1
.L163:
	addis	3, 2, .L179@toc@ha
	ld	3, .L179@toc@l(3) # camlComb_group.20
	bl	camlComb_group.check_275
.L180:
	nop
	ld	2, 88(1)
	ld	8, 32(1)
	ld	7, 56(1)
	ld	20, 16(8)
	addi	19, 7, 10
	ld	21, -8(20)
	addis	3, 2, .L181@toc@ha
	ld	3, .L181@toc@l(3) # camlComb_group.21
	cmpldi	21, 1023
	ble-	.L176
	ld	22, 0(20)
	cmpd	22, 19
	mfcr	0
	rlwinm	23, 0, 3, 31, 31
	sldi	24, 23, 1
	addi	4, 24, 1
	addis	12, 2, .L145@toc@ha
	ld	12, .L145@toc@l(12) # camlComb_group.check_275
	mtctr	12
	ld	11, 96(1)
	mtlr	11
	addi	1, 1, 80
	bctr
.L174:
	std	2, 24(1)
	addis	12, 2, .L111@toc@ha
	ld	12, .L111@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
.L176:	bl	caml_ml_array_bound_error
	nop	
	.cfi_endproc
	.size	camlComb_group.clobber_410, . - camlComb_group.clobber_410
	.text
	.align	2
.L184:	mflr	28
	li	27, 38
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L185
	.globl	camlComb_group.survives_501
	.type	camlComb_group.survives_501, @function
camlComb_group.survives_501:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlComb_group.survives_501, . - 0b
	ld	11, 40(30)
	addi	11, 11, 360
	cmpld	1, 11
	ble-	.L184
.L185:
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -48
	.cfi_adjust_cfa_offset	48
.L183:
	std	3, 32(1)
	mr	3, 4
	bl	camlComb_group.mk_323
.L186:
	nop
	ld	2, 56(1)
	addis	11, 2, .L107@toc@ha
	ld	11, .L107@toc@l(11) # camlComb_group
	ld	7, 64(11)
	ld	15, 32(1)
	ld	8, -8(7)
	andi.	6, 15, 127
	sldi	10, 6, 2
	add	14, 7, 10
	srdi	9, 8, 9
	cmpld	9, 6
	ble-	.L187
	mr	4, 3
	addi	3, 14, -4
	mr	28, 1
	ld	1, 64(30)
	bl	caml_modify
	nop	
	mr	1, 28
	addis	11, 2, .L107@toc@ha
	ld	11, .L107@toc@l(11) # camlComb_group
	ld	18, 64(11)
	addi	16, 15, 64
	andi.	17, 16, 127
	ld	19, -8(18)
	sldi	21, 17, 2
	add	22, 18, 21
	srdi	20, 19, 9
	cmpld	20, 17
	ble-	.L187
	ld	23, -4(22)
	ld	24, 0(23)
	ld	25, -8(24)
	srdi	26, 25, 9
	ori	27, 26, 1
	cmpdi	27, 1
	ble	.L182
	cmpldi	25, 2047
	ble-	.L187
	ld	7, 8(24)
	cmpldi	25, 1023
	ble-	.L187
	ld	5, 0(24)
	ld	3, 8(23)
	subfc	8, 5, 7
	addi	9, 8, 1
	cmpdi	9, 3
	mfcr	0
	rlwinm	10, 0, 3, 31, 31
	sldi	14, 10, 1
	addi	4, 14, 1
	std	3, 32(1)
	addis	3, 2, .L188@toc@ha
	ld	3, .L188@toc@l(3) # camlComb_group.24
	std	23, 40(1)
	bl	camlComb_group.check_275
.L189:
	nop
	ld	2, 56(1)
	ld	10, 32(1)
	addis	3, 2, .L190@toc@ha
	ld	3, .L190@toc@l(3) # camlComb_group.25
	ld	17, -8(10)
	cmpldi	17, 1023
	ble-	.L187
	ld	18, 0(10)
	cmpldi	17, 3071
	ble-	.L187
	ld	20, 16(10)
	subfc	21, 18, 20
	addi	22, 21, 1
	cmpdi	22, 5
	mfcr	0
	rlwinm	23, 0, 3, 31, 31
	sldi	24, 23, 1
	addi	4, 24, 1
	bl	camlComb_group.check_275
.L191:
	nop
	ld	2, 56(1)
	ld	14, 40(1)
	ld	27, 16(14)
	ld	28, -8(27)
	srdi	3, 28, 9
	ori	4, 3, 1
	cmpdi	4, 3
	mfcr	0
	rlwinm	5, 0, 3, 31, 31
	sldi	6, 5, 1
	addi	4, 6, 1
	addis	3, 2, .L192@toc@ha
	ld	3, .L192@toc@l(3) # camlComb_group.26
	addis	12, 2, .L145@toc@ha
	ld	12, .L145@toc@l(12) # camlComb_group.check_275
	mtctr	12
	ld	11, 64(1)
	mtlr	11
	addi	1, 1, 48
	bctr
.L182:
	ld	11, 64(1)
	mtlr	11
	li	3, 1
	addi	1, 1, 48
	blr
.L187:	bl	caml_ml_array_bound_error
	nop	
	.cfi_endproc
	.size	camlComb_group.survives_501, . - camlComb_group.survives_501
	.section ".data"
	.align  3
	.quad	2044
camlComb_group.9:
	.byte	98,46,40,48,41
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	2044
camlComb_group.8:
	.byte	97,46,40,49,41
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	2044
camlComb_group.7:
	.byte	97,46,40,48,41
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	2816
camlComb_group.6:
	.quad	camlComb_group.4
	.quad	camlComb_group.5
	.section ".data"
	.align  3
	.quad	3068
camlComb_group.5:
	.byte	70,65,73,76,32,37,115,10
	.space	7
	.byte	7
	.section ".data"
	.align  3
	.quad	2827
camlComb_group.4:
	.quad	camlComb_group.1
	.quad	camlComb_group.3
	.section ".data"
	.align  3
	.quad	2816
camlComb_group.34:
	.quad	camlComb_group.32
	.quad	camlComb_group.33
	.section ".data"
	.align  3
	.quad	5116
camlComb_group.33:
	.byte	99,111,109,98,95,103,114,111,117,112,58,32,37,100,32,102
	.byte	97,105,108,117,114,101,115,10
	.space	7
	.byte	7
	.section ".data"
	.align  3
	.quad	2827
camlComb_group.32:
	.quad	camlComb_group.28
	.quad	camlComb_group.31
	.section ".data"
	.align  3
	.quad	4868
camlComb_group.31:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlComb_group.30
	.section ".data"
	.align  3
	.quad	2827
camlComb_group.30:
	.quad	camlComb_group.29
	.quad	1
	.section ".data"
	.align  3
	.quad	2818
camlComb_group.3:
	.quad	1
	.quad	camlComb_group.2
	.section ".data"
	.align  3
	.quad	3068
camlComb_group.29:
	.byte	32,102,97,105,108,117,114,101,115,10
	.space	5
	.byte	5
	.section ".data"
	.align  3
	.quad	3068
camlComb_group.28:
	.byte	99,111,109,98,95,103,114,111,117,112,58,32
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	3068
camlComb_group.27:
	.byte	99,111,109,98,95,103,114,111,117,112,58,32,111,107
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	3068
camlComb_group.26:
	.byte	112,114,111,109,111,116,101,100,32,99
	.space	5
	.byte	5
	.section ".data"
	.align  3
	.quad	3068
camlComb_group.25:
	.byte	112,114,111,109,111,116,101,100,32,98
	.space	5
	.byte	5
	.section ".data"
	.align  3
	.quad	3068
camlComb_group.24:
	.byte	112,114,111,109,111,116,101,100,32,97
	.space	5
	.byte	5
	.section ".data"
	.align  3
	.quad	3840
camlComb_group.23:
	.quad	camlComb_group.22
	.quad	camlComb_group.22
	.quad	camlComb_group.22
	.section ".data"
	.align  3
	.quad	768
camlComb_group.22:
	.section ".data"
	.align  3
	.quad	4092
camlComb_group.21:
	.byte	99,32,97,102,116,101,114,32,108,97,116,101,114,32,97,108
	.byte	108,111,99,115
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	4092
camlComb_group.20:
	.byte	98,32,97,102,116,101,114,32,108,97,116,101,114,32,97,108
	.byte	108,111,99,115
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	2828
camlComb_group.2:
	.quad	21
	.quad	1
	.section ".data"
	.align  3
	.quad	4092
camlComb_group.19:
	.byte	97,32,97,102,116,101,114,32,108,97,116,101,114,32,97,108
	.byte	108,111,99,115
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	3068
camlComb_group.18:
	.byte	110,111,32,111,118,101,114,108,97,112,32,99
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	3068
camlComb_group.17:
	.byte	110,111,32,111,118,101,114,108,97,112,32,98
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	3068
camlComb_group.16:
	.byte	110,111,32,111,118,101,114,108,97,112,32,97
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	2044
camlComb_group.15:
	.byte	114
	.space	6
	.byte	6
	.section ".data"
	.align  3
	.quad	2044
camlComb_group.14:
	.byte	113
	.space	6
	.byte	6
	.section ".data"
	.align  3
	.quad	2044
camlComb_group.13:
	.byte	112,46,40,48,41
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	2044
camlComb_group.12:
	.byte	99,46,40,48,41
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	2044
camlComb_group.11:
	.byte	98,46,40,50,41
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	2044
camlComb_group.10:
	.byte	98,46,40,49,41
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	2044
camlComb_group.1:
	.byte	70,65,73,76,32
	.space	2
	.byte	2
	.text
	.align	2
.L199:	mflr	28
	li	27, 38
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L200
	.globl	camlComb_group.entry
	.type	camlComb_group.entry, @function
camlComb_group.entry:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlComb_group.entry, . - 0b
	ld	11, 40(30)
	addi	11, 11, 360
	cmpld	1, 11
	ble-	.L199
.L200:
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -48
	.cfi_adjust_cfa_offset	48
.L198:
	ld	0, 0(30)
	addi	31, 31, -16
	cmpld	31, 0
	bltl-	.L201
.L202:
	addi	4, 31, 8
	li	5, 1024
	std	5, -8(4)
	li	5, 1
	std	5, 0(4)
	addis	3, 2, .L107@toc@ha
	ld	3, .L107@toc@l(3) # camlComb_group
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 2, .L203@toc@ha
	ld	4, .L203@toc@l(4) # camlComb_group.42
	addis	8, 2, .L107@toc@ha
	ld	8, .L107@toc@l(8) # camlComb_group
	addi	3, 8, 8
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 2, .L204@toc@ha
	ld	4, .L204@toc@l(4) # camlComb_group.41
	addis	14, 2, .L107@toc@ha
	ld	14, .L107@toc@l(14) # camlComb_group
	addi	3, 14, 16
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 2, .L205@toc@ha
	ld	4, .L205@toc@l(4) # camlComb_group.40
	addis	17, 2, .L107@toc@ha
	ld	17, .L107@toc@l(17) # camlComb_group
	addi	3, 17, 24
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 2, .L206@toc@ha
	ld	4, .L206@toc@l(4) # camlComb_group.39
	addis	20, 2, .L107@toc@ha
	ld	20, .L107@toc@l(20) # camlComb_group
	addi	3, 20, 32
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 2, .L207@toc@ha
	ld	4, .L207@toc@l(4) # camlComb_group.38
	addis	23, 2, .L107@toc@ha
	ld	23, .L107@toc@l(23) # camlComb_group
	addi	3, 23, 40
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 2, .L208@toc@ha
	ld	4, .L208@toc@l(4) # camlComb_group.37
	addis	26, 2, .L107@toc@ha
	ld	26, .L107@toc@l(26) # camlComb_group
	addi	3, 26, 48
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 2, .L209@toc@ha
	ld	4, .L209@toc@l(4) # camlComb_group.36
	addis	3, 2, .L107@toc@ha
	ld	3, .L107@toc@l(3) # camlComb_group
	addi	3, 3, 56
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 2, .L210@toc@ha
	ld	4, .L210@toc@l(4) # camlComb_group.23
	li	3, 129
	addis	25, 2, .L211@toc@ha
	ld	25, .L211@toc@l(25) # caml_array_make
	bl	caml_c_call
.L212:
	nop
	mr	4, 3
	addis	8, 2, .L107@toc@ha
	ld	8, .L107@toc@l(8) # camlComb_group
	addi	3, 8, 64
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	addis	4, 2, .L213@toc@ha
	ld	4, .L213@toc@l(4) # camlComb_group.35
	addis	14, 2, .L107@toc@ha
	ld	14, .L107@toc@l(14) # camlComb_group
	addi	3, 14, 72
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	li	3, 1
	addis	19, 0, 61
	addi	19, 19, 2305
	cmpd	3, 19
	bgt	.L195
	std	3, 32(1)
.L196:
	bl	camlComb_group.contents_335
.L214:
	nop
	ld	2, 56(1)
	ld	3, 32(1)
	bl	camlComb_group.overlap_399
.L215:
	nop
	ld	2, 56(1)
	ld	3, 32(1)
	bl	camlComb_group.clobber_410
.L216:
	nop
	ld	2, 56(1)
	ld	3, 32(1)
	mr	4, 3
	bl	camlComb_group.survives_501
.L217:
	nop
	ld	2, 56(1)
	ld	25, 32(1)
	addis	26, 0, 2
	addi	26, 26, -1
	and	27, 25, 26
	cmpdi	27, 1
	bne	.L197
	li	3, 1
	addis	25, 2, .L218@toc@ha
	ld	25, .L218@toc@l(25) # caml_gc_minor
	bl	caml_c_call
.L219:
	nop
.L197:
	ld	3, 32(1)
	mr	4, 3
	addi	3, 3, 2
	std	3, 32(1)
	addis	6, 0, 61
	addi	6, 6, 2305
	cmpd	4, 6
	beq	.L195
	ld	0, 0(30)
	cmpld	31, 0
	bltl-	.L201
.L220:
	b	.L196
.L195:
	li	3, 1
	addis	25, 2, .L221@toc@ha
	ld	25, .L221@toc@l(25) # caml_gc_full_major
	bl	caml_c_call
.L222:
	nop
	addis	11, 2, .L107@toc@ha
	ld	11, .L107@toc@l(11) # camlComb_group
	ld	8, 0(11)
	ld	9, 0(8)
	cmpdi	9, 1
	bne	.L194
	addis	3, 2, .L223@toc@ha
	ld	3, .L223@toc@l(3) # camlComb_group.27
	bl	camlStdlib.print_endline_369
.L224:
	nop
	ld	2, 56(1)
	b	.L193
.L194:
	std	9, 32(1)
	addis	4, 2, .L225@toc@ha
	ld	4, .L225@toc@l(4) # camlComb_group.34
	addis	11, 2, .L109@toc@ha
	ld	11, .L109@toc@l(11) # camlStdlib
	ld	3, 304(11)
	bl	camlStdlib__Printf.fprintf_433
.L226:
	nop
	ld	2, 56(1)
	mr	4, 3
	ld	20, 0(4)
	ld	3, 32(1)
	mtctr	20
	mr	12, 20
	bctrl
.L227:
	ld	2, 56(1)
.L193:
	li	3, 1
	ld	11, 64(1)
	mtlr	11
	addi	1, 1, 48
	blr
.L201:
	std	2, 24(1)
	addis	12, 2, .L111@toc@ha
	ld	12, .L111@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlComb_group.entry, . - camlComb_group.entry
	.section ".data"
	.align  3
	.text
	.globl	camlComb_group.code_end
	.type	camlComb_group.code_end, @object
camlComb_group.code_end:
	.long	0
	.section ".data"
	.globl	camlComb_group.data_end
	.type	camlComb_group.data_end, @object
	.quad	0
camlComb_group.data_end:
	.quad	0
	.section ".data"
	.align  3
	.globl	camlComb_group.frametable
	.type	camlComb_group.frametable, @object
camlComb_group.frametable:
	.quad	38
	.quad	.L227
	.short	49
	.short	0
	.balign	4
	.long	(.L228 - .) + 0x0
	.balign	8
	.quad	.L226
	.short	49
	.short	0
	.balign	4
	.long	(.L229 - .) + 0x0
	.balign	8
	.quad	.L224
	.short	49
	.short	0
	.balign	4
	.long	(.L230 - .) + 0x0
	.balign	8
	.quad	.L222
	.short	49
	.short	0
	.balign	4
	.long	(.L231 - .) + 0x0
	.balign	8
	.quad	.L220
	.short	50
	.short	0
	.byte	0
	.balign	8
	.quad	.L219
	.short	49
	.short	0
	.balign	4
	.long	(.L232 - .) + 0x0
	.balign	8
	.quad	.L217
	.short	49
	.short	0
	.balign	4
	.long	(.L233 - .) + 0x0
	.balign	8
	.quad	.L216
	.short	49
	.short	0
	.balign	4
	.long	(.L234 - .) + 0x0
	.balign	8
	.quad	.L215
	.short	49
	.short	0
	.balign	4
	.long	(.L235 - .) + 0x0
	.balign	8
	.quad	.L214
	.short	49
	.short	0
	.balign	4
	.long	(.L236 - .) + 0x0
	.balign	8
	.quad	.L212
	.short	49
	.short	0
	.balign	4
	.long	(.L237 - .) + 0x0
	.balign	8
	.quad	.L202
	.short	50
	.short	0
	.byte	1
	.byte	0
	.balign	8
	.quad	.L191
	.short	49
	.short	1
	.short	40
	.balign	4
	.long	(.L238 - .) + 0x0
	.balign	8
	.quad	.L189
	.short	49
	.short	2
	.short	32
	.short	40
	.balign	4
	.long	(.L239 - .) + 0x0
	.balign	8
	.quad	.L186
	.short	49
	.short	0
	.balign	4
	.long	(.L240 - .) + 0x0
	.balign	8
	.quad	.L180
	.short	81
	.short	1
	.short	32
	.balign	4
	.long	(.L241 - .) + 0x0
	.balign	8
	.quad	.L178
	.short	81
	.short	2
	.short	32
	.short	40
	.balign	4
	.long	(.L242 - .) + 0x0
	.balign	8
	.quad	.L175
	.short	82
	.short	3
	.short	32
	.short	40
	.short	48
	.byte	0
	.balign	8
	.quad	.L173
	.short	81
	.short	3
	.short	32
	.short	40
	.short	48
	.balign	4
	.long	(.L243 - .) + 0x0
	.balign	8
	.quad	.L172
	.short	81
	.short	0
	.balign	4
	.long	(.L244 - .) + 0x0
	.balign	8
	.quad	.L162
	.short	34
	.short	0
	.byte	3
	.byte	1
	.byte	2
	.byte	1
	.balign	8
	.quad	.L158
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L245 - .) + 0x0
	.balign	8
	.quad	.L156
	.short	65
	.short	2
	.short	32
	.short	40
	.balign	4
	.long	(.L246 - .) + 0x0
	.balign	8
	.quad	.L153
	.short	65
	.short	0
	.balign	4
	.long	(.L247 - .) + 0x0
	.balign	8
	.quad	.L143
	.short	65
	.short	1
	.short	32
	.balign	4
	.long	(.L248 - .) + 0x0
	.balign	8
	.quad	.L141
	.short	65
	.short	2
	.short	32
	.short	40
	.balign	4
	.long	(.L249 - .) + 0x0
	.balign	8
	.quad	.L139
	.short	65
	.short	0
	.balign	4
	.long	(.L250 - .) + 0x0
	.balign	8
	.quad	.L138
	.short	65
	.short	0
	.balign	4
	.long	(.L251 - .) + 0x0
	.balign	8
	.quad	.L136
	.short	65
	.short	1
	.short	48
	.balign	4
	.long	(.L252 - .) + 0x0
	.balign	8
	.quad	.L134
	.short	65
	.short	2
	.short	40
	.short	48
	.balign	4
	.long	(.L253 - .) + 0x0
	.balign	8
	.quad	.L132
	.short	65
	.short	2
	.short	40
	.short	48
	.balign	4
	.long	(.L254 - .) + 0x0
	.balign	8
	.quad	.L130
	.short	65
	.short	2
	.short	40
	.short	48
	.balign	4
	.long	(.L255 - .) + 0x0
	.balign	8
	.quad	.L128
	.short	65
	.short	3
	.short	32
	.short	40
	.short	48
	.balign	4
	.long	(.L256 - .) + 0x0
	.balign	8
	.quad	.L125
	.short	65
	.short	0
	.balign	4
	.long	(.L257 - .) + 0x0
	.balign	8
	.quad	.L117
	.short	34
	.short	0
	.byte	4
	.byte	2
	.byte	1
	.byte	5
	.byte	0
	.balign	8
	.quad	.L114
	.short	34
	.short	0
	.byte	4
	.byte	2
	.byte	0
	.byte	2
	.byte	1
	.balign	8
	.quad	.L110
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L229 - .) + 0x0
	.balign	8
	.quad	.L106
	.short	50
	.short	1
	.short	1
	.byte	0
	.balign	8
	.balign	4
.L240:
	.long	(.L259 - .) + 0x0
	.long	0x29858d0
	.balign	4
.L248:
	.long	(.L260 - .) + 0x0
	.long	0x1500960
	.balign	4
.L237:
	.long	(.L261 - .) + 0x0
	.long	0x2802d58
	.balign	4
.L229:
	.long	(.L263 - .) + 0x0
	.long	0xf84518
	.balign	4
.L254:
	.long	(.L260 - .) + 0x0
	.long	0x12008f8
	.balign	4
.L241:
	.long	(.L264 - .) + 0x0
	.long	0x25809f8
	.balign	4
.L243:
	.long	(.L264 - .) + 0x0
	.long	0x2408170
	.balign	4
.L252:
	.long	(.L260 - .) + 0x0
	.long	0x13008f8
	.balign	4
.L233:
	.long	(.L265 - .) + 0x0
	.long	0x3101080
	.balign	4
.L228:
	.long	(.L265 - .) + 0x0
	.long	0x3381dd0
	.balign	4
.L255:
	.long	(.L260 - .) + 0x0
	.long	0x11808f8
	.balign	4
.L251:
	.long	(.L260 - .) + 0x0
	.long	0x13808f8
	.balign	4
.L250:
	.long	(.L260 - .) + 0x0
	.long	0x14048b8
	.balign	4
.L245:
	.long	(.L266 - .) + 0x0
	.long	0x1a80a48
	.balign	4
.L244:
	.long	(.L264 - .) + 0x0
	.long	0x23048b0
	.balign	4
.L230:
	.long	(.L265 - .) + 0x0
	.long	0x33061b0
	.balign	4
.L246:
	.long	(.L266 - .) + 0x0
	.long	0x1a009c0
	.balign	4
.L239:
	.long	(.L259 - .) + 0x0
	.long	0x2b01150
	.balign	4
.L256:
	.long	(.L260 - .) + 0x0
	.long	0x11008d8
	.balign	4
.L253:
	.long	(.L260 - .) + 0x0
	.long	0x12808f8
	.balign	4
.L247:
	.long	(.L266 - .) + 0x0
	.long	0x18048b0
	.balign	4
.L242:
	.long	(.L264 - .) + 0x0
	.long	0x25009d8
	.balign	4
.L249:
	.long	(.L260 - .) + 0x0
	.long	0x14808d8
	.balign	4
.L236:
	.long	(.L265 - .) + 0x0
	.long	0x2f81070
	.balign	4
.L238:
	.long	(.L259 - .) + 0x0
	.long	0x2b81150
	.balign	4
.L234:
	.long	(.L265 - .) + 0x0
	.long	0x3081068
	.balign	4
.L257:
	.long	(.L260 - .) + 0x0
	.long	0x10848b0
	.balign	4
.L231:
	.long	(.L265 - .) + 0x0
	.long	0x3280890
	.balign	4
.L235:
	.long	(.L265 - .) + 0x0
	.long	0x3001068
	.balign	4
.L232:
	.long	(.L265 - .) + 0x0
	.long	0x3187948
.L258:
	.byte	99,111,109,98,95,103,114,111,117,112,46,109,108,0
.L262:
	.byte	112,114,105,110,116,102,46,109,108,0
	.balign	4
.L259:
	.long	(.L258 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,46,115,117,114,118,105
	.byte	118,101,115,0
	.balign	4
.L264:
	.long	(.L258 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,46,99,108,111,98,98
	.byte	101,114,0
	.balign	4
.L260:
	.long	(.L258 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,46,99,111,110,116,101
	.byte	110,116,115,0
	.balign	4
.L266:
	.long	(.L258 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,46,111,118,101,114,108
	.byte	97,112,0
	.balign	4
.L263:
	.long	(.L262 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.balign	4
.L265:
	.long	(.L258 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,0
	.balign	4
.L261:
	.long	(.L258 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,46,108,105,118,101,0
	.balign	8
	.size	camlComb_group.frametable, . - camlComb_group.frametable
 .section ".toc","aw"
.L108:	.quad	camlComb_group.6
.L129:	.quad	camlComb_group.8
.L205:	.quad	camlComb_group.40
.L177:	.quad	camlComb_group.19
.L131:	.quad	camlComb_group.9
.L179:	.quad	camlComb_group.20
.L208:	.quad	camlComb_group.37
.L145:	.quad	camlComb_group.check_275
.L133:	.quad	camlComb_group.10
.L127:	.quad	camlComb_group.7
.L206:	.quad	camlComb_group.39
.L181:	.quad	camlComb_group.21
.L203:	.quad	camlComb_group.42
.L209:	.quad	camlComb_group.36
.L210:	.quad	camlComb_group.23
.L159:	.quad	camlComb_group.18
.L223:	.quad	camlComb_group.27
.L155:	.quad	camlComb_group.16
.L137:	.quad	camlComb_group.12
.L109:	.quad	camlStdlib
.L157:	.quad	camlComb_group.17
.L218:	.quad	caml_gc_minor
.L204:	.quad	camlComb_group.41
.L140:	.quad	camlComb_group.13
.L221:	.quad	caml_gc_full_major
.L142:	.quad	camlComb_group.14
.L107:	.quad	camlComb_group
.L111:	.quad	caml_call_gc
.L211:	.quad	caml_array_make
.L135:	.quad	camlComb_group.11
.L192:	.quad	camlComb_group.26
.L190:	.quad	camlComb_group.25
.L188:	.quad	camlComb_group.24
.L213:	.quad	camlComb_group.35
.L144:	.quad	camlComb_group.15
.L225:	.quad	camlComb_group.34
.L207:	.quad	camlComb_group.38
	.section .note.GNU-stack,"",%progbits
