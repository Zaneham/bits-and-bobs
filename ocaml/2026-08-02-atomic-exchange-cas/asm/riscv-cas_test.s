	.option pic
	.file ""
	.section .data
	.globl	camlCas_test.data_begin
	.type	camlCas_test.data_begin, @object
camlCas_test.data_begin:
	.text
	.globl	camlCas_test.code_begin
	.type	camlCas_test.code_begin, @object
camlCas_test.code_begin:
	.section .data
	.section .data
	.quad	4087
camlCas_test.29:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlCas_test.check_279
	.section .data
	.quad	1792
	.globl	camlCas_test
	.type	camlCas_test, @object
camlCas_test:
	.quad	1
	.section .data
	.globl	camlCas_test.gc_roots
	.type	camlCas_test.gc_roots, @object
camlCas_test.gc_roots:
	.quad	camlCas_test
	.quad	0
	.globl	camlCas_test.check_279
	.type	camlCas_test.check_279, @function
	.text
	.align	2
camlCas_test.check_279:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L102
.L103:
	addi	sp, sp, -16
	.cfi_adjust_cfa_offset	16
	sd	ra, 8(sp)
	.cfi_offset 1, -8
.L101:
	li	a2, 1
	beq	a1, a2, .L100
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	ret
.L100:
	sd	a0, 0(sp)
	la	a1, camlCas_test.6
	la	a5, camlStdlib
	ld	a0, 304(a5)
	call	camlStdlib__Printf.fprintf_433@plt
.L104:
	mv	a1, a0
	ld	s2, 0(a1)
	ld	a0, 0(sp)
	jalr	s2
.L105:
	li	a0, 3
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	tail	camlStdlib.exit_480@plt
.L102:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L103
	.cfi_endproc
	.size	camlCas_test.check_279, . - camlCas_test.check_279
	.section .data
	.quad	3068
camlCas_test.9:
	.byte	99,97,115,45,111,107,45,114,101,115,117,108,116
	.space	2
	.byte	2
	.section .data
	.quad	3068
camlCas_test.8:
	.byte	99,97,115,45,102,97,105,108,45,118,97,108,117,101
	.space	1
	.byte	1
	.section .data
	.quad	3068
camlCas_test.7:
	.byte	99,97,115,45,102,97,105,108,45,114,101,115,117,108,116
	.byte	0
	.section .data
	.quad	2816
camlCas_test.6:
	.quad	camlCas_test.4
	.quad	camlCas_test.5
	.section .data
	.quad	3068
camlCas_test.5:
	.byte	70,65,73,76,32,37,115,10
	.space	7
	.byte	7
	.section .data
	.quad	2827
camlCas_test.4:
	.quad	camlCas_test.1
	.quad	camlCas_test.3
	.section .data
	.quad	2818
camlCas_test.3:
	.quad	1
	.quad	camlCas_test.2
	.section .data
	.quad	2044
camlCas_test.28:
	.byte	97,108,108,32,111,107
	.space	1
	.byte	1
	.section .data
	.quad	3068
camlCas_test.27:
	.byte	99,97,115,45,108,111,111,112
	.space	7
	.byte	7
	.section .data
	.quad	3068
camlCas_test.26:
	.byte	99,97,115,45,98,114,97,110,99,104
	.space	5
	.byte	5
	.section .data
	.quad	2044
camlCas_test.25:
	.byte	110,111
	.space	5
	.byte	5
	.section .data
	.quad	2044
camlCas_test.24:
	.byte	121,101,115
	.space	4
	.byte	4
	.section .data
	.quad	3068
camlCas_test.23:
	.byte	99,97,115,45,98,111,111,108,45,102,97,105,108
	.space	2
	.byte	2
	.section .data
	.quad	3068
camlCas_test.22:
	.byte	99,97,115,45,98,111,111,108,45,118,97,108,117,101
	.space	1
	.byte	1
	.section .data
	.quad	3068
camlCas_test.21:
	.byte	99,97,115,45,98,111,111,108
	.space	7
	.byte	7
	.section .data
	.quad	3068
camlCas_test.20:
	.byte	101,120,99,104,45,110,101,119,50
	.space	6
	.byte	6
	.section .data
	.quad	2828
camlCas_test.2:
	.quad	21
	.quad	1
	.section .data
	.quad	3068
camlCas_test.19:
	.byte	101,120,99,104,45,111,108,100,50
	.space	6
	.byte	6
	.section .data
	.quad	3068
camlCas_test.18:
	.byte	101,120,99,104,45,110,101,119
	.space	7
	.byte	7
	.section .data
	.quad	3068
camlCas_test.17:
	.byte	101,120,99,104,45,111,108,100
	.space	7
	.byte	7
	.section .data
	.quad	3068
camlCas_test.16:
	.byte	99,97,115,45,115,97,109,101,45,118,97,108,117,101
	.space	1
	.byte	1
	.section .data
	.quad	3068
camlCas_test.15:
	.byte	99,97,115,45,115,97,109,101
	.space	7
	.byte	7
	.section .data
	.quad	3068
camlCas_test.14:
	.byte	99,97,115,45,122,101,114,111,45,118,97,108,117,101
	.space	1
	.byte	1
	.section .data
	.quad	3068
camlCas_test.13:
	.byte	99,97,115,45,122,101,114,111
	.space	7
	.byte	7
	.section .data
	.quad	3068
camlCas_test.12:
	.byte	99,97,115,45,110,101,103,45,118,97,108,117,101
	.space	2
	.byte	2
	.section .data
	.quad	2044
camlCas_test.11:
	.byte	99,97,115,45,110,101,103
	.byte	0
	.section .data
	.quad	3068
camlCas_test.10:
	.byte	99,97,115,45,111,107,45,118,97,108,117,101
	.space	3
	.byte	3
	.section .data
	.quad	2044
camlCas_test.1:
	.byte	70,65,73,76,32
	.space	2
	.byte	2
	.globl	camlCas_test.entry
	.type	camlCas_test.entry, @function
	.text
	.align	2
camlCas_test.entry:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L112
.L113:
	addi	sp, sp, -16
	.cfi_adjust_cfa_offset	16
	sd	ra, 8(sp)
	.cfi_offset 1, -8
.L111:
	la	a1, camlCas_test.29
	la	a0, camlCas_test
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	call	caml_alloc1@plt
.L114:
	addi	a2, s10, 8
	sd	a2, 0(sp)
	li	a3, 1024
	sd	a3, -8(a2)
	li	a4, 21
	sd	a4, 0(a2)
	li	a5, 85
	li	a6, 199
.L115:
	lr.d.aqrl	a7, (a2)
	bne	a7, a6, .L116
	sc.d.rl	a7, a5, (a2)
	bnez	a7, .L115
	li	a7, 1
	j	.L117
.L116:
	li	a7, 0
.L117:
	slli	s2, a7, 1
	addi	s3, s2, 1
	li	s4, 1
	sub	s5, s3, s4
	seqz	s5, s5
	slli	s6, s5, 1
	addi	a1, s6, 1
	la	a0, camlCas_test.7
	call	camlCas_test.check_279@plt
.L118:
	li	s9, 21
	ld	s0, 0(sp)
	fence	rw, rw
	ld	t2, 0(s0)
	fence	r, rw
	sub	t3, t2, s9
	seqz	t3, t3
	slli	t4, t3, 1
	addi	a1, t4, 1
	la	a0, camlCas_test.8
	call	camlCas_test.check_279@plt
.L119:
	li	s0, 85
	li	a0, 21
	ld	a2, 0(sp)
.L120:
	lr.d.aqrl	a1, (a2)
	bne	a1, a0, .L121
	sc.d.rl	a1, s0, (a2)
	bnez	a1, .L120
	li	a1, 1
	j	.L122
.L121:
	li	a1, 0
.L122:
	slli	a2, a1, 1
	addi	a3, a2, 1
	li	a4, 3
	sub	a5, a3, a4
	seqz	a5, a5
	slli	a6, a5, 1
	addi	a1, a6, 1
	la	a0, camlCas_test.9
	call	camlCas_test.check_279@plt
.L123:
	li	s3, 85
	ld	a1, 0(sp)
	fence	rw, rw
	ld	s4, 0(a1)
	fence	r, rw
	sub	s5, s4, s3
	seqz	s5, s5
	slli	s6, s5, 1
	addi	a1, s6, 1
	la	a0, camlCas_test.10
	call	camlCas_test.check_279@plt
.L124:
	li	s9, -13
	li	t2, 85
	ld	a2, 0(sp)
.L125:
	lr.d.aqrl	t3, (a2)
	bne	t3, t2, .L126
	sc.d.rl	t3, s9, (a2)
	bnez	t3, .L125
	li	t3, 1
	j	.L127
.L126:
	li	t3, 0
.L127:
	slli	t4, t3, 1
	addi	t5, t4, 1
	li	t6, 3
	sub	s0, t5, t6
	seqz	s0, s0
	slli	a0, s0, 1
	addi	a1, a0, 1
	la	a0, camlCas_test.11
	call	camlCas_test.check_279@plt
.L128:
	li	a3, -13
	ld	a4, 0(sp)
	fence	rw, rw
	ld	a4, 0(a4)
	fence	r, rw
	sub	a5, a4, a3
	seqz	a5, a5
	slli	a6, a5, 1
	addi	a1, a6, 1
	la	a0, camlCas_test.12
	call	camlCas_test.check_279@plt
.L129:
	li	s3, 1
	li	s4, -13
	ld	a4, 0(sp)
.L130:
	lr.d.aqrl	s5, (a4)
	bne	s5, s4, .L131
	sc.d.rl	s5, s3, (a4)
	bnez	s5, .L130
	li	s5, 1
	j	.L132
.L131:
	li	s5, 0
.L132:
	slli	s6, s5, 1
	addi	s7, s6, 1
	li	s8, 3
	sub	s9, s7, s8
	seqz	s9, s9
	slli	t2, s9, 1
	addi	a1, t2, 1
	la	a0, camlCas_test.13
	call	camlCas_test.check_279@plt
.L133:
	li	t5, 1
	ld	a5, 0(sp)
	fence	rw, rw
	ld	t6, 0(a5)
	fence	r, rw
	sub	s0, t6, t5
	seqz	s0, s0
	slli	a0, s0, 1
	addi	a1, a0, 1
	la	a0, camlCas_test.14
	call	camlCas_test.check_279@plt
.L134:
	li	a3, 1
	li	a4, 1
	ld	a6, 0(sp)
.L135:
	lr.d.aqrl	a5, (a6)
	bne	a5, a4, .L136
	sc.d.rl	a5, a3, (a6)
	bnez	a5, .L135
	li	a5, 1
	j	.L137
.L136:
	li	a5, 0
.L137:
	slli	a6, a5, 1
	addi	a7, a6, 1
	li	s2, 3
	sub	s3, a7, s2
	seqz	s3, s3
	slli	s4, s3, 1
	addi	a1, s4, 1
	la	a0, camlCas_test.15
	call	camlCas_test.check_279@plt
.L138:
	li	s7, 1
	ld	a7, 0(sp)
	fence	rw, rw
	ld	s8, 0(a7)
	fence	r, rw
	sub	s9, s8, s7
	seqz	s9, s9
	slli	t2, s9, 1
	addi	a1, t2, 1
	la	a0, camlCas_test.16
	call	camlCas_test.check_279@plt
.L139:
	li	t5, 11
	ld	s2, 0(sp)
	amoswap.d.aqrl	t6, t5, (s2)
	li	s0, 1
	sub	a0, t6, s0
	seqz	a0, a0
	slli	a1, a0, 1
	addi	a1, a1, 1
	la	a0, camlCas_test.17
	call	camlCas_test.check_279@plt
.L140:
	li	a4, 11
	ld	s3, 0(sp)
	fence	rw, rw
	ld	a5, 0(s3)
	fence	r, rw
	sub	a6, a5, a4
	seqz	a6, a6
	slli	a7, a6, 1
	addi	a1, a7, 1
	la	a0, camlCas_test.18
	call	camlCas_test.check_279@plt
.L141:
	li	s4, -1
	ld	s6, 0(sp)
	amoswap.d.aqrl	s5, s4, (s6)
	li	s6, 11
	sub	s7, s5, s6
	seqz	s7, s7
	slli	s8, s7, 1
	addi	a1, s8, 1
	la	a0, camlCas_test.19
	call	camlCas_test.check_279@plt
.L142:
	li	t3, -1
	ld	s5, 0(sp)
	fence	rw, rw
	ld	t4, 0(s5)
	fence	r, rw
	sub	t5, t4, t3
	seqz	t5, t5
	slli	t6, t5, 1
	addi	a1, t6, 1
	la	a0, camlCas_test.20
	call	camlCas_test.check_279@plt
.L143:
	call	caml_alloc1@plt
.L144:
	addi	a1, s10, 8
	sd	a1, 0(sp)
	li	a2, 1024
	sd	a2, -8(a1)
	li	a3, 3
	sd	a3, 0(a1)
	li	a4, 1
	li	a5, 3
.L145:
	lr.d.aqrl	a6, (a1)
	bne	a6, a5, .L146
	sc.d.rl	a6, a4, (a1)
	bnez	a6, .L145
	li	a6, 1
	j	.L147
.L146:
	li	a6, 0
.L147:
	slli	a7, a6, 1
	addi	s2, a7, 1
	li	s3, 3
	sub	s4, s2, s3
	seqz	s4, s4
	slli	s5, s4, 1
	addi	a1, s5, 1
	la	a0, camlCas_test.21
	call	camlCas_test.check_279@plt
.L148:
	li	s8, 1
	ld	s6, 0(sp)
	fence	rw, rw
	ld	s9, 0(s6)
	fence	r, rw
	sub	t2, s9, s8
	seqz	t2, t2
	slli	t3, t2, 1
	addi	a1, t3, 1
	la	a0, camlCas_test.22
	call	camlCas_test.check_279@plt
.L149:
	li	t6, 1
	li	s0, 3
	ld	s7, 0(sp)
.L150:
	lr.d.aqrl	a0, (s7)
	bne	a0, s0, .L151
	sc.d.rl	a0, t6, (s7)
	bnez	a0, .L150
	li	a0, 1
	j	.L152
.L151:
	li	a0, 0
.L152:
	slli	a1, a0, 1
	addi	a2, a1, 1
	li	a3, 1
	sub	a4, a2, a3
	seqz	a4, a4
	slli	a5, a4, 1
	addi	a1, a5, 1
	la	a0, camlCas_test.23
	call	camlCas_test.check_279@plt
.L153:
	call	caml_alloc1@plt
.L154:
	addi	s2, s10, 8
	sd	s2, 0(sp)
	li	s3, 1024
	sd	s3, -8(s2)
	li	s4, 3
	sd	s4, 0(s2)
	li	s5, 5
	li	s6, 3
.L155:
	lr.d.aqrl	s7, (s2)
	bne	s7, s6, .L156
	sc.d.rl	s7, s5, (s2)
	bnez	s7, .L155
	li	s7, 1
	j	.L157
.L156:
	li	s7, 0
.L157:
	beqz	s7, .L110
	la	a0, camlCas_test.24
	j	.L109
.L110:
	la	a0, camlCas_test.25
.L109:
	la	a1, camlCas_test.24
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_string_equal@plt
	mv	sp, s0
	.cfi_restore_state
	mv	a1, a0
	la	a0, camlCas_test.26
	call	camlCas_test.check_279@plt
.L158:
	li	s0, 1
	li	a0, 3
	li	a2, 2001
	bgt	a0, a2, .L106
.L107:
	li	a3, 5
	li	a4, 5
	ld	s8, 0(sp)
.L159:
	lr.d.aqrl	a5, (s8)
	bne	a5, a4, .L160
	sc.d.rl	a5, a3, (s8)
	bnez	a5, .L159
	li	a5, 1
	j	.L161
.L160:
	li	a5, 0
.L161:
	beqz	a5, .L108
	addi	s0, s0, 2
.L108:
	mv	s2, a0
	addi	a0, a0, 2
	li	s5, 2001
	beq	s2, s5, .L106
	ld	t1, 0(s11)
	bgeu	s10, t1, .L107
	j	.L163
.L106:
	li	s7, 2001
	sub	s8, s0, s7
	seqz	s8, s8
	slli	s9, s8, 1
	addi	a1, s9, 1
	la	a0, camlCas_test.27
	call	camlCas_test.check_279@plt
.L164:
	la	a0, camlCas_test.28
	call	camlStdlib.print_endline_369@plt
.L165:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	ret
.L163:
	call	caml_call_gc@plt
.L162:
	j	.L107
.L112:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L113
	.cfi_endproc
	.size	camlCas_test.entry, . - camlCas_test.entry
	.section .data
	.text
	.globl	camlCas_test.code_end
	.type	camlCas_test.code_end, @object
camlCas_test.code_end:
	.long	0
	.section .data
	.globl	camlCas_test.data_end
	.type	camlCas_test.data_end, @object
	.quad	0
camlCas_test.data_end:
	.quad	0
	.section .data
	.globl	camlCas_test.frametable
	.type	camlCas_test.frametable, @object
camlCas_test.frametable:
	.quad	26
	.quad	.L165
	.short	17
	.short	0
	.align	2
	.long	(.L166 - .) + 0x0
	.align	3
	.quad	.L164
	.short	17
	.short	0
	.align	2
	.long	(.L167 - .) + 0x0
	.align	3
	.quad	.L162
	.short	18
	.short	1
	.short	0
	.byte	0
	.align	3
	.quad	.L158
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L168 - .) + 0x0
	.align	3
	.quad	.L154
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L153
	.short	17
	.short	0
	.align	2
	.long	(.L169 - .) + 0x0
	.align	3
	.quad	.L149
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L170 - .) + 0x0
	.align	3
	.quad	.L148
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L171 - .) + 0x0
	.align	3
	.quad	.L144
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L143
	.short	17
	.short	0
	.align	2
	.long	(.L172 - .) + 0x0
	.align	3
	.quad	.L142
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L173 - .) + 0x0
	.align	3
	.quad	.L141
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L174 - .) + 0x0
	.align	3
	.quad	.L140
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L175 - .) + 0x0
	.align	3
	.quad	.L139
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L176 - .) + 0x0
	.align	3
	.quad	.L138
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L177 - .) + 0x0
	.align	3
	.quad	.L134
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L178 - .) + 0x0
	.align	3
	.quad	.L133
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L179 - .) + 0x0
	.align	3
	.quad	.L129
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L180 - .) + 0x0
	.align	3
	.quad	.L128
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L181 - .) + 0x0
	.align	3
	.quad	.L124
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L182 - .) + 0x0
	.align	3
	.quad	.L123
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L183 - .) + 0x0
	.align	3
	.quad	.L119
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L184 - .) + 0x0
	.align	3
	.quad	.L118
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L185 - .) + 0x0
	.align	3
	.quad	.L114
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L105
	.short	17
	.short	0
	.align	2
	.long	(.L186 - .) + 0x0
	.align	3
	.quad	.L104
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L187 - .) + 0x0
	.align	3
	.align	2
.L187:
	.long	(.L189 - .) + 0x0
	.long	0xf84518
	.align	2
.L180:
	.long	(.L191 - .) + 0x0
	.long	0xa00938
	.align	2
.L173:
	.long	(.L191 - .) + 0x0
	.long	0xe80940
	.align	2
.L184:
	.long	(.L191 - .) + 0x0
	.long	0x700940
	.align	2
.L183:
	.long	(.L191 - .) + 0x0
	.long	0x800978
	.align	2
.L174:
	.long	(.L191 - .) + 0x0
	.long	0xe00908
	.align	2
.L185:
	.long	(.L191 - .) + 0x0
	.long	0x680990
	.align	2
.L177:
	.long	(.L191 - .) + 0x0
	.long	0xc00940
	.align	2
.L181:
	.long	(.L191 - .) + 0x0
	.long	0x980958
	.align	2
.L172:
	.long	(.L191 - .) + 0x0
	.long	0xf00918
	.align	2
.L167:
	.long	(.L191 - .) + 0x0
	.long	0x16008f0
	.align	2
.L166:
	.long	(.L191 - .) + 0x0
	.long	0x16808c0
	.align	2
.L179:
	.long	(.L191 - .) + 0x0
	.long	0xa80958
	.align	2
.L178:
	.long	(.L191 - .) + 0x0
	.long	0xb00938
	.align	2
.L170:
	.long	(.L191 - .) + 0x0
	.long	0x1100958
	.align	2
.L182:
	.long	(.L191 - .) + 0x0
	.long	0x880930
	.align	2
.L176:
	.long	(.L191 - .) + 0x0
	.long	0xc80938
	.align	2
.L186:
	.long	(.L192 - .) + 0x0
	.long	0x408a00
	.align	2
.L171:
	.long	(.L191 - .) + 0x0
	.long	0x1080978
	.align	2
.L175:
	.long	(.L191 - .) + 0x0
	.long	0xd80920
	.align	2
.L169:
	.long	(.L191 - .) + 0x0
	.long	0x11809a8
	.align	2
.L168:
	.long	(.L191 - .) + 0x0
	.long	0x1380920
.L190:
	.byte	99,97,115,95,116,101,115,116,46,109,108,0
.L188:
	.byte	112,114,105,110,116,102,46,109,108,0
	.align	2
.L192:
	.long	(.L190 - .) + 0x0
	.byte	67,97,115,95,116,101,115,116,46,99,104,101,99,107,0
	.align	2
.L189:
	.long	(.L188 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.align	2
.L191:
	.long	(.L190 - .) + 0x0
	.byte	67,97,115,95,116,101,115,116,0
	.align	3
	.size	camlCas_test.frametable, . - camlCas_test.frametable
	.section .note.GNU-stack,"",%progbits
