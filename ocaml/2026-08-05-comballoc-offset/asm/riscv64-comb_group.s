	.option pic
	.file ""
	.section .data
	.globl	camlComb_group.data_begin
	.type	camlComb_group.data_begin, @object
camlComb_group.data_begin:
	.text
	.globl	camlComb_group.code_begin
	.type	camlComb_group.code_begin, @object
camlComb_group.code_begin:
	.section .data
	.section .data
	.quad	4087
camlComb_group.42:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlComb_group.check_275
	.section .data
	.quad	3063
camlComb_group.41:
	.quad	camlComb_group.mk_323
	.quad	72057594037927941
	.section .data
	.quad	3063
camlComb_group.40:
	.quad	camlComb_group.mk2_329
	.quad	72057594037927941
	.section .data
	.quad	3063
camlComb_group.39:
	.quad	camlComb_group.contents_335
	.quad	72057594037927941
	.section .data
	.quad	3063
camlComb_group.38:
	.quad	camlComb_group.overlap_399
	.quad	72057594037927941
	.section .data
	.quad	3063
camlComb_group.37:
	.quad	camlComb_group.more_405
	.quad	72057594037927941
	.section .data
	.quad	3063
camlComb_group.36:
	.quad	camlComb_group.clobber_410
	.quad	72057594037927941
	.section .data
	.quad	4087
camlComb_group.35:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlComb_group.survives_501
	.section .data
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
	.section .data
	.globl	camlComb_group.gc_roots
	.type	camlComb_group.gc_roots, @object
camlComb_group.gc_roots:
	.quad	camlComb_group
	.quad	0
	.globl	camlComb_group.check_275
	.type	camlComb_group.check_275, @function
	.text
	.align	2
camlComb_group.check_275:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L103
.L104:
	addi	sp, sp, -16
	.cfi_adjust_cfa_offset	16
	sd	ra, 8(sp)
	.cfi_offset 1, -8
.L102:
	ld	t1, 0(s11)
	bltu	s10, t1, .L107
.L106:
	li	a2, 1
	beq	a1, a2, .L101
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	ret
.L101:
	la	a3, camlComb_group
	ld	a4, 0(a3)
	ld	a5, 0(a4)
	addi	a6, a5, 2
	fence	r, w
	sd	a6, 0(a4)
	li	a7, 41
	ld	s4, 0(a4)
	bge	s4, a7, .L100
	sd	a0, 0(sp)
	la	a1, camlComb_group.6
	la	s8, camlStdlib
	ld	a0, 304(s8)
	call	camlStdlib__Printf.fprintf_433@plt
.L108:
	mv	a1, a0
	ld	t3, 0(a1)
	ld	a0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	jr	t3
.L100:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	ret
.L107:
	call	caml_call_gc@plt
.L105:
	j	.L106
.L103:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L104
	.cfi_endproc
	.size	camlComb_group.check_275, . - camlComb_group.check_275
	.globl	camlComb_group.mk_323
	.type	camlComb_group.mk_323, @function
	.text
	.align	2
camlComb_group.mk_323:
	.cfi_startproc
	addi	sp, sp, -8
	.cfi_adjust_cfa_offset	8
	sd	ra, 0(sp)
	.cfi_offset 1, -8
.L109:
	addi	s10, s10, -104
	ld	t1, 0(s11)
	bltu	s10, t1, .L112
.L111:
	addi	a1, s10, 88
	li	a2, 2048
	sd	a2, -8(a1)
	sd	a0, 0(a1)
	addi	a3, a0, 2
	sd	a3, 8(a1)
	addi	a4, a1, -32
	li	a5, 3072
	sd	a5, -8(a4)
	addi	a6, a0, 4
	sd	a6, 0(a4)
	addi	a7, a0, 6
	sd	a7, 8(a4)
	addi	s2, a0, 8
	sd	s2, 16(a4)
	addi	s3, a4, -16
	li	s4, 1024
	sd	s4, -8(s3)
	addi	s5, a0, 10
	sd	s5, 0(s3)
	addi	a0, s3, -32
	li	s7, 3072
	sd	s7, -8(a0)
	sd	a1, 0(a0)
	sd	a4, 8(a0)
	sd	s3, 16(a0)
	ld	ra, 0(sp)
	addi	sp, sp, 8
	.cfi_adjust_cfa_offset	-8
	ret
.L112:
	call	caml_call_gc@plt
.L110:
	j	.L111
	.cfi_endproc
	.size	camlComb_group.mk_323, . - camlComb_group.mk_323
	.globl	camlComb_group.mk2_329
	.type	camlComb_group.mk2_329, @function
	.text
	.align	2
camlComb_group.mk2_329:
	.cfi_startproc
	addi	sp, sp, -8
	.cfi_adjust_cfa_offset	8
	sd	ra, 0(sp)
	.cfi_offset 1, -8
.L113:
	addi	s10, s10, -128
	ld	t1, 0(s11)
	bltu	s10, t1, .L116
.L115:
	addi	a1, s10, 120
	li	a2, 1024
	sd	a2, -8(a1)
	sd	a0, 0(a1)
	addi	a3, a1, -56
	li	a4, 6144
	sd	a4, -8(a3)
	addi	a5, a0, 2
	sd	a5, 0(a3)
	addi	a6, a0, 4
	sd	a6, 8(a3)
	addi	a7, a0, 6
	sd	a7, 16(a3)
	addi	s2, a0, 8
	sd	s2, 24(a3)
	addi	s3, a0, 10
	sd	s3, 32(a3)
	addi	s4, a0, 12
	sd	s4, 40(a3)
	addi	s5, a3, -24
	li	s6, 2048
	sd	s6, -8(s5)
	addi	s7, a0, 14
	sd	s7, 0(s5)
	addi	s8, a0, 16
	sd	s8, 8(s5)
	addi	a0, s5, -32
	li	t2, 3072
	sd	t2, -8(a0)
	sd	s5, 0(a0)
	sd	a3, 8(a0)
	sd	a1, 16(a0)
	ld	ra, 0(sp)
	addi	sp, sp, 8
	.cfi_adjust_cfa_offset	-8
	ret
.L116:
	call	caml_call_gc@plt
.L114:
	j	.L115
	.cfi_endproc
	.size	camlComb_group.mk2_329, . - camlComb_group.mk2_329
	.globl	camlComb_group.contents_335
	.type	camlComb_group.contents_335, @function
	.text
	.align	2
camlComb_group.contents_335:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 352
	bltu	sp, t1, .L122
.L123:
	addi	sp, sp, -40
	.cfi_adjust_cfa_offset	40
	sd	ra, 32(sp)
	.cfi_offset 1, -8
.L121:
	sd	a0, 24(sp)
	call	camlComb_group.mk_323@plt
.L124:
	sd	a0, 16(sp)
	ld	a2, 8(a0)
	sd	a2, 8(sp)
	ld	a3, 0(a0)
	sd	a3, 0(sp)
	li	a4, 1023
	ld	a5, -8(a3)
	bleu	a5, a4, .L125
	ld	a6, 0(a3)
	ld	a3, 24(sp)
	sub	a7, a6, a3
	seqz	a7, a7
	slli	s2, a7, 1
	addi	a1, s2, 1
	la	a0, camlComb_group.7
	call	camlComb_group.check_275@plt
.L127:
	ld	a4, 24(sp)
	addi	s5, a4, 2
	li	s6, 2047
	ld	a5, 0(sp)
	ld	s7, -8(a5)
	bleu	s7, s6, .L125
	ld	s8, 8(a5)
	sub	s9, s8, s5
	seqz	s9, s9
	slli	t2, s9, 1
	addi	a1, t2, 1
	la	a0, camlComb_group.8
	call	camlComb_group.check_275@plt
.L128:
	ld	a6, 24(sp)
	addi	t5, a6, 4
	li	t6, 1023
	ld	a7, 8(sp)
	ld	s0, -8(a7)
	bleu	s0, t6, .L125
	ld	a0, 0(a7)
	sub	a1, a0, t5
	seqz	a1, a1
	slli	a2, a1, 1
	addi	a1, a2, 1
	la	a0, camlComb_group.9
	call	camlComb_group.check_275@plt
.L129:
	ld	s2, 24(sp)
	addi	a5, s2, 6
	li	a6, 2047
	ld	s3, 8(sp)
	ld	a7, -8(s3)
	bleu	a7, a6, .L125
	ld	s2, 8(s3)
	sub	s3, s2, a5
	seqz	s3, s3
	slli	s4, s3, 1
	addi	a1, s4, 1
	la	a0, camlComb_group.10
	call	camlComb_group.check_275@plt
.L130:
	ld	s4, 24(sp)
	addi	s7, s4, 8
	li	s8, 3071
	ld	s5, 8(sp)
	ld	s9, -8(s5)
	bleu	s9, s8, .L125
	ld	t2, 16(s5)
	sub	t3, t2, s7
	seqz	t3, t3
	slli	t4, t3, 1
	addi	a1, t4, 1
	la	a0, camlComb_group.11
	call	camlComb_group.check_275@plt
.L131:
	ld	s6, 24(sp)
	addi	s0, s6, 10
	ld	s7, 16(sp)
	ld	a0, 16(s7)
	li	a1, 1023
	ld	a2, -8(a0)
	bleu	a2, a1, .L125
	ld	a3, 0(a0)
	sub	a4, a3, s0
	seqz	a4, a4
	slli	a5, a4, 1
	addi	a1, a5, 1
	la	a0, camlComb_group.12
	call	camlComb_group.check_275@plt
.L132:
	ld	a0, 24(sp)
	call	camlComb_group.mk2_329@plt
.L133:
	ld	s3, 8(a0)
	sd	s3, 8(sp)
	ld	s4, 0(a0)
	sd	s4, 0(sp)
	ld	s5, 16(a0)
	li	s6, 1023
	ld	s7, -8(s5)
	bleu	s7, s6, .L125
	ld	s8, 0(s5)
	ld	s9, 24(sp)
	sub	s9, s8, s9
	seqz	s9, s9
	slli	t2, s9, 1
	addi	a1, t2, 1
	la	a0, camlComb_group.13
	call	camlComb_group.check_275@plt
.L134:
	ld	t2, 24(sp)
	addi	t5, t2, 2
	li	t6, 1023
	ld	t3, 8(sp)
	ld	s0, -8(t3)
	bleu	s0, t6, .L125
	ld	a0, 0(t3)
	bne	a0, t5, .L120
	addi	a1, t2, 12
	li	a2, 6143
	bleu	s0, a2, .L125
	ld	a4, 40(t3)
	sub	a5, a4, a1
	seqz	a5, a5
	slli	a6, a5, 1
	addi	a1, a6, 1
	j	.L119
.L120:
	li	a1, 1
.L119:
	la	a0, camlComb_group.14
	call	camlComb_group.check_275@plt
.L135:
	ld	t4, 24(sp)
	addi	s5, t4, 14
	li	s6, 1023
	ld	t5, 0(sp)
	ld	s7, -8(t5)
	bleu	s7, s6, .L125
	ld	s8, 0(t5)
	bne	s8, s5, .L118
	addi	s9, t4, 16
	li	t2, 2047
	bleu	s7, t2, .L125
	ld	t4, 8(t5)
	sub	t5, t4, s9
	seqz	t5, t5
	slli	t6, t5, 1
	addi	a1, t6, 1
	j	.L117
.L118:
	li	a1, 1
.L117:
	la	a0, camlComb_group.15
	ld	ra, 32(sp)
	addi	sp, sp, 40
	.cfi_adjust_cfa_offset	-40
	tail	camlComb_group.check_275@plt
.L125:
	call	caml_ml_array_bound_error@plt
.L126:
.L122:
	li	t1, 37
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L123
	.cfi_endproc
	.size	camlComb_group.contents_335, . - camlComb_group.contents_335
	.globl	camlComb_group.overlap_399
	.type	camlComb_group.overlap_399, @function
	.text
	.align	2
camlComb_group.overlap_399:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 344
	bltu	sp, t1, .L141
.L142:
	addi	sp, sp, -32
	.cfi_adjust_cfa_offset	32
	sd	ra, 24(sp)
	.cfi_offset 1, -8
.L140:
	sd	a0, 16(sp)
	call	camlComb_group.mk_323@plt
.L143:
	ld	a2, 16(a0)
	sd	a2, 0(sp)
	ld	a3, 8(a0)
	sd	a3, 8(sp)
	ld	a4, 0(a0)
	li	a5, 1023
	ld	a6, -8(a4)
	bleu	a6, a5, .L144
	li	a7, 87381
	fence	r, w
	sd	a7, 0(a4)
	li	s2, 1023
	ld	s3, -8(a3)
	bleu	s3, s2, .L144
	li	s4, 96119
	fence	r, w
	sd	s4, 0(a3)
	li	s5, 1023
	ld	s6, -8(a2)
	bleu	s6, s5, .L144
	li	s7, 104857
	fence	r, w
	sd	s7, 0(a2)
	li	s8, 87381
	ld	t3, 0(a4)
	bne	t3, s8, .L139
	ld	s4, 16(sp)
	addi	t4, s4, 2
	li	t5, 2047
	bleu	a6, t5, .L144
	ld	s0, 8(a4)
	sub	a0, s0, t4
	seqz	a0, a0
	slli	a1, a0, 1
	addi	a1, a1, 1
	j	.L138
.L139:
	li	a1, 1
.L138:
	la	a0, camlComb_group.16
	call	camlComb_group.check_275@plt
.L146:
	li	a6, 96119
	li	a7, 1023
	ld	s6, 8(sp)
	ld	s2, -8(s6)
	bleu	s2, a7, .L144
	ld	s3, 0(s6)
	bne	s3, a6, .L137
	ld	s8, 16(sp)
	addi	s4, s8, 6
	li	s5, 2047
	bleu	s2, s5, .L144
	ld	s7, 8(s6)
	bne	s7, s4, .L137
	addi	s8, s8, 8
	li	s9, 3071
	bleu	s2, s9, .L144
	ld	t3, 16(s6)
	sub	t4, t3, s8
	seqz	t4, t4
	slli	t5, t4, 1
	addi	a1, t5, 1
	j	.L136
.L137:
	li	a1, 1
.L136:
	la	a0, camlComb_group.17
	call	camlComb_group.check_275@plt
.L147:
	li	a2, 104857
	li	a3, 1023
	ld	s7, 0(sp)
	ld	a4, -8(s7)
	bleu	a4, a3, .L144
	ld	a5, 0(s7)
	sub	a6, a5, a2
	seqz	a6, a6
	slli	a7, a6, 1
	addi	a1, a7, 1
	la	a0, camlComb_group.18
	ld	ra, 24(sp)
	addi	sp, sp, 32
	.cfi_adjust_cfa_offset	-32
	tail	camlComb_group.check_275@plt
.L144:
	call	caml_ml_array_bound_error@plt
.L145:
.L141:
	li	t1, 36
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L142
	.cfi_endproc
	.size	camlComb_group.overlap_399, . - camlComb_group.overlap_399
	.globl	camlComb_group.more_405
	.type	camlComb_group.more_405, @function
	.text
	.align	2
camlComb_group.more_405:
	.cfi_startproc
	addi	sp, sp, -8
	.cfi_adjust_cfa_offset	8
	sd	ra, 0(sp)
	.cfi_offset 1, -8
.L148:
	addi	s10, s10, -80
	ld	t1, 0(s11)
	bltu	s10, t1, .L151
.L150:
	addi	a1, s10, 64
	li	a2, 2048
	sd	a2, -8(a1)
	sd	a0, 0(a1)
	addi	a3, a0, 2
	sd	a3, 8(a1)
	addi	a4, a1, -32
	li	a5, 3072
	sd	a5, -8(a4)
	addi	a6, a0, 4
	sd	a6, 0(a4)
	addi	a7, a0, 6
	sd	a7, 8(a4)
	addi	s2, a0, 8
	sd	s2, 16(a4)
	addi	a0, a4, -24
	li	s4, 2048
	sd	s4, -8(a0)
	sd	a1, 0(a0)
	sd	a4, 8(a0)
	ld	ra, 0(sp)
	addi	sp, sp, 8
	.cfi_adjust_cfa_offset	-8
	ret
.L151:
	call	caml_call_gc@plt
.L149:
	j	.L150
	.cfi_endproc
	.size	camlComb_group.more_405, . - camlComb_group.more_405
	.globl	camlComb_group.clobber_410
	.type	camlComb_group.clobber_410, @function
	.text
	.align	2
camlComb_group.clobber_410:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 360
	bltu	sp, t1, .L159
.L160:
	addi	sp, sp, -48
	.cfi_adjust_cfa_offset	48
	sd	ra, 40(sp)
	.cfi_offset 1, -8
.L158:
	sd	a0, 24(sp)
	call	camlComb_group.mk_323@plt
.L161:
	sd	a0, 0(sp)
	ld	a2, 8(a0)
	sd	a2, 8(sp)
	ld	a3, 0(a0)
	sd	a3, 16(sp)
	li	a4, 1
	li	a7, 31
	bgt	a4, a7, .L156
	sd	a4, 32(sp)
.L157:
	ld	s2, 24(sp)
	add	s3, s2, a4
	addi	a0, s3, -1
	call	camlComb_group.more_405@plt
.L162:
	ld	a4, 32(sp)
	mv	s6, a4
	addi	a4, a4, 2
	sd	a4, 32(sp)
	li	s9, 31
	beq	s6, s9, .L156
	ld	t1, 0(s11)
	bgeu	s10, t1, .L157
	j	.L164
.L156:
	li	t2, 1023
	ld	s4, 16(sp)
	ld	t3, -8(s4)
	bleu	t3, t2, .L165
	ld	t4, 0(s4)
	ld	s5, 24(sp)
	bne	t4, s5, .L155
	addi	t5, s5, 2
	li	t6, 2047
	bleu	t3, t6, .L165
	ld	a0, 8(s4)
	sub	a1, a0, t5
	seqz	a1, a1
	slli	a2, a1, 1
	addi	a1, a2, 1
	j	.L154
.L155:
	li	a1, 1
.L154:
	la	a0, camlComb_group.19
	call	camlComb_group.check_275@plt
.L167:
	ld	s6, 24(sp)
	addi	a7, s6, 4
	li	s2, 1023
	ld	s7, 8(sp)
	ld	s3, -8(s7)
	bleu	s3, s2, .L165
	ld	s4, 0(s7)
	bne	s4, a7, .L153
	addi	s5, s6, 8
	li	s6, 3071
	bleu	s3, s6, .L165
	ld	s8, 16(s7)
	sub	s9, s8, s5
	seqz	s9, s9
	slli	t2, s9, 1
	addi	a1, t2, 1
	j	.L152
.L153:
	li	a1, 1
.L152:
	la	a0, camlComb_group.20
	call	camlComb_group.check_275@plt
.L168:
	ld	s8, 24(sp)
	addi	s0, s8, 10
	ld	s9, 0(sp)
	ld	a0, 16(s9)
	li	a1, 1023
	ld	a2, -8(a0)
	bleu	a2, a1, .L165
	ld	a3, 0(a0)
	sub	a4, a3, s0
	seqz	a4, a4
	slli	a5, a4, 1
	addi	a1, a5, 1
	la	a0, camlComb_group.21
	ld	ra, 40(sp)
	addi	sp, sp, 48
	.cfi_adjust_cfa_offset	-48
	tail	camlComb_group.check_275@plt
.L164:
	call	caml_call_gc@plt
.L163:
	j	.L157
.L165:
	call	caml_ml_array_bound_error@plt
.L166:
.L159:
	li	t1, 38
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L160
	.cfi_endproc
	.size	camlComb_group.clobber_410, . - camlComb_group.clobber_410
	.globl	camlComb_group.survives_501
	.type	camlComb_group.survives_501, @function
	.text
	.align	2
camlComb_group.survives_501:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 336
	bltu	sp, t1, .L171
.L172:
	addi	sp, sp, -24
	.cfi_adjust_cfa_offset	24
	sd	ra, 16(sp)
	.cfi_offset 1, -8
.L170:
	sd	a0, 0(sp)
	mv	a0, a1
	call	camlComb_group.mk_323@plt
.L173:
	mv	a1, a0
	ld	s2, 0(sp)
	andi	a4, s2, 127
	la	a5, camlComb_group
	ld	a6, 64(a5)
	ld	a7, -8(a6)
	srli	s3, a7, 9
	bleu	s3, a4, .L174
	slli	s3, a4, 2
	add	s4, a6, s3
	addi	a0, s4, -4
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_modify@plt
	mv	sp, s0
	.cfi_restore_state
	addi	s6, s2, 64
	andi	s7, s6, 127
	la	s8, camlComb_group
	ld	s9, 64(s8)
	ld	t2, -8(s9)
	srli	t3, t2, 9
	bleu	t3, s7, .L174
	slli	t4, s7, 2
	add	t5, s9, t4
	ld	t6, -4(t5)
	ld	s0, 0(t6)
	li	a0, 1
	ld	a1, -8(s0)
	srli	a2, a1, 9
	ori	a3, a2, 1
	ble	a3, a0, .L169
	sd	t6, 8(sp)
	ld	a5, 8(t6)
	sd	a5, 0(sp)
	li	a6, 3
	li	a7, 1023
	bleu	a1, a7, .L174
	ld	s3, 0(s0)
	li	s4, 2047
	bleu	a1, s4, .L174
	ld	s6, 8(s0)
	sub	s7, s6, s3
	addi	s8, s7, 1
	sub	s9, s8, a6
	seqz	s9, s9
	slli	t2, s9, 1
	addi	a1, t2, 1
	la	a0, camlComb_group.24
	call	camlComb_group.check_275@plt
.L176:
	li	t5, 5
	li	t6, 1023
	ld	a2, 0(sp)
	ld	s0, -8(a2)
	bleu	s0, t6, .L174
	ld	a0, 0(a2)
	li	a1, 3071
	bleu	s0, a1, .L174
	ld	a3, 16(a2)
	sub	a4, a3, a0
	addi	a5, a4, 1
	sub	a6, a5, t5
	seqz	a6, a6
	slli	a7, a6, 1
	addi	a1, a7, 1
	la	a0, camlComb_group.25
	call	camlComb_group.check_275@plt
.L177:
	li	s4, 3
	ld	t6, 8(sp)
	ld	s5, 16(t6)
	ld	s6, -8(s5)
	srli	s7, s6, 9
	ori	s8, s7, 1
	sub	s9, s8, s4
	seqz	s9, s9
	slli	t2, s9, 1
	addi	a1, t2, 1
	la	a0, camlComb_group.26
	ld	ra, 16(sp)
	addi	sp, sp, 24
	.cfi_adjust_cfa_offset	-24
	tail	camlComb_group.check_275@plt
.L169:
	li	a0, 1
	ld	ra, 16(sp)
	addi	sp, sp, 24
	.cfi_adjust_cfa_offset	-24
	ret
.L174:
	call	caml_ml_array_bound_error@plt
.L175:
.L171:
	li	t1, 35
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L172
	.cfi_endproc
	.size	camlComb_group.survives_501, . - camlComb_group.survives_501
	.section .data
	.quad	2044
camlComb_group.9:
	.byte	98,46,40,48,41
	.space	2
	.byte	2
	.section .data
	.quad	2044
camlComb_group.8:
	.byte	97,46,40,49,41
	.space	2
	.byte	2
	.section .data
	.quad	2044
camlComb_group.7:
	.byte	97,46,40,48,41
	.space	2
	.byte	2
	.section .data
	.quad	2816
camlComb_group.6:
	.quad	camlComb_group.4
	.quad	camlComb_group.5
	.section .data
	.quad	3068
camlComb_group.5:
	.byte	70,65,73,76,32,37,115,10
	.space	7
	.byte	7
	.section .data
	.quad	2827
camlComb_group.4:
	.quad	camlComb_group.1
	.quad	camlComb_group.3
	.section .data
	.quad	2816
camlComb_group.34:
	.quad	camlComb_group.32
	.quad	camlComb_group.33
	.section .data
	.quad	5116
camlComb_group.33:
	.byte	99,111,109,98,95,103,114,111,117,112,58,32,37,100,32,102
	.byte	97,105,108,117,114,101,115,10
	.space	7
	.byte	7
	.section .data
	.quad	2827
camlComb_group.32:
	.quad	camlComb_group.28
	.quad	camlComb_group.31
	.section .data
	.quad	4868
camlComb_group.31:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlComb_group.30
	.section .data
	.quad	2827
camlComb_group.30:
	.quad	camlComb_group.29
	.quad	1
	.section .data
	.quad	2818
camlComb_group.3:
	.quad	1
	.quad	camlComb_group.2
	.section .data
	.quad	3068
camlComb_group.29:
	.byte	32,102,97,105,108,117,114,101,115,10
	.space	5
	.byte	5
	.section .data
	.quad	3068
camlComb_group.28:
	.byte	99,111,109,98,95,103,114,111,117,112,58,32
	.space	3
	.byte	3
	.section .data
	.quad	3068
camlComb_group.27:
	.byte	99,111,109,98,95,103,114,111,117,112,58,32,111,107
	.space	1
	.byte	1
	.section .data
	.quad	3068
camlComb_group.26:
	.byte	112,114,111,109,111,116,101,100,32,99
	.space	5
	.byte	5
	.section .data
	.quad	3068
camlComb_group.25:
	.byte	112,114,111,109,111,116,101,100,32,98
	.space	5
	.byte	5
	.section .data
	.quad	3068
camlComb_group.24:
	.byte	112,114,111,109,111,116,101,100,32,97
	.space	5
	.byte	5
	.section .data
	.quad	3840
camlComb_group.23:
	.quad	camlComb_group.22
	.quad	camlComb_group.22
	.quad	camlComb_group.22
	.section .data
	.quad	768
camlComb_group.22:
	.section .data
	.quad	4092
camlComb_group.21:
	.byte	99,32,97,102,116,101,114,32,108,97,116,101,114,32,97,108
	.byte	108,111,99,115
	.space	3
	.byte	3
	.section .data
	.quad	4092
camlComb_group.20:
	.byte	98,32,97,102,116,101,114,32,108,97,116,101,114,32,97,108
	.byte	108,111,99,115
	.space	3
	.byte	3
	.section .data
	.quad	2828
camlComb_group.2:
	.quad	21
	.quad	1
	.section .data
	.quad	4092
camlComb_group.19:
	.byte	97,32,97,102,116,101,114,32,108,97,116,101,114,32,97,108
	.byte	108,111,99,115
	.space	3
	.byte	3
	.section .data
	.quad	3068
camlComb_group.18:
	.byte	110,111,32,111,118,101,114,108,97,112,32,99
	.space	3
	.byte	3
	.section .data
	.quad	3068
camlComb_group.17:
	.byte	110,111,32,111,118,101,114,108,97,112,32,98
	.space	3
	.byte	3
	.section .data
	.quad	3068
camlComb_group.16:
	.byte	110,111,32,111,118,101,114,108,97,112,32,97
	.space	3
	.byte	3
	.section .data
	.quad	2044
camlComb_group.15:
	.byte	114
	.space	6
	.byte	6
	.section .data
	.quad	2044
camlComb_group.14:
	.byte	113
	.space	6
	.byte	6
	.section .data
	.quad	2044
camlComb_group.13:
	.byte	112,46,40,48,41
	.space	2
	.byte	2
	.section .data
	.quad	2044
camlComb_group.12:
	.byte	99,46,40,48,41
	.space	2
	.byte	2
	.section .data
	.quad	2044
camlComb_group.11:
	.byte	98,46,40,50,41
	.space	2
	.byte	2
	.section .data
	.quad	2044
camlComb_group.10:
	.byte	98,46,40,49,41
	.space	2
	.byte	2
	.section .data
	.quad	2044
camlComb_group.1:
	.byte	70,65,73,76,32
	.space	2
	.byte	2
	.globl	camlComb_group.entry
	.type	camlComb_group.entry, @function
	.text
	.align	2
camlComb_group.entry:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L184
.L185:
	addi	sp, sp, -16
	.cfi_adjust_cfa_offset	16
	sd	ra, 8(sp)
	.cfi_offset 1, -8
.L183:
	call	caml_alloc1@plt
.L186:
	addi	a1, s10, 8
	li	a2, 1024
	sd	a2, -8(a1)
	li	a2, 1
	sd	a2, 0(a1)
	la	a0, camlComb_group
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlComb_group.42
	la	a5, camlComb_group
	addi	a0, a5, 8
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlComb_group.41
	la	s2, camlComb_group
	addi	a0, s2, 16
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlComb_group.40
	la	s5, camlComb_group
	addi	a0, s5, 24
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlComb_group.39
	la	s8, camlComb_group
	addi	a0, s8, 32
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlComb_group.38
	la	t3, camlComb_group
	addi	a0, t3, 40
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlComb_group.37
	la	t6, camlComb_group
	addi	a0, t6, 48
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlComb_group.36
	la	a2, camlComb_group
	addi	a0, a2, 56
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlComb_group.23
	li	a0, 129
	la	t2, caml_array_make
	call	caml_c_call@plt
.L187:
	mv	a1, a0
	la	a6, camlComb_group
	addi	a0, a6, 64
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlComb_group.35
	la	s3, camlComb_group
	addi	a0, s3, 72
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	li	a0, 1
	li	s8, 4000001
	bgt	a0, s8, .L180
	sd	a0, 0(sp)
.L181:
	call	camlComb_group.contents_335@plt
.L188:
	ld	a0, 0(sp)
	call	camlComb_group.overlap_399@plt
.L189:
	ld	a0, 0(sp)
	call	camlComb_group.clobber_410@plt
.L190:
	ld	a0, 0(sp)
	mv	a1, a0
	call	camlComb_group.survives_501@plt
.L191:
	ld	t6, 0(sp)
	li	s0, 131071
	and	a0, t6, s0
	li	a1, 1
	bne	a0, a1, .L182
	li	a0, 1
	la	t2, caml_gc_minor
	call	caml_c_call@plt
.L192:
.L182:
	ld	a0, 0(sp)
	mv	a3, a0
	addi	a0, a0, 2
	sd	a0, 0(sp)
	li	a6, 4000001
	beq	a3, a6, .L180
	ld	t1, 0(s11)
	bgeu	s10, t1, .L181
	j	.L194
.L180:
	li	a0, 1
	la	t2, caml_gc_full_major
	call	caml_c_call@plt
.L195:
	li	s2, 1
	la	s3, camlComb_group
	ld	s4, 0(s3)
	ld	s5, 0(s4)
	bne	s5, s2, .L179
	la	a0, camlComb_group.27
	call	camlStdlib.print_endline_369@plt
.L196:
	j	.L178
.L179:
	sd	s5, 0(sp)
	la	a1, camlComb_group.34
	la	t4, camlStdlib
	ld	a0, 304(t4)
	call	camlStdlib__Printf.fprintf_433@plt
.L197:
	mv	a1, a0
	ld	s0, 0(a1)
	ld	a0, 0(sp)
	jalr	s0
.L198:
.L178:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	ret
.L194:
	call	caml_call_gc@plt
.L193:
	j	.L181
.L184:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L185
	.cfi_endproc
	.size	camlComb_group.entry, . - camlComb_group.entry
	.section .data
	.text
	.globl	camlComb_group.code_end
	.type	camlComb_group.code_end, @object
camlComb_group.code_end:
	.long	0
	.section .data
	.globl	camlComb_group.data_end
	.type	camlComb_group.data_end, @object
	.quad	0
camlComb_group.data_end:
	.quad	0
	.section .data
	.globl	camlComb_group.frametable
	.type	camlComb_group.frametable, @object
camlComb_group.frametable:
	.quad	42
	.quad	.L198
	.short	17
	.short	0
	.align	2
	.long	(.L199 - .) + 0x0
	.align	3
	.quad	.L197
	.short	17
	.short	0
	.align	2
	.long	(.L200 - .) + 0x0
	.align	3
	.quad	.L196
	.short	17
	.short	0
	.align	2
	.long	(.L201 - .) + 0x0
	.align	3
	.quad	.L195
	.short	17
	.short	0
	.align	2
	.long	(.L202 - .) + 0x0
	.align	3
	.quad	.L193
	.short	18
	.short	0
	.byte	0
	.align	3
	.quad	.L192
	.short	17
	.short	0
	.align	2
	.long	(.L203 - .) + 0x0
	.align	3
	.quad	.L191
	.short	17
	.short	0
	.align	2
	.long	(.L204 - .) + 0x0
	.align	3
	.quad	.L190
	.short	17
	.short	0
	.align	2
	.long	(.L205 - .) + 0x0
	.align	3
	.quad	.L189
	.short	17
	.short	0
	.align	2
	.long	(.L206 - .) + 0x0
	.align	3
	.quad	.L188
	.short	17
	.short	0
	.align	2
	.long	(.L207 - .) + 0x0
	.align	3
	.quad	.L187
	.short	17
	.short	0
	.align	2
	.long	(.L208 - .) + 0x0
	.align	3
	.quad	.L186
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L177
	.short	25
	.short	1
	.short	8
	.align	2
	.long	(.L209 - .) + 0x0
	.align	3
	.quad	.L176
	.short	25
	.short	2
	.short	0
	.short	8
	.align	2
	.long	(.L210 - .) + 0x0
	.align	3
	.quad	.L175
	.short	25
	.short	0
	.align	2
	.long	(.L211 - .) + 0x0
	.align	3
	.quad	.L173
	.short	25
	.short	0
	.align	2
	.long	(.L212 - .) + 0x0
	.align	3
	.quad	.L168
	.short	49
	.short	1
	.short	0
	.align	2
	.long	(.L213 - .) + 0x0
	.align	3
	.quad	.L167
	.short	49
	.short	2
	.short	0
	.short	8
	.align	2
	.long	(.L214 - .) + 0x0
	.align	3
	.quad	.L166
	.short	49
	.short	0
	.align	2
	.long	(.L215 - .) + 0x0
	.align	3
	.quad	.L163
	.short	50
	.short	3
	.short	0
	.short	8
	.short	16
	.byte	0
	.align	3
	.quad	.L162
	.short	49
	.short	3
	.short	0
	.short	8
	.short	16
	.align	2
	.long	(.L216 - .) + 0x0
	.align	3
	.quad	.L161
	.short	49
	.short	0
	.align	2
	.long	(.L217 - .) + 0x0
	.align	3
	.quad	.L149
	.short	10
	.short	0
	.byte	3
	.byte	1
	.byte	2
	.byte	1
	.align	3
	.quad	.L147
	.short	33
	.short	1
	.short	0
	.align	2
	.long	(.L218 - .) + 0x0
	.align	3
	.quad	.L146
	.short	33
	.short	2
	.short	0
	.short	8
	.align	2
	.long	(.L219 - .) + 0x0
	.align	3
	.quad	.L145
	.short	33
	.short	0
	.align	2
	.long	(.L220 - .) + 0x0
	.align	3
	.quad	.L143
	.short	33
	.short	0
	.align	2
	.long	(.L221 - .) + 0x0
	.align	3
	.quad	.L135
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L222 - .) + 0x0
	.align	3
	.quad	.L134
	.short	41
	.short	2
	.short	0
	.short	8
	.align	2
	.long	(.L223 - .) + 0x0
	.align	3
	.quad	.L133
	.short	41
	.short	0
	.align	2
	.long	(.L224 - .) + 0x0
	.align	3
	.quad	.L132
	.short	41
	.short	0
	.align	2
	.long	(.L225 - .) + 0x0
	.align	3
	.quad	.L131
	.short	41
	.short	1
	.short	16
	.align	2
	.long	(.L226 - .) + 0x0
	.align	3
	.quad	.L130
	.short	41
	.short	2
	.short	8
	.short	16
	.align	2
	.long	(.L227 - .) + 0x0
	.align	3
	.quad	.L129
	.short	41
	.short	2
	.short	8
	.short	16
	.align	2
	.long	(.L228 - .) + 0x0
	.align	3
	.quad	.L128
	.short	41
	.short	2
	.short	8
	.short	16
	.align	2
	.long	(.L229 - .) + 0x0
	.align	3
	.quad	.L127
	.short	41
	.short	3
	.short	0
	.short	8
	.short	16
	.align	2
	.long	(.L230 - .) + 0x0
	.align	3
	.quad	.L126
	.short	41
	.short	0
	.align	2
	.long	(.L231 - .) + 0x0
	.align	3
	.quad	.L124
	.short	41
	.short	0
	.align	2
	.long	(.L232 - .) + 0x0
	.align	3
	.quad	.L114
	.short	10
	.short	0
	.byte	4
	.byte	2
	.byte	1
	.byte	5
	.byte	0
	.align	3
	.quad	.L110
	.short	10
	.short	0
	.byte	4
	.byte	2
	.byte	0
	.byte	2
	.byte	1
	.align	3
	.quad	.L108
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L200 - .) + 0x0
	.align	3
	.quad	.L105
	.short	18
	.short	1
	.short	1
	.byte	0
	.align	3
	.align	2
.L212:
	.long	(.L234 - .) + 0x0
	.long	0x29858d0
	.align	2
.L222:
	.long	(.L235 - .) + 0x0
	.long	0x1500960
	.align	2
.L208:
	.long	(.L236 - .) + 0x0
	.long	0x2802d58
	.align	2
.L200:
	.long	(.L238 - .) + 0x0
	.long	0xf84518
	.align	2
.L228:
	.long	(.L235 - .) + 0x0
	.long	0x12008f8
	.align	2
.L213:
	.long	(.L239 - .) + 0x0
	.long	0x25809f8
	.align	2
.L216:
	.long	(.L239 - .) + 0x0
	.long	0x2408170
	.align	2
.L226:
	.long	(.L235 - .) + 0x0
	.long	0x13008f8
	.align	2
.L204:
	.long	(.L240 - .) + 0x0
	.long	0x3101080
	.align	2
.L225:
	.long	(.L235 - .) + 0x0
	.long	0x13808f8
	.align	2
.L224:
	.long	(.L235 - .) + 0x0
	.long	0x14048b8
	.align	2
.L201:
	.long	(.L240 - .) + 0x0
	.long	0x33061b0
	.align	2
.L219:
	.long	(.L241 - .) + 0x0
	.long	0x1a009c0
	.align	2
.L230:
	.long	(.L235 - .) + 0x0
	.long	0x11008d8
	.align	2
.L227:
	.long	(.L235 - .) + 0x0
	.long	0x12808f8
	.align	2
.L221:
	.long	(.L241 - .) + 0x0
	.long	0x18048b0
	.align	2
.L215:
	.long	(.L239 - .) + 0x0
	.long	0x2508128
	.align	2
.L223:
	.long	(.L235 - .) + 0x0
	.long	0x14808d8
	.align	2
.L211:
	.long	(.L234 - .) + 0x0
	.long	0x29808d0
	.align	2
.L207:
	.long	(.L240 - .) + 0x0
	.long	0x2f81070
	.align	2
.L232:
	.long	(.L235 - .) + 0x0
	.long	0x10848b0
	.align	2
.L220:
	.long	(.L241 - .) + 0x0
	.long	0x1880888
	.align	2
.L206:
	.long	(.L240 - .) + 0x0
	.long	0x3001068
	.align	2
.L199:
	.long	(.L240 - .) + 0x0
	.long	0x3381dd0
	.align	2
.L229:
	.long	(.L235 - .) + 0x0
	.long	0x11808f8
	.align	2
.L218:
	.long	(.L241 - .) + 0x0
	.long	0x1a80a48
	.align	2
.L217:
	.long	(.L239 - .) + 0x0
	.long	0x23048b0
	.align	2
.L210:
	.long	(.L234 - .) + 0x0
	.long	0x2b01150
	.align	2
.L214:
	.long	(.L239 - .) + 0x0
	.long	0x25009d8
	.align	2
.L231:
	.long	(.L235 - .) + 0x0
	.long	0x11044b0
	.align	2
.L209:
	.long	(.L234 - .) + 0x0
	.long	0x2b81150
	.align	2
.L205:
	.long	(.L240 - .) + 0x0
	.long	0x3081068
	.align	2
.L202:
	.long	(.L240 - .) + 0x0
	.long	0x3280890
	.align	2
.L203:
	.long	(.L240 - .) + 0x0
	.long	0x3187948
.L233:
	.byte	99,111,109,98,95,103,114,111,117,112,46,109,108,0
.L237:
	.byte	112,114,105,110,116,102,46,109,108,0
	.align	2
.L234:
	.long	(.L233 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,46,115,117,114,118,105
	.byte	118,101,115,0
	.align	2
.L239:
	.long	(.L233 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,46,99,108,111,98,98
	.byte	101,114,0
	.align	2
.L235:
	.long	(.L233 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,46,99,111,110,116,101
	.byte	110,116,115,0
	.align	2
.L241:
	.long	(.L233 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,46,111,118,101,114,108
	.byte	97,112,0
	.align	2
.L238:
	.long	(.L237 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.align	2
.L240:
	.long	(.L233 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,0
	.align	2
.L236:
	.long	(.L233 - .) + 0x0
	.byte	67,111,109,98,95,103,114,111,117,112,46,108,105,118,101,0
	.align	3
	.size	camlComb_group.frametable, . - camlComb_group.frametable
	.section .note.GNU-stack,"",%progbits
