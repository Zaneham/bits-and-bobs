	.file	""
	.abiversion 2
	.section ".data"
	.globl	camlCas_test.data_begin
	.type	camlCas_test.data_begin, @object
camlCas_test.data_begin:
	.text
	.globl	camlCas_test.code_begin
	.type	camlCas_test.code_begin, @object
camlCas_test.code_begin:
	.section ".data"
	.align  3
	.section ".data"
	.align  3
	.quad	4087
camlCas_test.29:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlCas_test.check_279
	.section ".data"
	.align  3
	.quad	1792
	.globl	camlCas_test
	.type	camlCas_test, @object
camlCas_test:
	.quad	1
	.section ".data"
	.align  3
	.globl	camlCas_test.gc_roots
	.type	camlCas_test.gc_roots, @object
camlCas_test.gc_roots:
	.quad	camlCas_test
	.quad	0
	.text
	.align	2
.L102:	mflr	28
	li	27, 38
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L103
	.globl	camlCas_test.check_279
	.type	camlCas_test.check_279, @function
camlCas_test.check_279:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlCas_test.check_279, . - 0b
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
	cmpdi	4, 1
	beq	.L100
	ld	11, 64(1)
	mtlr	11
	li	3, 1
	addi	1, 1, 48
	blr
.L100:
	addis	4, 2, .L104@toc@ha
	ld	4, .L104@toc@l(4) # camlCas_test.6
	std	3, 32(1)
	addis	11, 2, .L105@toc@ha
	ld	11, .L105@toc@l(11) # camlStdlib
	ld	3, 304(11)
	bl	camlStdlib__Printf.fprintf_433
.L106:
	nop
	ld	2, 56(1)
	mr	4, 3
	ld	9, 0(4)
	ld	3, 32(1)
	mtctr	9
	mr	12, 9
	bctrl
.L107:
	ld	2, 56(1)
	li	3, 3
	addis	12, 2, .L108@toc@ha
	ld	12, .L108@toc@l(12) # camlStdlib.exit_480
	mtctr	12
	ld	11, 64(1)
	mtlr	11
	addi	1, 1, 48
	bctr
	.cfi_endproc
	.size	camlCas_test.check_279, . - camlCas_test.check_279
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.9:
	.byte	99,97,115,45,111,107,45,114,101,115,117,108,116
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.8:
	.byte	99,97,115,45,102,97,105,108,45,118,97,108,117,101
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.7:
	.byte	99,97,115,45,102,97,105,108,45,114,101,115,117,108,116
	.byte	0
	.section ".data"
	.align  3
	.quad	2816
camlCas_test.6:
	.quad	camlCas_test.4
	.quad	camlCas_test.5
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.5:
	.byte	70,65,73,76,32,37,115,10
	.space	7
	.byte	7
	.section ".data"
	.align  3
	.quad	2827
camlCas_test.4:
	.quad	camlCas_test.1
	.quad	camlCas_test.3
	.section ".data"
	.align  3
	.quad	2818
camlCas_test.3:
	.quad	1
	.quad	camlCas_test.2
	.section ".data"
	.align  3
	.quad	2044
camlCas_test.28:
	.byte	97,108,108,32,111,107
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.27:
	.byte	99,97,115,45,108,111,111,112
	.space	7
	.byte	7
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.26:
	.byte	99,97,115,45,98,114,97,110,99,104
	.space	5
	.byte	5
	.section ".data"
	.align  3
	.quad	2044
camlCas_test.25:
	.byte	110,111
	.space	5
	.byte	5
	.section ".data"
	.align  3
	.quad	2044
camlCas_test.24:
	.byte	121,101,115
	.space	4
	.byte	4
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.23:
	.byte	99,97,115,45,98,111,111,108,45,102,97,105,108
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.22:
	.byte	99,97,115,45,98,111,111,108,45,118,97,108,117,101
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.21:
	.byte	99,97,115,45,98,111,111,108
	.space	7
	.byte	7
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.20:
	.byte	101,120,99,104,45,110,101,119,50
	.space	6
	.byte	6
	.section ".data"
	.align  3
	.quad	2828
camlCas_test.2:
	.quad	21
	.quad	1
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.19:
	.byte	101,120,99,104,45,111,108,100,50
	.space	6
	.byte	6
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.18:
	.byte	101,120,99,104,45,110,101,119
	.space	7
	.byte	7
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.17:
	.byte	101,120,99,104,45,111,108,100
	.space	7
	.byte	7
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.16:
	.byte	99,97,115,45,115,97,109,101,45,118,97,108,117,101
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.15:
	.byte	99,97,115,45,115,97,109,101
	.space	7
	.byte	7
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.14:
	.byte	99,97,115,45,122,101,114,111,45,118,97,108,117,101
	.space	1
	.byte	1
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.13:
	.byte	99,97,115,45,122,101,114,111
	.space	7
	.byte	7
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.12:
	.byte	99,97,115,45,110,101,103,45,118,97,108,117,101
	.space	2
	.byte	2
	.section ".data"
	.align  3
	.quad	2044
camlCas_test.11:
	.byte	99,97,115,45,110,101,103
	.byte	0
	.section ".data"
	.align  3
	.quad	3068
camlCas_test.10:
	.byte	99,97,115,45,111,107,45,118,97,108,117,101
	.space	3
	.byte	3
	.section ".data"
	.align  3
	.quad	2044
camlCas_test.1:
	.byte	70,65,73,76,32
	.space	2
	.byte	2
	.text
	.align	2
.L115:	mflr	28
	li	27, 38
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L116
	.globl	camlCas_test.entry
	.type	camlCas_test.entry, @function
camlCas_test.entry:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlCas_test.entry, . - 0b
	ld	11, 40(30)
	addi	11, 11, 360
	cmpld	1, 11
	ble-	.L115
.L116:
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -48
	.cfi_adjust_cfa_offset	48
.L114:
	addis	4, 2, .L117@toc@ha
	ld	4, .L117@toc@l(4) # camlCas_test.29
	addis	3, 2, .L118@toc@ha
	ld	3, .L118@toc@l(3) # camlCas_test
	mr	28, 1
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	ld	0, 0(30)
	addi	31, 31, -16
	cmpld	31, 0
	bltl-	.L119
.L120:
	addi	5, 31, 8
	std	5, 32(1)
	li	6, 1024
	std	6, -8(5)
	li	7, 21
	std	7, 0(5)
	li	8, 85
	li	9, 199
	sync
.L121:
	ldarx	0, 0, 5
	cmpd	0, 9
	bne-	.L122
	stdcx.	8, 0, 5
	bne-	.L121
	li	10, 1
	b	.L123
.L122:
	li	10, 0
.L123:
	isync
	lwsync
	sldi	14, 10, 1
	addi	15, 14, 1
	cmpdi	15, 1
	mfcr	0
	rlwinm	16, 0, 3, 31, 31
	sldi	17, 16, 1
	addi	4, 17, 1
	addis	3, 2, .L124@toc@ha
	ld	3, .L124@toc@l(3) # camlCas_test.7
	bl	camlCas_test.check_279
.L125:
	nop
	ld	2, 56(1)
	ld	22, 32(1)
	sync
	ld	20, 0(22)
	cmpw	20, 20
	bne-	$+4
	isync
	cmpdi	20, 21
	mfcr	0
	rlwinm	21, 0, 3, 31, 31
	sldi	22, 21, 1
	addi	4, 22, 1
	addis	3, 2, .L126@toc@ha
	ld	3, .L126@toc@l(3) # camlCas_test.8
	bl	camlCas_test.check_279
.L127:
	nop
	ld	2, 56(1)
	li	25, 85
	li	26, 21
	ld	23, 32(1)
	sync
.L128:
	ldarx	0, 0, 23
	cmpd	0, 26
	bne-	.L129
	stdcx.	25, 0, 23
	bne-	.L128
	li	27, 1
	b	.L130
.L129:
	li	27, 0
.L130:
	isync
	lwsync
	sldi	28, 27, 1
	addi	3, 28, 1
	cmpdi	3, 3
	mfcr	0
	rlwinm	4, 0, 3, 31, 31
	sldi	5, 4, 1
	addi	4, 5, 1
	addis	3, 2, .L131@toc@ha
	ld	3, .L131@toc@l(3) # camlCas_test.9
	bl	camlCas_test.check_279
.L132:
	nop
	ld	2, 56(1)
	ld	24, 32(1)
	sync
	ld	8, 0(24)
	cmpw	8, 8
	bne-	$+4
	isync
	cmpdi	8, 85
	mfcr	0
	rlwinm	9, 0, 3, 31, 31
	sldi	10, 9, 1
	addi	4, 10, 1
	addis	3, 2, .L133@toc@ha
	ld	3, .L133@toc@l(3) # camlCas_test.10
	bl	camlCas_test.check_279
.L134:
	nop
	ld	2, 56(1)
	li	16, -13
	li	17, 85
	ld	25, 32(1)
	sync
.L135:
	ldarx	0, 0, 25
	cmpd	0, 17
	bne-	.L136
	stdcx.	16, 0, 25
	bne-	.L135
	li	18, 1
	b	.L137
.L136:
	li	18, 0
.L137:
	isync
	lwsync
	sldi	19, 18, 1
	addi	20, 19, 1
	cmpdi	20, 3
	mfcr	0
	rlwinm	21, 0, 3, 31, 31
	sldi	22, 21, 1
	addi	4, 22, 1
	addis	3, 2, .L138@toc@ha
	ld	3, .L138@toc@l(3) # camlCas_test.11
	bl	camlCas_test.check_279
.L139:
	nop
	ld	2, 56(1)
	ld	26, 32(1)
	sync
	ld	25, 0(26)
	cmpw	25, 25
	bne-	$+4
	isync
	cmpdi	25, -13
	mfcr	0
	rlwinm	26, 0, 3, 31, 31
	sldi	27, 26, 1
	addi	4, 27, 1
	addis	3, 2, .L140@toc@ha
	ld	3, .L140@toc@l(3) # camlCas_test.12
	bl	camlCas_test.check_279
.L141:
	nop
	ld	2, 56(1)
	li	4, 1
	li	5, -13
	ld	27, 32(1)
	sync
.L142:
	ldarx	0, 0, 27
	cmpd	0, 5
	bne-	.L143
	stdcx.	4, 0, 27
	bne-	.L142
	li	6, 1
	b	.L144
.L143:
	li	6, 0
.L144:
	isync
	lwsync
	sldi	7, 6, 1
	addi	8, 7, 1
	cmpdi	8, 3
	mfcr	0
	rlwinm	9, 0, 3, 31, 31
	sldi	10, 9, 1
	addi	4, 10, 1
	addis	3, 2, .L145@toc@ha
	ld	3, .L145@toc@l(3) # camlCas_test.13
	bl	camlCas_test.check_279
.L146:
	nop
	ld	2, 56(1)
	ld	28, 32(1)
	sync
	ld	16, 0(28)
	cmpw	16, 16
	bne-	$+4
	isync
	cmpdi	16, 1
	mfcr	0
	rlwinm	17, 0, 3, 31, 31
	sldi	18, 17, 1
	addi	4, 18, 1
	addis	3, 2, .L147@toc@ha
	ld	3, .L147@toc@l(3) # camlCas_test.14
	bl	camlCas_test.check_279
.L148:
	nop
	ld	2, 56(1)
	li	21, 1
	li	22, 1
	ld	3, 32(1)
	sync
.L149:
	ldarx	0, 0, 3
	cmpd	0, 22
	bne-	.L150
	stdcx.	21, 0, 3
	bne-	.L149
	li	23, 1
	b	.L151
.L150:
	li	23, 0
.L151:
	isync
	lwsync
	sldi	24, 23, 1
	addi	25, 24, 1
	cmpdi	25, 3
	mfcr	0
	rlwinm	26, 0, 3, 31, 31
	sldi	27, 26, 1
	addi	4, 27, 1
	addis	3, 2, .L152@toc@ha
	ld	3, .L152@toc@l(3) # camlCas_test.15
	bl	camlCas_test.check_279
.L153:
	nop
	ld	2, 56(1)
	ld	4, 32(1)
	sync
	ld	4, 0(4)
	cmpw	4, 4
	bne-	$+4
	isync
	cmpdi	4, 1
	mfcr	0
	rlwinm	5, 0, 3, 31, 31
	sldi	6, 5, 1
	addi	4, 6, 1
	addis	3, 2, .L154@toc@ha
	ld	3, .L154@toc@l(3) # camlCas_test.16
	bl	camlCas_test.check_279
.L155:
	nop
	ld	2, 56(1)
	li	9, 11
	ld	5, 32(1)
	sync
.L156:
	ldarx	10, 0, 5
	stdcx.	9, 0, 5
	bne-	.L156
	isync
	lwsync
	cmpdi	10, 1
	mfcr	0
	rlwinm	14, 0, 3, 31, 31
	sldi	15, 14, 1
	addi	4, 15, 1
	addis	3, 2, .L157@toc@ha
	ld	3, .L157@toc@l(3) # camlCas_test.17
	bl	camlCas_test.check_279
.L158:
	nop
	ld	2, 56(1)
	ld	6, 32(1)
	sync
	ld	18, 0(6)
	cmpw	18, 18
	bne-	$+4
	isync
	cmpdi	18, 11
	mfcr	0
	rlwinm	19, 0, 3, 31, 31
	sldi	20, 19, 1
	addi	4, 20, 1
	addis	3, 2, .L159@toc@ha
	ld	3, .L159@toc@l(3) # camlCas_test.18
	bl	camlCas_test.check_279
.L160:
	nop
	ld	2, 56(1)
	li	23, -1
	ld	7, 32(1)
	sync
.L161:
	ldarx	24, 0, 7
	stdcx.	23, 0, 7
	bne-	.L161
	isync
	lwsync
	cmpdi	24, 11
	mfcr	0
	rlwinm	25, 0, 3, 31, 31
	sldi	26, 25, 1
	addi	4, 26, 1
	addis	3, 2, .L162@toc@ha
	ld	3, .L162@toc@l(3) # camlCas_test.19
	bl	camlCas_test.check_279
.L163:
	nop
	ld	2, 56(1)
	ld	8, 32(1)
	sync
	ld	3, 0(8)
	cmpw	3, 3
	bne-	$+4
	isync
	cmpdi	3, -1
	mfcr	0
	rlwinm	4, 0, 3, 31, 31
	sldi	5, 4, 1
	addi	4, 5, 1
	addis	3, 2, .L164@toc@ha
	ld	3, .L164@toc@l(3) # camlCas_test.20
	bl	camlCas_test.check_279
.L165:
	nop
	ld	2, 56(1)
	ld	0, 0(30)
	addi	31, 31, -16
	cmpld	31, 0
	bltl-	.L119
.L166:
	addi	8, 31, 8
	std	8, 32(1)
	li	9, 1024
	std	9, -8(8)
	li	10, 3
	std	10, 0(8)
	li	14, 1
	li	15, 3
	sync
.L167:
	ldarx	0, 0, 8
	cmpd	0, 15
	bne-	.L168
	stdcx.	14, 0, 8
	bne-	.L167
	li	16, 1
	b	.L169
.L168:
	li	16, 0
.L169:
	isync
	lwsync
	sldi	17, 16, 1
	addi	18, 17, 1
	cmpdi	18, 3
	mfcr	0
	rlwinm	19, 0, 3, 31, 31
	sldi	20, 19, 1
	addi	4, 20, 1
	addis	3, 2, .L170@toc@ha
	ld	3, .L170@toc@l(3) # camlCas_test.21
	bl	camlCas_test.check_279
.L171:
	nop
	ld	2, 56(1)
	ld	9, 32(1)
	sync
	ld	23, 0(9)
	cmpw	23, 23
	bne-	$+4
	isync
	cmpdi	23, 1
	mfcr	0
	rlwinm	24, 0, 3, 31, 31
	sldi	25, 24, 1
	addi	4, 25, 1
	addis	3, 2, .L172@toc@ha
	ld	3, .L172@toc@l(3) # camlCas_test.22
	bl	camlCas_test.check_279
.L173:
	nop
	ld	2, 56(1)
	li	28, 1
	li	3, 3
	ld	10, 32(1)
	sync
.L174:
	ldarx	0, 0, 10
	cmpd	0, 3
	bne-	.L175
	stdcx.	28, 0, 10
	bne-	.L174
	li	4, 1
	b	.L176
.L175:
	li	4, 0
.L176:
	isync
	lwsync
	sldi	5, 4, 1
	addi	6, 5, 1
	cmpdi	6, 1
	mfcr	0
	rlwinm	7, 0, 3, 31, 31
	sldi	8, 7, 1
	addi	4, 8, 1
	addis	3, 2, .L177@toc@ha
	ld	3, .L177@toc@l(3) # camlCas_test.23
	bl	camlCas_test.check_279
.L178:
	nop
	ld	2, 56(1)
	ld	0, 0(30)
	addi	31, 31, -16
	cmpld	31, 0
	bltl-	.L119
.L179:
	addi	14, 31, 8
	std	14, 32(1)
	li	15, 1024
	std	15, -8(14)
	li	16, 3
	std	16, 0(14)
	li	17, 5
	li	18, 3
	sync
.L180:
	ldarx	0, 0, 14
	cmpd	0, 18
	bne-	.L181
	stdcx.	17, 0, 14
	bne-	.L180
	li	19, 1
	b	.L182
.L181:
	li	19, 0
.L182:
	isync
	lwsync
	cmpdi	19, 0
	beq	.L113
	addis	3, 2, .L183@toc@ha
	ld	3, .L183@toc@l(3) # camlCas_test.24
	b	.L112
.L113:
	addis	3, 2, .L184@toc@ha
	ld	3, .L184@toc@l(3) # camlCas_test.25
.L112:
	addis	4, 2, .L183@toc@ha
	ld	4, .L183@toc@l(4) # camlCas_test.24
	mr	28, 1
	ld	1, 64(30)
	bl	caml_string_equal
	nop	
	mr	1, 28
	mr	4, 3
	addis	3, 2, .L185@toc@ha
	ld	3, .L185@toc@l(3) # camlCas_test.26
	bl	camlCas_test.check_279
.L186:
	nop
	ld	2, 56(1)
	li	25, 1
	li	27, 3
	cmpdi	27, 2001
	bgt	.L109
.L110:
	li	3, 5
	li	4, 5
	ld	14, 32(1)
	sync
.L187:
	ldarx	0, 0, 14
	cmpd	0, 4
	bne-	.L188
	stdcx.	3, 0, 14
	bne-	.L187
	li	5, 1
	b	.L189
.L188:
	li	5, 0
.L189:
	isync
	lwsync
	cmpdi	5, 0
	beq	.L111
	addi	25, 25, 2
.L111:
	mr	8, 27
	addi	27, 27, 2
	cmpdi	8, 2001
	beq	.L109
	ld	0, 0(30)
	cmpld	31, 0
	bltl-	.L119
.L190:
	b	.L110
.L109:
	cmpdi	25, 2001
	mfcr	0
	rlwinm	15, 0, 3, 31, 31
	sldi	16, 15, 1
	addi	4, 16, 1
	addis	3, 2, .L191@toc@ha
	ld	3, .L191@toc@l(3) # camlCas_test.27
	bl	camlCas_test.check_279
.L192:
	nop
	ld	2, 56(1)
	addis	3, 2, .L193@toc@ha
	ld	3, .L193@toc@l(3) # camlCas_test.28
	bl	camlStdlib.print_endline_369
.L194:
	nop
	ld	2, 56(1)
	li	3, 1
	ld	11, 64(1)
	mtlr	11
	addi	1, 1, 48
	blr
.L119:
	std	2, 24(1)
	addis	12, 2, .L195@toc@ha
	ld	12, .L195@toc@l(12) # caml_call_gc
	mtctr	12
	bctr
	.cfi_endproc
	.size	camlCas_test.entry, . - camlCas_test.entry
	.section ".data"
	.align  3
	.text
	.globl	camlCas_test.code_end
	.type	camlCas_test.code_end, @object
camlCas_test.code_end:
	.long	0
	.section ".data"
	.globl	camlCas_test.data_end
	.type	camlCas_test.data_end, @object
	.quad	0
camlCas_test.data_end:
	.quad	0
	.section ".data"
	.align  3
	.globl	camlCas_test.frametable
	.type	camlCas_test.frametable, @object
camlCas_test.frametable:
	.quad	26
	.quad	.L194
	.short	49
	.short	0
	.balign	4
	.long	(.L196 - .) + 0x0
	.balign	8
	.quad	.L192
	.short	49
	.short	0
	.balign	4
	.long	(.L197 - .) + 0x0
	.balign	8
	.quad	.L190
	.short	50
	.short	1
	.short	32
	.byte	0
	.balign	8
	.quad	.L186
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L198 - .) + 0x0
	.balign	8
	.quad	.L179
	.short	50
	.short	0
	.byte	1
	.byte	0
	.balign	8
	.quad	.L178
	.short	49
	.short	0
	.balign	4
	.long	(.L199 - .) + 0x0
	.balign	8
	.quad	.L173
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L200 - .) + 0x0
	.balign	8
	.quad	.L171
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L201 - .) + 0x0
	.balign	8
	.quad	.L166
	.short	50
	.short	0
	.byte	1
	.byte	0
	.balign	8
	.quad	.L165
	.short	49
	.short	0
	.balign	4
	.long	(.L202 - .) + 0x0
	.balign	8
	.quad	.L163
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L203 - .) + 0x0
	.balign	8
	.quad	.L160
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L204 - .) + 0x0
	.balign	8
	.quad	.L158
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L205 - .) + 0x0
	.balign	8
	.quad	.L155
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L206 - .) + 0x0
	.balign	8
	.quad	.L153
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L207 - .) + 0x0
	.balign	8
	.quad	.L148
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L208 - .) + 0x0
	.balign	8
	.quad	.L146
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L209 - .) + 0x0
	.balign	8
	.quad	.L141
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L210 - .) + 0x0
	.balign	8
	.quad	.L139
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L211 - .) + 0x0
	.balign	8
	.quad	.L134
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L212 - .) + 0x0
	.balign	8
	.quad	.L132
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L213 - .) + 0x0
	.balign	8
	.quad	.L127
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L214 - .) + 0x0
	.balign	8
	.quad	.L125
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L215 - .) + 0x0
	.balign	8
	.quad	.L120
	.short	50
	.short	0
	.byte	1
	.byte	0
	.balign	8
	.quad	.L107
	.short	49
	.short	0
	.balign	4
	.long	(.L216 - .) + 0x0
	.balign	8
	.quad	.L106
	.short	49
	.short	1
	.short	32
	.balign	4
	.long	(.L217 - .) + 0x0
	.balign	8
	.balign	4
.L217:
	.long	(.L219 - .) + 0x0
	.long	0xf84518
	.balign	4
.L210:
	.long	(.L221 - .) + 0x0
	.long	0xa00938
	.balign	4
.L203:
	.long	(.L221 - .) + 0x0
	.long	0xe80940
	.balign	4
.L214:
	.long	(.L221 - .) + 0x0
	.long	0x700940
	.balign	4
.L213:
	.long	(.L221 - .) + 0x0
	.long	0x800978
	.balign	4
.L204:
	.long	(.L221 - .) + 0x0
	.long	0xe00908
	.balign	4
.L215:
	.long	(.L221 - .) + 0x0
	.long	0x680990
	.balign	4
.L207:
	.long	(.L221 - .) + 0x0
	.long	0xc00940
	.balign	4
.L211:
	.long	(.L221 - .) + 0x0
	.long	0x980958
	.balign	4
.L202:
	.long	(.L221 - .) + 0x0
	.long	0xf00918
	.balign	4
.L197:
	.long	(.L221 - .) + 0x0
	.long	0x16008f0
	.balign	4
.L196:
	.long	(.L221 - .) + 0x0
	.long	0x16808c0
	.balign	4
.L209:
	.long	(.L221 - .) + 0x0
	.long	0xa80958
	.balign	4
.L208:
	.long	(.L221 - .) + 0x0
	.long	0xb00938
	.balign	4
.L200:
	.long	(.L221 - .) + 0x0
	.long	0x1100958
	.balign	4
.L212:
	.long	(.L221 - .) + 0x0
	.long	0x880930
	.balign	4
.L206:
	.long	(.L221 - .) + 0x0
	.long	0xc80938
	.balign	4
.L216:
	.long	(.L222 - .) + 0x0
	.long	0x408a00
	.balign	4
.L201:
	.long	(.L221 - .) + 0x0
	.long	0x1080978
	.balign	4
.L205:
	.long	(.L221 - .) + 0x0
	.long	0xd80920
	.balign	4
.L199:
	.long	(.L221 - .) + 0x0
	.long	0x11809a8
	.balign	4
.L198:
	.long	(.L221 - .) + 0x0
	.long	0x1380920
.L220:
	.byte	99,97,115,95,116,101,115,116,46,109,108,0
.L218:
	.byte	112,114,105,110,116,102,46,109,108,0
	.balign	4
.L222:
	.long	(.L220 - .) + 0x0
	.byte	67,97,115,95,116,101,115,116,46,99,104,101,99,107,0
	.balign	4
.L219:
	.long	(.L218 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.balign	4
.L221:
	.long	(.L220 - .) + 0x0
	.byte	67,97,115,95,116,101,115,116,0
	.balign	8
	.size	camlCas_test.frametable, . - camlCas_test.frametable
 .section ".toc","aw"
.L140:	.quad	camlCas_test.12
.L154:	.quad	camlCas_test.16
.L191:	.quad	camlCas_test.27
.L164:	.quad	camlCas_test.20
.L185:	.quad	camlCas_test.26
.L124:	.quad	camlCas_test.7
.L157:	.quad	camlCas_test.17
.L183:	.quad	camlCas_test.24
.L184:	.quad	camlCas_test.25
.L108:	.quad	camlStdlib.exit_480
.L105:	.quad	camlStdlib
.L126:	.quad	camlCas_test.8
.L133:	.quad	camlCas_test.10
.L152:	.quad	camlCas_test.15
.L177:	.quad	camlCas_test.23
.L162:	.quad	camlCas_test.19
.L147:	.quad	camlCas_test.14
.L117:	.quad	camlCas_test.29
.L145:	.quad	camlCas_test.13
.L118:	.quad	camlCas_test
.L195:	.quad	caml_call_gc
.L104:	.quad	camlCas_test.6
.L172:	.quad	camlCas_test.22
.L131:	.quad	camlCas_test.9
.L159:	.quad	camlCas_test.18
.L193:	.quad	camlCas_test.28
.L170:	.quad	camlCas_test.21
.L138:	.quad	camlCas_test.11
	.section .note.GNU-stack,"",%progbits
