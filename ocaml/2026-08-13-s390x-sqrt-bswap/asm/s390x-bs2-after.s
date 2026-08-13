	.file	""
	.section ".data"
	.align	8
	.globl	camlBs2.data_begin
	.type	camlBs2.data_begin, @object
camlBs2.data_begin:
	.text
	.globl	camlBs2.code_begin
	.type	camlBs2.code_begin, @object
camlBs2.code_begin:
	.section ".data"
	.align	8
	.section ".data"
	.align	8
	.quad	3063
camlBs2.32:
	.quad	camlBs2.o_277
	.quad	72057594037927941
	.section ".data"
	.align	8
	.quad	4087
camlBs2.31:
	.quad	caml_curry3
	.quad	216172782113783815
	.quad	camlBs2.check_361
	.section ".data"
	.align	8
	.quad	2816
	.globl	camlBs2
	.type	camlBs2, @object
camlBs2:
	.quad	1
	.quad	1
	.section ".data"
	.align	8
	.globl	camlBs2.gc_roots
	.type	camlBs2.gc_roots, @object
camlBs2.gc_roots:
	.quad	camlBs2
	.quad	0
	.globl	camlBs2.o_277
	.type	camlBs2.o_277, @function
	.text
	.align	8
camlBs2.o_277:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
.L100:
	br	%r14
	.cfi_endproc
	.size	camlBs2.o_277, . - camlBs2.o_277
	.globl	camlBs2.check_361
	.type	camlBs2.check_361, @function
	.text
	.align	8
camlBs2.check_361:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	lay	%r1, -336(%r15)
	clg	%r1, 40(%r10)
	brcl	4, .L104
.L105:
	lay	%r15, -24(%r15)
	.cfi_def_cfa_offset	24
	.cfi_escape 0x14, 15, 0
	stg	%r14, 16(%r15)
	.cfi_offset 14, -8
.L103:
	stg	%r2, 0(%r15)
	lgr	%r2, %r3
	clg	%r11, 0(%r10)
	brcl	4, .L106
.L107:	lgr	%r3, %r4
	lgrl	%r7, caml_equal@GOT
	lgrl	%r1, caml_c_call@GOT
	basr	%r14, %r1
.L109:
	cgfi	%r2, 1
	brcl	8, .L102
	lgrl	%r6, camlBs2.8@GOT
	stg	%r6, 8(%r15)
	brcl	15,.L101
.L102:
	lgrl	%r6, camlBs2.9@GOT
	stg	%r6, 8(%r15)
.L101:
	lg	%r8, 0(%r15)
	stg	%r8, 0(%r15)
	lgrl	%r3, camlBs2.7@GOT
	lgrl	%r12, camlStdlib@GOT
	lg	%r2, 304(%r12)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L110:
	lgr	%r4, %r2
	lg	%r2, 0(%r15)
	lg	%r3, 8(%r15)
	lg	%r14, 16(%r15)
	la	%r15, 24(%r15)
	brcl	15, caml_apply2@PLT
.L106:	lgrl	%r1, caml_call_gc@GOT
	basr	%r14, %r1
.L108:	brcl	15, .L107
.L104:
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
	brcl	15, .L105
	.cfi_endproc
	.size	camlBs2.check_361, . - camlBs2.check_361
	.section ".data"
	.align	8
	.quad	3068
camlBs2.9:
	.byte	77,73,83,77,65,84,67,72
	.space	7
	.byte	7
	.section ".data"
	.align	8
	.quad	2044
camlBs2.8:
	.byte	111,107
	.space	5
	.byte	5
	.section ".data"
	.align	8
	.quad	2816
camlBs2.7:
	.quad	camlBs2.5
	.quad	camlBs2.6
	.section ".data"
	.align	8
	.quad	3068
camlBs2.6:
	.byte	37,45,49,52,115,32,37,115,10
	.space	6
	.byte	6
	.section ".data"
	.align	8
	.quad	2818
camlBs2.5:
	.quad	camlBs2.1
	.quad	camlBs2.4
	.section ".data"
	.align	8
	.quad	2828
camlBs2.4:
	.quad	65
	.quad	camlBs2.3
	.section ".data"
	.align	8
	.quad	3071
camlBs2.30:
	.quad	caml_int64_ops
	.quad	81985529216486895
	.section ".data"
	.align	8
	.quad	2818
camlBs2.3:
	.quad	1
	.quad	camlBs2.2
	.section ".data"
	.align	8
	.quad	2044
camlBs2.29:
	.byte	98,115,119,97,112,54,52
	.byte	0
	.section ".data"
	.align	8
	.quad	2816
camlBs2.28:
	.quad	camlBs2.26
	.quad	camlBs2.27
	.section ".data"
	.align	8
	.quad	3068
camlBs2.27:
	.byte	37,45,49,52,115,32,37,76,100,10
	.space	5
	.byte	5
	.section ".data"
	.align	8
	.quad	2818
camlBs2.26:
	.quad	camlBs2.1
	.quad	camlBs2.25
	.section ".data"
	.align	8
	.quad	2828
camlBs2.25:
	.quad	65
	.quad	camlBs2.24
	.section ".data"
	.align	8
	.quad	4871
camlBs2.24:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlBs2.2
	.section ".data"
	.align	8
	.quad	3071
camlBs2.23:
	.quad	caml_int32_ops
	.long	255
	.long	0
	.section ".data"
	.align	8
	.quad	3068
camlBs2.22:
	.byte	98,115,119,97,112,51,50,32,110,101,103
	.space	4
	.byte	4
	.section ".data"
	.align	8
	.quad	3071
camlBs2.21:
	.quad	caml_int32_ops
	.long	305419896
	.long	0
	.section ".data"
	.align	8
	.quad	3068
camlBs2.20:
	.byte	98,115,119,97,112,51,50,32,112,111,115
	.space	4
	.byte	4
	.section ".data"
	.align	8
	.quad	2828
camlBs2.2:
	.quad	21
	.quad	1
	.section ".data"
	.align	8
	.quad	2816
camlBs2.19:
	.quad	camlBs2.17
	.quad	camlBs2.18
	.section ".data"
	.align	8
	.quad	3068
camlBs2.18:
	.byte	37,45,49,52,115,32,37,108,100,10
	.space	5
	.byte	5
	.section ".data"
	.align	8
	.quad	2818
camlBs2.17:
	.quad	camlBs2.1
	.quad	camlBs2.16
	.section ".data"
	.align	8
	.quad	2828
camlBs2.16:
	.quad	65
	.quad	camlBs2.15
	.section ".data"
	.align	8
	.quad	4869
camlBs2.15:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlBs2.2
	.section ".data"
	.align	8
	.quad	3068
camlBs2.14:
	.byte	98,115,119,97,112,49,54,32,100,105,114,116,121
	.space	2
	.byte	2
	.section ".data"
	.align	8
	.quad	3068
camlBs2.13:
	.byte	98,115,119,97,112,49,54,32,70,70,70,70
	.space	3
	.byte	3
	.section ".data"
	.align	8
	.quad	3068
camlBs2.12:
	.byte	98,115,119,97,112,49,54,32,48,48,48,48
	.space	3
	.byte	3
	.section ".data"
	.align	8
	.quad	3068
camlBs2.11:
	.byte	98,115,119,97,112,49,54,32,48,48,70,70
	.space	3
	.byte	3
	.section ".data"
	.align	8
	.quad	3068
camlBs2.10:
	.byte	98,115,119,97,112,49,54,32,65,66,67,68
	.space	3
	.byte	3
	.section ".data"
	.align	8
	.quad	2816
camlBs2.1:
	.quad	1
	.quad	29
	.globl	camlBs2.entry
	.type	camlBs2.entry, @function
	.text
	.align	8
camlBs2.entry:
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
	lgrl	%r3, camlBs2.32@GOT
	lgrl	%r2, camlBs2@GOT
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_initialize@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	lgrl	%r3, camlBs2.31@GOT
	lgrl	%r5, camlBs2@GOT
	la	%r2, 8(%r5)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_initialize@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	lgfi	%r7, 87963
	srag	%r8, %r7,1(%r0)
	sllg	%r9, %r8, 48(%r0)
	lrvgr	%r9, %r9
	sllg	%r12, %r9,1(%r0)
	la	%r3, 1(%r12)
	lgfi	%r4, 105303
	lgrl	%r2, camlBs2.10@GOT
	brasl	%r14, camlBs2.check_361@PLT
.L114:
	lghi	%r5, 511
	srag	%r6, %r5,1(%r0)
	sllg	%r7, %r6, 48(%r0)
	lrvgr	%r7, %r7
	sllg	%r8, %r7,1(%r0)
	la	%r3, 1(%r8)
	lgfi	%r4, 130561
	lgrl	%r2, camlBs2.11@GOT
	brasl	%r14, camlBs2.check_361@PLT
.L115:
	lghi	%r3, 1
	srag	%r4, %r3,1(%r0)
	sllg	%r5, %r4, 48(%r0)
	lrvgr	%r5, %r5
	sllg	%r6, %r5,1(%r0)
	la	%r3, 1(%r6)
	lghi	%r4, 1
	lgrl	%r2, camlBs2.12@GOT
	brasl	%r14, camlBs2.check_361@PLT
.L116:
	lgfi	%r12, 131071
	srag	%r2, %r12,1(%r0)
	sllg	%r3, %r2, 48(%r0)
	lrvgr	%r3, %r3
	sllg	%r4, %r3,1(%r0)
	la	%r3, 1(%r4)
	lgfi	%r4, 131071
	lgrl	%r2, camlBs2.13@GOT
	brasl	%r14, camlBs2.check_361@PLT
.L117:
	lgfi	%r8, 610883483
	srag	%r9, %r8,1(%r0)
	sllg	%r12, %r9, 48(%r0)
	lrvgr	%r12, %r12
	sllg	%r2, %r12,1(%r0)
	la	%r3, 1(%r2)
	lgfi	%r4, 105303
	lgrl	%r2, camlBs2.14@GOT
	brasl	%r14, camlBs2.check_361@PLT
.L118:
	lgrl	%r6, camlBs2.21@GOT
	la	%r7, 8(%r6)
	lgf	%r8, 0(%r7)
	lrvr	%r9, %r8
	lgfr	%r9, %r9
	stg	%r9, 0(%r15)
	lgrl	%r12, camlBs2.20@GOT
	stg	%r12, 8(%r15)
	lgrl	%r3, camlBs2.19@GOT
	lgrl	%r4, camlStdlib@GOT
	lg	%r2, 304(%r4)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L119:
	lgr	%r4, %r2
		lgrl	%r1, caml_alloc2@GOT
	basr	%r14, %r1

.L120:
	la	%r3, 8(%r11)
	lghi	%r7, 2303
	stg	%r7, -8(%r3)
	lgrl	%r8, caml_int32_ops@GOT
	stg	%r8, 0(%r3)
	lg	%r12, 0(%r15)
	sllg	%r9, %r12,32(%r0)
	stg	%r9, 8(%r3)
	lg	%r2, 8(%r15)
	brasl	%r14, caml_apply2@PLT
.L121:
	lgrl	%r12, camlBs2.23@GOT
	la	%r2, 8(%r12)
	lgf	%r3, 0(%r2)
	lrvr	%r4, %r3
	lgfr	%r4, %r4
	stg	%r4, 0(%r15)
	lgrl	%r5, camlBs2.22@GOT
	stg	%r5, 8(%r15)
	lgrl	%r3, camlBs2.19@GOT
	lgrl	%r7, camlStdlib@GOT
	lg	%r2, 304(%r7)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L122:
	lgr	%r4, %r2
		lgrl	%r1, caml_alloc2@GOT
	basr	%r14, %r1

.L123:
	la	%r3, 8(%r11)
	lghi	%r2, 2303
	stg	%r2, -8(%r3)
	lgrl	%r5, caml_int32_ops@GOT
	stg	%r5, 0(%r3)
	lg	%r5, 0(%r15)
	sllg	%r5, %r5,32(%r0)
	stg	%r5, 8(%r3)
	lg	%r2, 8(%r15)
	brasl	%r14, caml_apply2@PLT
.L124:
	lgrl	%r5, camlBs2.30@GOT
	la	%r6, 8(%r5)
	lg	%r7, 0(%r6)
	lrvgr	%r8, %r7
	stg	%r8, 0(%r15)
	lgrl	%r9, camlBs2.29@GOT
	stg	%r9, 8(%r15)
	lgrl	%r3, camlBs2.28@GOT
	lgrl	%r2, camlStdlib@GOT
	lg	%r2, 304(%r2)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L125:
	lgr	%r4, %r2
		lgrl	%r1, caml_alloc2@GOT
	basr	%r14, %r1

.L126:
	la	%r3, 8(%r11)
	lghi	%r6, 2303
	stg	%r6, -8(%r3)
	lgrl	%r7, caml_int64_ops@GOT
	stg	%r7, 0(%r3)
	lg	%r5, 0(%r15)
	stg	%r5, 8(%r3)
	lg	%r2, 8(%r15)
	brasl	%r14, caml_apply2@PLT
.L127:
	lghi	%r2, 1
	lg	%r14, 16(%r15)
	la	%r15, 24(%r15)
	br	%r14
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
	.size	camlBs2.entry, . - camlBs2.entry
	.section ".data"
	.align	8
	.text
	.globl	camlBs2.code_end
	.type	camlBs2.code_end, @object
camlBs2.code_end:
	.long	0
	.section ".data"
	.align	8
	.globl	camlBs2.data_end
	.type	camlBs2.data_end, @object
	.quad	0
camlBs2.data_end:
	.quad	0
	.section ".data"
	.align	8
	.globl	camlBs2.frametable
	.type	camlBs2.frametable, @object
camlBs2.frametable:
	.quad	17
	.quad	.L127
	.short	25
	.short	0
	.align	4
	.long	(.L128 - .) + 0x0
	.align	8
	.quad	.L126
	.short	26
	.short	1
	.short	5
	.byte	1
	.byte	1
	.align	8
	.quad	.L125
	.short	25
	.short	0
	.align	4
	.long	(.L129 - .) + 0x0
	.align	8
	.quad	.L124
	.short	25
	.short	0
	.align	4
	.long	(.L130 - .) + 0x0
	.align	8
	.quad	.L123
	.short	26
	.short	1
	.short	5
	.byte	1
	.byte	1
	.align	8
	.quad	.L122
	.short	25
	.short	0
	.align	4
	.long	(.L129 - .) + 0x0
	.align	8
	.quad	.L121
	.short	25
	.short	0
	.align	4
	.long	(.L131 - .) + 0x0
	.align	8
	.quad	.L120
	.short	26
	.short	1
	.short	5
	.byte	1
	.byte	1
	.align	8
	.quad	.L119
	.short	25
	.short	0
	.align	4
	.long	(.L129 - .) + 0x0
	.align	8
	.quad	.L118
	.short	25
	.short	0
	.align	4
	.long	(.L132 - .) + 0x0
	.align	8
	.quad	.L117
	.short	25
	.short	0
	.align	4
	.long	(.L133 - .) + 0x0
	.align	8
	.quad	.L116
	.short	25
	.short	0
	.align	4
	.long	(.L134 - .) + 0x0
	.align	8
	.quad	.L115
	.short	25
	.short	0
	.align	4
	.long	(.L135 - .) + 0x0
	.align	8
	.quad	.L114
	.short	25
	.short	0
	.align	4
	.long	(.L136 - .) + 0x0
	.align	8
	.quad	.L110
	.short	25
	.short	1
	.short	0
	.align	4
	.long	(.L129 - .) + 0x0
	.align	8
	.quad	.L109
	.short	25
	.short	1
	.short	0
	.align	4
	.long	(.L137 - .) + 0x0
	.align	8
	.quad	.L108
	.short	26
	.short	3
	.short	0
	.short	1
	.short	5
	.byte	0
	.align	8
	.align	4
.L129:
	.long	(.L139 - .) + 0x0
	.long	0xf84518
	.align	4
.L132:
	.long	(.L141 - .) + 0x0
	.long	0x8009b8
	.align	4
.L133:
	.long	(.L141 - .) + 0x0
	.long	0x700990
	.align	4
.L131:
	.long	(.L141 - .) + 0x0
	.long	0x880a28
	.align	4
.L134:
	.long	(.L141 - .) + 0x0
	.long	0x680990
	.align	4
.L136:
	.long	(.L141 - .) + 0x0
	.long	0x580990
	.align	4
.L135:
	.long	(.L141 - .) + 0x0
	.long	0x600990
	.align	4
.L130:
	.long	(.L141 - .) + 0x0
	.long	0x900a28
	.align	4
.L128:
	.long	(.L141 - .) + 0x0
	.long	0x980a48
	.align	4
.L137:
	.long	(.L142 - .) + 0x0
	.long	0x409980
.L140:
	.byte	98,115,50,46,109,108,0
.L138:
	.byte	112,114,105,110,116,102,46,109,108,0
	.align	4
.L142:
	.long	(.L140 - .) + 0x0
	.byte	66,115,50,46,99,104,101,99,107,0
	.align	4
.L141:
	.long	(.L140 - .) + 0x0
	.byte	66,115,50,0
	.align	4
.L139:
	.long	(.L138 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.align	8
	.size	camlBs2.frametable, . - camlBs2.frametable
	.section .note.GNU-stack,"",%progbits
