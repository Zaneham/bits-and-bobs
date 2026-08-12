	.option pic
	.file ""
	.section .data
	.globl	camlStress_cae.data_begin
	.type	camlStress_cae.data_begin, @object
camlStress_cae.data_begin:
	.text
	.globl	camlStress_cae.code_begin
	.type	camlStress_cae.code_begin, @object
camlStress_cae.code_begin:
	.section .data
	.section .data
	.quad	4087
camlStress_cae.58:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlStress_cae.check_277
	.section .data
	.quad	4864
	.globl	camlStress_cae
	.type	camlStress_cae, @object
camlStress_cae:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.section .data
	.globl	camlStress_cae.gc_roots
	.type	camlStress_cae.gc_roots, @object
camlStress_cae.gc_roots:
	.quad	camlStress_cae
	.quad	0
	.globl	camlStress_cae.check_277
	.type	camlStress_cae.check_277, @function
	.text
	.align	2
camlStress_cae.check_277:
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
	ld	t1, 0(s11)
	bltu	s1, t1, .L106
.L105:
	li	a2, 1
	beq	a1, a2, .L100
	sd	a0, 0(sp)
	la	a1, camlStress_cae.6
	la	a0, camlStdlib
	ld	a0, 304(a0)
	call	camlStdlib__Printf.fprintf_433@plt
.L107:
	mv	a1, a0
	ld	a2, 0(a1)
	ld	a0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	jr	a2
.L100:
	la	a1, camlStress_cae
	ld	a1, 16(a1)
	ld	a2, 0(a1)
	addi	a2, a2, 2
	fence	r, w
	sd	a2, 0(a1)
	sd	a0, 0(sp)
	la	a1, camlStress_cae.10
	la	a0, camlStdlib
	ld	a0, 304(a0)
	call	camlStdlib__Printf.fprintf_433@plt
.L108:
	mv	a1, a0
	ld	a2, 0(a1)
	ld	a0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	jr	a2
.L106:
	call	caml_call_gc@plt
.L104:
	j	.L105
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
	.size	camlStress_cae.check_277, . - camlStress_cae.check_277
	.globl	camlStress_cae.bump_387
	.type	camlStress_cae.bump_387, @function
	.text
	.align	2
camlStress_cae.bump_387:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 336
	bltu	sp, t1, .L112
.L113:
	addi	sp, sp, -24
	.cfi_adjust_cfa_offset	24
	sd	ra, 16(sp)
	.cfi_offset 1, -8
.L111:
	li	a0, 3
	li	a2, 200001
	bgt	a0, a2, .L109
	sd	a0, 8(sp)
	sd	a1, 0(sp)
.L110:
	addi	s1, s1, -32
	ld	t1, 0(s11)
	bltu	s1, t1, .L116
.L115:
	addi	a1, s1, 8
	li	a0, 3319
	sd	a0, -8(a1)
	la	a0, camlStress_cae.go_390
	sd	a0, 0(a1)
	li	a0, 72057594037927941
	sd	a0, 8(a1)
	ld	a0, 0(sp)
	ld	a0, 16(a0)
	sd	a0, 16(a1)
	li	a0, 1
	call	camlStress_cae.go_390@plt
.L117:
	ld	a1, 8(sp)
	mv	a0, a1
	addi	a1, a1, 2
	sd	a1, 8(sp)
	li	a1, 200001
	bne	a0, a1, .L110
.L109:
	li	a0, 1
	ld	ra, 16(sp)
	addi	sp, sp, 24
	.cfi_adjust_cfa_offset	-24
	ret
.L116:
	call	caml_call_gc@plt
.L114:
	j	.L115
.L112:
	li	t1, 35
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L113
	.cfi_endproc
	.size	camlStress_cae.bump_387, . - camlStress_cae.bump_387
	.globl	camlStress_cae.go_390
	.type	camlStress_cae.go_390, @function
	.text
	.align	2
camlStress_cae.go_390:
	.cfi_startproc
	addi	sp, sp, -8
	.cfi_adjust_cfa_offset	8
	sd	ra, 0(sp)
	.cfi_offset 1, -8
.L119:
	ld	t1, 0(s11)
	bltu	s1, t1, .L122
.L121:
	ld	a0, 16(a1)
	fence	rw, rw
	ld	a2, 0(a0)
	fence	r, rw
	addi	a3, a2, 2
.L123:
	lr.d.aqrl	a4, (a0)
	bne	a4, a2, .L124
	sc.d.rl	t1, a3, (a0)
	bnez	t1, .L123
.L124:
	bne	a4, a2, .L118
	li	a0, 1
	ld	ra, 0(sp)
	addi	sp, sp, 8
	.cfi_adjust_cfa_offset	-8
	ret
.L118:
	li	a0, 1
	j	.L119
.L122:
	call	caml_call_gc@plt
.L120:
	j	.L121
	.cfi_endproc
	.size	camlStress_cae.go_390, . - camlStress_cae.go_390
	.globl	camlStress_cae.fun_604
	.type	camlStress_cae.fun_604, @function
	.text
	.align	2
camlStress_cae.fun_604:
	.cfi_startproc
.L125:
	ld	a0, 16(a1)
	la	a1, camlStdlib__Domain
	ld	a1, 0(a1)
	tail	camlStdlib__Domain.spawn_790@plt
	.cfi_endproc
	.size	camlStress_cae.fun_604, . - camlStress_cae.fun_604
	.globl	camlStress_cae.collect_556
	.type	camlStress_cae.collect_556, @function
	.text
	.align	2
camlStress_cae.collect_556:
	.cfi_startproc
	addi	sp, sp, -8
	.cfi_adjust_cfa_offset	8
	sd	ra, 0(sp)
	.cfi_offset 1, -8
.L128:
	mv	a2, a0
	li	a0, 1
	li	a3, 3
	li	a4, 200001
	bgt	a3, a4, .L126
.L127:
	li	a4, 100000
	mul	a4, a2, a4
	add	a4, a4, a3
	li	a5, -100000
	add	a4, a4, a5
	ld	a5, 16(a1)
	amoswap.d.aqrl	a6, a4, (a5)
	addi	s1, s1, -24
	ld	t1, 0(s11)
	bltu	s1, t1, .L131
.L130:
	addi	a4, s1, 8
	li	a5, 2048
	sd	a5, -8(a4)
	sd	a6, 0(a4)
	sd	a0, 8(a4)
	mv	a0, a4
	mv	a4, a3
	addi	a3, a3, 2
	li	a5, 200001
	bne	a4, a5, .L127
.L126:
	ld	ra, 0(sp)
	addi	sp, sp, 8
	.cfi_adjust_cfa_offset	-8
	ret
.L131:
	call	caml_call_gc@plt
.L129:
	j	.L130
	.cfi_endproc
	.size	camlStress_cae.collect_556, . - camlStress_cae.collect_556
	.globl	camlStress_cae.fun_625
	.type	camlStress_cae.fun_625, @function
	.text
	.align	2
camlStress_cae.fun_625:
	.cfi_startproc
.L132:
	ld	a0, 24(a1)
	addi	a0, a0, 2
	ld	a1, 16(a1)
	tail	camlStress_cae.collect_556@plt
	.cfi_endproc
	.size	camlStress_cae.fun_625, . - camlStress_cae.fun_625
	.globl	camlStress_cae.fun_613
	.type	camlStress_cae.fun_613, @function
	.text
	.align	2
camlStress_cae.fun_613:
	.cfi_startproc
	addi	sp, sp, -8
	.cfi_adjust_cfa_offset	8
	sd	ra, 0(sp)
	.cfi_offset 1, -8
.L133:
	addi	s1, s1, -40
	ld	t1, 0(s11)
	bltu	s1, t1, .L136
.L135:
	addi	a2, s1, 8
	li	a3, 4343
	sd	a3, -8(a2)
	la	a3, camlStress_cae.fun_625
	sd	a3, 0(a2)
	li	a3, 72057594037927941
	sd	a3, 8(a2)
	ld	a1, 16(a1)
	sd	a1, 16(a2)
	sd	a0, 24(a2)
	la	a0, camlStdlib__Domain
	ld	a1, 0(a0)
	mv	a0, a2
	ld	ra, 0(sp)
	addi	sp, sp, 8
	.cfi_adjust_cfa_offset	-8
	tail	camlStdlib__Domain.spawn_790@plt
.L136:
	call	caml_call_gc@plt
.L134:
	j	.L135
	.cfi_endproc
	.size	camlStress_cae.fun_613, . - camlStress_cae.fun_613
	.globl	camlStress_cae.fun_634
	.type	camlStress_cae.fun_634, @function
	.text
	.align	2
camlStress_cae.fun_634:
	.cfi_startproc
.L137:
	ld	a1, 16(a1)
	ld	a2, -8(a1)
	srli	a2, a2, 9
	bleu	a2, a0, .L138
	slli	a0, a0, 2
	add	a0, a1, a0
	ld	a1, -4(a0)
	addi	a1, a1, 2
	addi	a0, a0, -4
	fence	r, w
	sd	a1, 0(a0)
	li	a0, 1
	ret
.L138:
	call	caml_ml_array_bound_error@plt
.L139:
	.cfi_endproc
	.size	camlStress_cae.fun_634, . - camlStress_cae.fun_634
	.section .data
	.quad	3068
camlStress_cae.9:
	.byte	32,32,70,65,73,76,58,32,37,115,10
	.space	4
	.byte	4
	.section .data
	.quad	2827
camlStress_cae.8:
	.quad	camlStress_cae.7
	.quad	camlStress_cae.3
	.section .data
	.quad	3068
camlStress_cae.7:
	.byte	32,32,70,65,73,76,58,32
	.space	7
	.byte	7
	.section .data
	.quad	2816
camlStress_cae.6:
	.quad	camlStress_cae.4
	.quad	camlStress_cae.5
	.section .data
	.quad	2816
camlStress_cae.57:
	.quad	camlStress_cae.55
	.quad	camlStress_cae.56
	.section .data
	.quad	3068
camlStress_cae.56:
	.byte	37,100,32,70,65,73,76,85,82,69,83,10
	.space	3
	.byte	3
	.section .data
	.quad	4868
camlStress_cae.55:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.54
	.section .data
	.quad	2827
camlStress_cae.54:
	.quad	camlStress_cae.53
	.quad	1
	.section .data
	.quad	3068
camlStress_cae.53:
	.byte	32,70,65,73,76,85,82,69,83,10
	.space	5
	.byte	5
	.section .data
	.quad	2044
camlStress_cae.52:
	.byte	65,76,76,32,79,75
	.space	1
	.byte	1
	.section .data
	.quad	6140
camlStress_cae.51:
	.byte	101,118,101,114,121,32,118,97,108,117,101,32,111,98,115,101
	.byte	114,118,101,100,32,101,120,97,99,116,108,121,32,111,110,99
	.byte	101
	.space	6
	.byte	6
	.section .data
	.quad	2816
camlStress_cae.50:
	.quad	camlStress_cae.49
	.quad	camlStress_cae.48
	.section .data
	.quad	3068
camlStress_cae.5:
	.byte	32,32,80,65,83,83,58,32,37,115,10
	.space	4
	.byte	4
	.section .data
	.quad	2827
camlStress_cae.49:
	.quad	camlStress_cae.48
	.quad	1
	.section .data
	.quad	4092
camlStress_cae.48:
	.byte	67,111,110,116,101,110,100,101,100,32,101,120,99,104,97,110
	.byte	103,101,10
	.space	4
	.byte	4
	.section .data
	.quad	3068
camlStress_cae.47:
	.byte	110,111,32,108,111,115,116,32,117,112,100,97,116,101,115
	.byte	0
	.section .data
	.quad	2816
camlStress_cae.46:
	.quad	camlStress_cae.44
	.quad	camlStress_cae.45
	.section .data
	.quad	6140
camlStress_cae.45:
	.byte	67,111,110,116,101,110,100,101,100,32,105,110,99,114,101,109
	.byte	101,110,116,32,40,37,100,32,100,111,109,97,105,110,115,32
	.byte	120,32,37,100,41,10
	.space	1
	.byte	1
	.section .data
	.quad	2827
camlStress_cae.44:
	.quad	camlStress_cae.37
	.quad	camlStress_cae.43
	.section .data
	.quad	4868
camlStress_cae.43:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.42
	.section .data
	.quad	2827
camlStress_cae.42:
	.quad	camlStress_cae.38
	.quad	camlStress_cae.41
	.section .data
	.quad	4868
camlStress_cae.41:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.40
	.section .data
	.quad	2827
camlStress_cae.40:
	.quad	camlStress_cae.39
	.quad	1
	.section .data
	.quad	2827
camlStress_cae.4:
	.quad	camlStress_cae.1
	.quad	camlStress_cae.3
	.section .data
	.quad	2044
camlStress_cae.39:
	.byte	41,10
	.space	5
	.byte	5
	.section .data
	.quad	3068
camlStress_cae.38:
	.byte	32,100,111,109,97,105,110,115,32,120,32
	.space	4
	.byte	4
	.section .data
	.quad	4092
camlStress_cae.37:
	.byte	67,111,110,116,101,110,100,101,100,32,105,110,99,114,101,109
	.byte	101,110,116,32,40
	.space	2
	.byte	2
	.section .data
	.quad	4092
camlStress_cae.36:
	.byte	98,111,120,101,100,32,115,117,114,118,105,118,101,115,32,103
	.byte	99
	.space	6
	.byte	6
	.section .data
	.quad	3068
camlStress_cae.35:
	.byte	98,111,120,101,100,32,118,97,108,117,101
	.space	4
	.byte	4
	.section .data
	.quad	3068
camlStress_cae.34:
	.byte	98,111,120,101,100,32,99,97,115,32,104,105,116
	.space	2
	.byte	2
	.section .data
	.quad	3068
camlStress_cae.33:
	.byte	98,111,120,101,100,32,99,97,115,32,109,105,115,115
	.space	1
	.byte	1
	.section .data
	.quad	2044
camlStress_cae.32:
	.byte	98
	.space	6
	.byte	6
	.section .data
	.quad	2044
camlStress_cae.31:
	.byte	97
	.space	6
	.byte	6
	.section .data
	.quad	2816
camlStress_cae.30:
	.quad	camlStress_cae.29
	.quad	camlStress_cae.28
	.section .data
	.quad	2818
camlStress_cae.3:
	.quad	1
	.quad	camlStress_cae.2
	.section .data
	.quad	2827
camlStress_cae.29:
	.quad	camlStress_cae.28
	.quad	1
	.section .data
	.quad	5116
camlStress_cae.28:
	.byte	66,111,120,101,100,32,40,98,97,114,114,105,101,114,32,114
	.byte	101,116,97,105,110,101,100,41,10
	.space	6
	.byte	6
	.section .data
	.quad	3068
camlStress_cae.27:
	.byte	109,97,120,95,105,110,116,32,115,116,111,114,101,100
	.space	1
	.byte	1
	.section .data
	.quad	3068
camlStress_cae.26:
	.byte	109,97,120,95,105,110,116,32,99,97,115
	.space	4
	.byte	4
	.section .data
	.quad	3068
camlStress_cae.25:
	.byte	110,101,103,97,116,105,118,101,32,115,116,111,114,101,100
	.byte	0
	.section .data
	.quad	3068
camlStress_cae.24:
	.byte	110,101,103,97,116,105,118,101,32,99,97,115
	.space	3
	.byte	3
	.section .data
	.quad	3068
camlStress_cae.23:
	.byte	98,111,111,108,32,118,97,108,117,101
	.space	5
	.byte	5
	.section .data
	.quad	3068
camlStress_cae.22:
	.byte	98,111,111,108,32,99,97,115,32,109,105,115,115
	.space	2
	.byte	2
	.section .data
	.quad	3068
camlStress_cae.21:
	.byte	98,111,111,108,32,99,97,115,32,104,105,116
	.space	3
	.byte	3
	.section .data
	.quad	3068
camlStress_cae.20:
	.byte	101,120,99,104,97,110,103,101,32,115,116,111,114,101,100
	.byte	0
	.section .data
	.quad	2828
camlStress_cae.2:
	.quad	21
	.quad	1
	.section .data
	.quad	4092
camlStress_cae.19:
	.byte	101,120,99,104,97,110,103,101,32,114,101,116,117,114,110,115
	.byte	32,111,108,100
	.space	3
	.byte	3
	.section .data
	.quad	4092
camlStress_cae.18:
	.byte	99,97,115,32,116,111,32,115,97,109,101,32,118,97,108,117
	.byte	101
	.space	6
	.byte	6
	.section .data
	.quad	5116
camlStress_cae.17:
	.byte	99,97,115,32,109,105,115,115,32,108,101,102,116,32,118,97
	.byte	108,117,101,32,97,108,111,110,101
	.space	6
	.byte	6
	.section .data
	.quad	4092
camlStress_cae.16:
	.byte	99,97,115,32,109,105,115,115,32,114,101,116,117,114,110,115
	.byte	32,102,97,108,115,101
	.space	1
	.byte	1
	.section .data
	.quad	3068
camlStress_cae.15:
	.byte	99,97,115,32,104,105,116,32,115,116,111,114,101,100
	.space	1
	.byte	1
	.section .data
	.quad	4092
camlStress_cae.14:
	.byte	99,97,115,32,104,105,116,32,114,101,116,117,114,110,115,32
	.byte	116,114,117,101
	.space	3
	.byte	3
	.section .data
	.quad	2816
camlStress_cae.13:
	.quad	camlStress_cae.12
	.quad	camlStress_cae.11
	.section .data
	.quad	2827
camlStress_cae.12:
	.quad	camlStress_cae.11
	.quad	1
	.section .data
	.quad	5116
camlStress_cae.11:
	.byte	83,105,110,103,108,101,45,116,104,114,101,97,100,101,100,32
	.byte	115,101,109,97,110,116,105,99,115,10
	.space	5
	.byte	5
	.section .data
	.quad	2816
camlStress_cae.10:
	.quad	camlStress_cae.8
	.quad	camlStress_cae.9
	.section .data
	.quad	3068
camlStress_cae.1:
	.byte	32,32,80,65,83,83,58,32
	.space	7
	.byte	7
	.globl	camlStress_cae.entry
	.type	camlStress_cae.entry, @function
	.text
	.align	2
camlStress_cae.entry:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 352
	bltu	sp, t1, .L146
.L147:
	addi	sp, sp, -40
	.cfi_adjust_cfa_offset	40
	sd	ra, 32(sp)
	.cfi_offset 1, -8
.L145:
	li	a1, 9
	la	a0, camlStress_cae
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	li	a1, 200001
	la	a0, camlStress_cae
	addi	a0, a0, 8
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	call	caml_alloc1@plt
.L148:
	addi	a1, s1, 8
	li	a0, 1024
	sd	a0, -8(a1)
	li	a0, 1
	sd	a0, 0(a1)
	la	a0, camlStress_cae
	addi	a0, a0, 16
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlStress_cae.58
	la	a0, camlStress_cae
	addi	a0, a0, 24
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlStress_cae.13
	la	a0, camlStdlib
	ld	a0, 304(a0)
	call	camlStdlib__Printf.fprintf_433@plt
.L149:
	call	caml_alloc1@plt
.L150:
	addi	a0, s1, 8
	sd	a0, 0(sp)
	li	a1, 1024
	sd	a1, -8(a0)
	li	a1, 1
	sd	a1, 0(a0)
	li	a1, 3
	li	a2, 1
.L151:
	lr.d.aqrl	a3, (a0)
	bne	a3, a2, .L152
	sc.d.rl	t1, a1, (a0)
	bnez	t1, .L151
.L152:
	li	a0, 1
	sub	a0, a3, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.14
	call	camlStress_cae.check_277@plt
.L153:
	li	a0, 3
	ld	a1, 0(sp)
	fence	rw, rw
	ld	a1, 0(a1)
	fence	r, rw
	sub	a0, a1, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.15
	call	camlStress_cae.check_277@plt
.L154:
	li	a0, 5
	li	a1, 1
	ld	a3, 0(sp)
.L155:
	lr.d.aqrl	a2, (a3)
	bne	a2, a1, .L156
	sc.d.rl	t1, a0, (a3)
	bnez	t1, .L155
.L156:
	li	a0, 1
	sub	a0, a2, a0
	snez	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.16
	call	camlStress_cae.check_277@plt
.L157:
	li	a0, 3
	ld	a1, 0(sp)
	fence	rw, rw
	ld	a1, 0(a1)
	fence	r, rw
	sub	a0, a1, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.17
	call	camlStress_cae.check_277@plt
.L158:
	li	a0, 3
	li	a1, 3
	ld	a3, 0(sp)
.L159:
	lr.d.aqrl	a2, (a3)
	bne	a2, a1, .L160
	sc.d.rl	t1, a0, (a3)
	bnez	t1, .L159
.L160:
	li	a0, 3
	sub	a0, a2, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.18
	call	camlStress_cae.check_277@plt
.L161:
	li	a0, 19
	ld	a2, 0(sp)
	amoswap.d.aqrl	a1, a0, (a2)
	li	a0, 3
	sub	a0, a1, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.19
	call	camlStress_cae.check_277@plt
.L162:
	li	a0, 19
	ld	a1, 0(sp)
	fence	rw, rw
	ld	a1, 0(a1)
	fence	r, rw
	sub	a0, a1, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.20
	call	camlStress_cae.check_277@plt
.L163:
	call	caml_alloc1@plt
.L164:
	addi	a0, s1, 8
	sd	a0, 0(sp)
	li	a1, 1024
	sd	a1, -8(a0)
	li	a1, 1
	sd	a1, 0(a0)
	li	a1, 3
	li	a2, 1
.L165:
	lr.d.aqrl	a3, (a0)
	bne	a3, a2, .L166
	sc.d.rl	t1, a1, (a0)
	bnez	t1, .L165
.L166:
	li	a0, 1
	sub	a0, a3, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.21
	call	camlStress_cae.check_277@plt
.L167:
	li	a0, 3
	li	a1, 1
	ld	a3, 0(sp)
.L168:
	lr.d.aqrl	a2, (a3)
	bne	a2, a1, .L169
	sc.d.rl	t1, a0, (a3)
	bnez	t1, .L168
.L169:
	li	a0, 1
	sub	a0, a2, a0
	snez	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.22
	call	camlStress_cae.check_277@plt
.L170:
	li	a0, 3
	ld	a1, 0(sp)
	fence	rw, rw
	ld	a1, 0(a1)
	fence	r, rw
	sub	a0, a1, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.23
	call	camlStress_cae.check_277@plt
.L171:
	call	caml_alloc1@plt
.L172:
	addi	a0, s1, 8
	sd	a0, 0(sp)
	li	a1, 1024
	sd	a1, -8(a0)
	li	a1, -1
	sd	a1, 0(a0)
	li	a1, -9223372036854775807
	li	a2, -1
.L173:
	lr.d.aqrl	a3, (a0)
	bne	a3, a2, .L174
	sc.d.rl	t1, a1, (a0)
	bnez	t1, .L173
.L174:
	li	a0, -1
	sub	a0, a3, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.24
	call	camlStress_cae.check_277@plt
.L175:
	li	a0, -9223372036854775807
	ld	a1, 0(sp)
	fence	rw, rw
	ld	a1, 0(a1)
	fence	r, rw
	sub	a0, a1, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.25
	call	camlStress_cae.check_277@plt
.L176:
	li	a0, 9223372036854775807
	li	a1, -9223372036854775807
	ld	a3, 0(sp)
.L177:
	lr.d.aqrl	a2, (a3)
	bne	a2, a1, .L178
	sc.d.rl	t1, a0, (a3)
	bnez	t1, .L177
.L178:
	sub	a0, a2, a1
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.26
	call	camlStress_cae.check_277@plt
.L179:
	li	a0, 9223372036854775807
	ld	a1, 0(sp)
	fence	rw, rw
	ld	a1, 0(a1)
	fence	r, rw
	sub	a0, a1, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.27
	call	camlStress_cae.check_277@plt
.L180:
	la	a1, camlStress_cae.30
	la	a0, camlStdlib
	ld	a0, 304(a0)
	call	camlStdlib__Printf.fprintf_433@plt
.L181:
	call	caml_alloc1@plt
.L182:
	addi	a0, s1, 8
	sd	a0, 0(sp)
	li	a1, 1024
	sd	a1, -8(a0)
	la	a3, camlStress_cae.31
	sd	a3, 0(a0)
	la	a2, camlStress_cae.32
	li	a1, 1
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_atomic_cas_field@plt
	mv	sp, s0
	.cfi_restore_state
	li	a1, 4
	sub	a1, a1, a0
	la	a0, camlStress_cae.33
	call	camlStress_cae.check_277@plt
.L183:
	la	a3, camlStress_cae.32
	la	a2, camlStress_cae.31
	li	a1, 1
	ld	a0, 0(sp)
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_atomic_cas_field@plt
	mv	sp, s0
	.cfi_restore_state
	mv	a1, a0
	la	a0, camlStress_cae.34
	call	camlStress_cae.check_277@plt
.L184:
	la	a0, camlStress_cae.32
	ld	a1, 0(sp)
	fence	rw, rw
	ld	a1, 0(a1)
	fence	r, rw
	sub	a0, a1, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.35
	call	camlStress_cae.check_277@plt
.L185:
	li	a0, 1
	la	t2, caml_gc_full_major
	call	caml_c_call@plt
.L186:
	la	a1, camlStress_cae.32
	ld	a0, 0(sp)
	fence	rw, rw
	ld	a0, 0(a0)
	fence	r, rw
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_string_equal@plt
	mv	sp, s0
	.cfi_restore_state
	mv	a1, a0
	la	a0, camlStress_cae.36
	call	camlStress_cae.check_277@plt
.L187:
	li	a0, 200001
	sd	a0, 8(sp)
	li	a0, 9
	sd	a0, 0(sp)
	la	a1, camlStress_cae.46
	la	a0, camlStdlib
	ld	a0, 304(a0)
	call	camlStdlib__Printf.fprintf_433@plt
.L188:
	mv	a2, a0
	ld	a0, 0(sp)
	ld	a1, 8(sp)
	call	caml_apply2@plt
.L189:
	li	t2, 80
	call	caml_allocN@plt
.L190:
	addi	a0, s1, 8
	addi	a0, a0, 64
	sd	a0, 16(sp)
	li	a1, 1024
	sd	a1, -8(a0)
	li	a1, 1
	sd	a1, 0(a0)
	addi	a2, a0, -32
	sd	a2, 0(sp)
	li	a1, 3319
	sd	a1, -8(a2)
	la	a1, camlStress_cae.bump_387
	sd	a1, 0(a2)
	li	a3, 72057594037927941
	sd	a3, 8(a2)
	sd	a0, 16(a2)
	addi	a1, a2, -32
	li	a0, 3319
	sd	a0, -8(a1)
	la	a0, camlStress_cae.fun_604
	sd	a0, 0(a1)
	sd	a3, 8(a1)
	sd	a2, 16(a1)
	li	a0, 7
	call	camlStdlib__List.init_332@plt
.L191:
	sd	a0, 8(sp)
	li	a0, 1
	ld	a1, 0(sp)
	call	camlStress_cae.bump_387@plt
.L192:
	la	a0, camlStdlib__Domain
	ld	a0, 8(a0)
	ld	a1, 8(sp)
	call	camlStdlib__List.iter_403@plt
.L193:
	li	a0, 800001
	ld	a1, 16(sp)
	fence	rw, rw
	ld	a1, 0(a1)
	fence	r, rw
	sub	a0, a1, a0
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a1, a0, 1
	la	a0, camlStress_cae.47
	call	camlStress_cae.check_277@plt
.L194:
	la	a1, camlStress_cae.50
	la	a0, camlStdlib
	ld	a0, 304(a0)
	call	camlStdlib__Printf.fprintf_433@plt
.L195:
	call	caml_alloc1@plt
.L196:
	addi	a0, s1, 8
	sd	a0, 16(sp)
	li	a1, 1024
	sd	a1, -8(a0)
	li	a1, 1
	sd	a1, 0(a0)
	li	a1, 1
	li	a0, 800003
	la	t2, caml_array_make
	call	caml_c_call@plt
.L197:
	sd	a0, 24(sp)
	li	t2, 64
	call	caml_allocN@plt
.L198:
	addi	a0, s1, 8
	addi	a0, a0, 32
	sd	a0, 0(sp)
	li	a1, 3319
	sd	a1, -8(a0)
	la	a1, camlStress_cae.collect_556
	sd	a1, 0(a0)
	li	a2, 72057594037927941
	sd	a2, 8(a0)
	ld	a1, 16(sp)
	sd	a1, 16(a0)
	addi	a1, a0, -32
	li	a3, 3319
	sd	a3, -8(a1)
	la	a3, camlStress_cae.fun_613
	sd	a3, 0(a1)
	sd	a2, 8(a1)
	sd	a0, 16(a1)
	li	a0, 7
	call	camlStdlib__List.init_332@plt
.L199:
	sd	a0, 8(sp)
	li	a0, 1
	ld	a1, 0(sp)
	call	camlStress_cae.collect_556@plt
.L200:
	sd	a0, 0(sp)
	la	a0, camlStdlib__Domain
	ld	a0, 8(a0)
	ld	a1, 8(sp)
	call	camlStdlib__List.map_340@plt
.L201:
	call	caml_alloc2@plt
.L202:
	addi	a1, s1, 8
	li	a2, 2048
	sd	a2, -8(a1)
	ld	a2, 0(sp)
	sd	a2, 0(a1)
	sd	a0, 8(a1)
	mv	a0, a1
	call	camlStdlib__List.flatten_335@plt
.L203:
	mv	a1, a0
	call	caml_alloc3@plt
.L204:
	addi	a0, s1, 8
	li	a2, 3319
	sd	a2, -8(a0)
	la	a2, camlStress_cae.fun_634
	sd	a2, 0(a0)
	li	a2, 72057594037927941
	sd	a2, 8(a0)
	ld	a2, 24(sp)
	sd	a2, 16(a0)
	call	camlStdlib__List.iter_403@plt
.L205:
	ld	a3, 16(sp)
	fence	rw, rw
	ld	a1, 0(a3)
	fence	r, rw
	ld	a0, 24(sp)
	ld	a2, -8(a0)
	srli	a2, a2, 9
	bleu	a2, a1, .L206
	slli	a1, a1, 2
	add	a1, a0, a1
	ld	a1, -4(a1)
	addi	a1, a1, 2
	fence	rw, rw
	ld	a3, 0(a3)
	fence	r, rw
	bleu	a2, a3, .L206
	slli	a2, a3, 2
	add	a2, a0, a2
	addi	a2, a2, -4
	fence	r, w
	sd	a1, 0(a2)
	li	a1, 3
	li	a2, 1
	li	a3, 800001
	bgt	a2, a3, .L142
.L143:
	ld	a3, -8(a0)
	srli	a3, a3, 9
	bleu	a3, a2, .L206
	slli	a3, a2, 2
	add	a3, a0, a3
	ld	a3, -4(a3)
	li	a4, 3
	beq	a3, a4, .L144
	li	a1, 1
.L144:
	mv	a3, a2
	addi	a2, a2, 2
	li	a4, 800001
	beq	a3, a4, .L142
	ld	t1, 0(s11)
	bgeu	s1, t1, .L143
	j	.L209
.L142:
	la	a0, camlStress_cae.51
	call	camlStress_cae.check_277@plt
.L210:
	li	a0, 1
	la	a1, camlStress_cae
	ld	a1, 16(a1)
	ld	a1, 0(a1)
	bne	a1, a0, .L141
	la	a0, camlStress_cae.52
	call	camlStdlib.print_endline_369@plt
.L211:
	j	.L140
.L141:
	sd	a1, 0(sp)
	la	a1, camlStress_cae.57
	la	a0, camlStdlib
	ld	a0, 304(a0)
	call	camlStdlib__Printf.fprintf_433@plt
.L212:
	mv	a1, a0
	ld	a2, 0(a1)
	ld	a0, 0(sp)
	jalr	a2
.L213:
	li	a0, 3
	call	camlStdlib.exit_480@plt
.L214:
.L140:
	li	a0, 1
	ld	ra, 32(sp)
	addi	sp, sp, 40
	.cfi_adjust_cfa_offset	-40
	ret
.L209:
	call	caml_call_gc@plt
.L208:
	j	.L143
.L206:
	call	caml_ml_array_bound_error@plt
.L207:
.L146:
	li	t1, 37
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L147
	.cfi_endproc
	.size	camlStress_cae.entry, . - camlStress_cae.entry
	.section .data
	.text
	.globl	camlStress_cae.code_end
	.type	camlStress_cae.code_end, @object
camlStress_cae.code_end:
	.long	0
	.section .data
	.globl	camlStress_cae.data_end
	.type	camlStress_cae.data_end, @object
	.quad	0
camlStress_cae.data_end:
	.quad	0
	.section .data
	.globl	camlStress_cae.frametable
	.type	camlStress_cae.frametable, @object
camlStress_cae.frametable:
	.quad	60
	.quad	.L214
	.short	41
	.short	0
	.align	2
	.long	(.L215 - .) + 0x0
	.align	3
	.quad	.L213
	.short	41
	.short	0
	.align	2
	.long	(.L216 - .) + 0x0
	.align	3
	.quad	.L212
	.short	41
	.short	0
	.align	2
	.long	(.L217 - .) + 0x0
	.align	3
	.quad	.L211
	.short	41
	.short	0
	.align	2
	.long	(.L218 - .) + 0x0
	.align	3
	.quad	.L210
	.short	41
	.short	0
	.align	2
	.long	(.L219 - .) + 0x0
	.align	3
	.quad	.L208
	.short	42
	.short	1
	.short	1
	.byte	0
	.align	3
	.quad	.L207
	.short	41
	.short	0
	.align	2
	.long	(.L220 - .) + 0x0
	.align	3
	.quad	.L205
	.short	41
	.short	2
	.short	16
	.short	24
	.align	2
	.long	(.L221 - .) + 0x0
	.align	3
	.quad	.L204
	.short	42
	.short	3
	.short	3
	.short	16
	.short	24
	.byte	1
	.byte	2
	.align	3
	.quad	.L203
	.short	41
	.short	2
	.short	16
	.short	24
	.align	2
	.long	(.L222 - .) + 0x0
	.align	3
	.quad	.L202
	.short	42
	.short	4
	.short	0
	.short	1
	.short	16
	.short	24
	.byte	1
	.byte	1
	.align	3
	.quad	.L201
	.short	41
	.short	3
	.short	0
	.short	16
	.short	24
	.align	2
	.long	(.L223 - .) + 0x0
	.align	3
	.quad	.L200
	.short	41
	.short	3
	.short	8
	.short	16
	.short	24
	.align	2
	.long	(.L224 - .) + 0x0
	.align	3
	.quad	.L199
	.short	41
	.short	3
	.short	0
	.short	16
	.short	24
	.align	2
	.long	(.L225 - .) + 0x0
	.align	3
	.quad	.L198
	.short	42
	.short	2
	.short	16
	.short	24
	.byte	2
	.byte	2
	.byte	2
	.align	3
	.quad	.L197
	.short	41
	.short	1
	.short	16
	.align	2
	.long	(.L226 - .) + 0x0
	.align	3
	.quad	.L196
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L195
	.short	41
	.short	0
	.align	2
	.long	(.L217 - .) + 0x0
	.align	3
	.quad	.L194
	.short	41
	.short	0
	.align	2
	.long	(.L227 - .) + 0x0
	.align	3
	.quad	.L193
	.short	41
	.short	1
	.short	16
	.align	2
	.long	(.L228 - .) + 0x0
	.align	3
	.quad	.L192
	.short	41
	.short	2
	.short	8
	.short	16
	.align	2
	.long	(.L229 - .) + 0x0
	.align	3
	.quad	.L191
	.short	41
	.short	2
	.short	0
	.short	16
	.align	2
	.long	(.L230 - .) + 0x0
	.align	3
	.quad	.L190
	.short	42
	.short	0
	.byte	3
	.byte	2
	.byte	2
	.byte	0
	.align	3
	.quad	.L189
	.short	41
	.short	0
	.align	2
	.long	(.L231 - .) + 0x0
	.align	3
	.quad	.L188
	.short	41
	.short	0
	.align	2
	.long	(.L217 - .) + 0x0
	.align	3
	.quad	.L187
	.short	41
	.short	0
	.align	2
	.long	(.L232 - .) + 0x0
	.align	3
	.quad	.L186
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L233 - .) + 0x0
	.align	3
	.quad	.L185
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L234 - .) + 0x0
	.align	3
	.quad	.L184
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L235 - .) + 0x0
	.align	3
	.quad	.L183
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L236 - .) + 0x0
	.align	3
	.quad	.L182
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L181
	.short	41
	.short	0
	.align	2
	.long	(.L217 - .) + 0x0
	.align	3
	.quad	.L180
	.short	41
	.short	0
	.align	2
	.long	(.L237 - .) + 0x0
	.align	3
	.quad	.L179
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L238 - .) + 0x0
	.align	3
	.quad	.L176
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L239 - .) + 0x0
	.align	3
	.quad	.L175
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L240 - .) + 0x0
	.align	3
	.quad	.L172
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L171
	.short	41
	.short	0
	.align	2
	.long	(.L241 - .) + 0x0
	.align	3
	.quad	.L170
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L242 - .) + 0x0
	.align	3
	.quad	.L167
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L243 - .) + 0x0
	.align	3
	.quad	.L164
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L163
	.short	41
	.short	0
	.align	2
	.long	(.L244 - .) + 0x0
	.align	3
	.quad	.L162
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L245 - .) + 0x0
	.align	3
	.quad	.L161
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L246 - .) + 0x0
	.align	3
	.quad	.L158
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L247 - .) + 0x0
	.align	3
	.quad	.L157
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L248 - .) + 0x0
	.align	3
	.quad	.L154
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L249 - .) + 0x0
	.align	3
	.quad	.L153
	.short	41
	.short	1
	.short	0
	.align	2
	.long	(.L250 - .) + 0x0
	.align	3
	.quad	.L150
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L149
	.short	41
	.short	0
	.align	2
	.long	(.L217 - .) + 0x0
	.align	3
	.quad	.L148
	.short	42
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L139
	.short	1
	.short	0
	.align	2
	.long	(.L251 - .) + 0x0
	.align	3
	.quad	.L134
	.short	10
	.short	1
	.short	3
	.byte	1
	.byte	3
	.align	3
	.quad	.L129
	.short	10
	.short	2
	.short	1
	.short	3
	.byte	1
	.byte	1
	.align	3
	.quad	.L120
	.short	10
	.short	1
	.short	3
	.byte	0
	.align	3
	.quad	.L117
	.short	25
	.short	1
	.short	0
	.align	2
	.long	(.L252 - .) + 0x0
	.align	3
	.quad	.L114
	.short	26
	.short	1
	.short	0
	.byte	1
	.byte	2
	.align	3
	.quad	.L108
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L217 - .) + 0x0
	.align	3
	.quad	.L107
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L217 - .) + 0x0
	.align	3
	.quad	.L104
	.short	18
	.short	1
	.short	1
	.byte	0
	.align	3
	.align	2
.L252:
	.long	(.L254 - .) + 0x0
	.long	0x1f81858
	.align	2
.L217:
	.long	(.L256 - .) + 0x0
	.long	0xf84518
	.align	2
.L231:
	.long	(.L257 - .) + 0x0
	.long	0x1b80a68
	.align	2
.L245:
	.long	(.L257 - .) + 0x0
	.long	0xd809c0
	.align	2
.L238:
	.long	(.L257 - .) + 0x0
	.long	0x1280a00
	.align	2
.L235:
	.long	(.L257 - .) + 0x0
	.long	0x17809b0
	.align	2
.L229:
	.long	(.L257 - .) + 0x0
	.long	0x2180848
	.align	2
.L228:
	.long	(.L257 - .) + 0x0
	.long	0x22008d0
	.align	2
.L224:
	.long	(.L257 - .) + 0x0
	.long	0x2b034b0
	.align	2
.L215:
	.long	(.L257 - .) + 0x0
	.long	0x320d9e0
	.align	2
.L221:
	.long	(.L257 - .) + 0x0
	.long	0x2c00998
	.align	2
.L218:
	.long	(.L257 - .) + 0x0
	.long	0x3186170
	.align	2
.L236:
	.long	(.L257 - .) + 0x0
	.long	0x17009e8
	.align	2
.L230:
	.long	(.L257 - .) + 0x0
	.long	0x2102e00
	.align	2
.L243:
	.long	(.L257 - .) + 0x0
	.long	0xf009e0
	.align	2
.L240:
	.long	(.L257 - .) + 0x0
	.long	0x11809f0
	.align	2
.L239:
	.long	(.L257 - .) + 0x0
	.long	0x1200990
	.align	2
.L220:
	.long	(.L257 - .) + 0x0
	.long	0x2c86560
	.align	2
.L225:
	.long	(.L257 - .) + 0x18000000
	.long	0x2a12ca9
	.align	2
.L251:
	.long	(.L258 - .) + 0x0
	.long	0x2c08950
	.align	2
.L250:
	.long	(.L257 - .) + 0x0
	.long	0xb009e8
	.align	2
.L249:
	.long	(.L257 - .) + 0x0
	.long	0xb80958
	.align	2
.L247:
	.long	(.L257 - .) + 0x0
	.long	0xc809b0
	.align	2
.L241:
	.long	(.L257 - .) + 0x0
	.long	0x1000950
	.align	2
.L227:
	.long	(.L257 - .) + 0x0
	.long	0x2280a00
	.align	2
.L248:
	.long	(.L257 - .) + 0x0
	.long	0xc00a28
	.align	2
.L246:
	.long	(.L257 - .) + 0x0
	.long	0xd009d0
	.align	2
.L242:
	.long	(.L257 - .) + 0x0
	.long	0xf80a18
	.align	2
.L237:
	.long	(.L257 - .) + 0x0
	.long	0x1300988
	.align	2
.L232:
	.long	(.L257 - .) + 0x0
	.long	0x1900980
	.align	2
.L222:
	.long	(.L257 - .) + 0x0
	.long	0x2b831c8
	.align	2
.L233:
	.long	(.L257 - .) + 0x0
	.long	0x1880890
	.align	2
.L234:
	.long	(.L257 - .) + 0x0
	.long	0x1800948
	.align	2
.L226:
	.long	(.L257 - .) + 0x0
	.long	0x26035a8
	.align	2
.L244:
	.long	(.L257 - .) + 0x0
	.long	0xe00960
	.align	2
.L223:
	.long	(.L257 - .) + 0x0
	.long	0x2b885c0
	.align	2
.L219:
	.long	(.L257 - .) + 0x0
	.long	0x3000978
	.align	2
.L216:
	.long	(.L257 - .) + 0x0
	.long	0x32035a0
.L253:
	.byte	47,114,111,111,116,47,97,98,47,115,116,114,101,115,115,95
	.byte	99,97,101,46,109,108,0
.L255:
	.byte	112,114,105,110,116,102,46,109,108,0
	.align	2
.L254:
	.long	(.L253 - .) + 0x0
	.byte	83,116,114,101,115,115,95,99,97,101,46,98,117,109,112,0
	.align	2
.L256:
	.long	(.L255 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.align	2
.L258:
	.long	(.L253 - .) + 0x0
	.byte	83,116,114,101,115,115,95,99,97,101,46,40,102,117,110,41
	.byte	0
	.align	2
.L257:
	.long	(.L253 - .) + 0x0
	.byte	83,116,114,101,115,115,95,99,97,101,0
	.align	3
	.size	camlStress_cae.frametable, . - camlStress_cae.frametable
	.section .note.GNU-stack,"",%progbits
