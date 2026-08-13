	.file	""
	.section ".data"
	.align	8
	.globl	camlSq.data_begin
	.type	camlSq.data_begin, @object
camlSq.data_begin:
	.text
	.globl	camlSq.code_begin
	.type	camlSq.code_begin, @object
camlSq.code_begin:
	.section ".data"
	.align	8
	.section ".data"
	.align	8
	.quad	3063
camlSq.14:
	.quad	camlSq.f_274
	.quad	72057594037927941
	.section ".data"
	.align	8
	.quad	1792
	.globl	camlSq
	.type	camlSq, @object
camlSq:
	.quad	1
	.section ".data"
	.align	8
	.globl	camlSq.gc_roots
	.type	camlSq.gc_roots, @object
camlSq.gc_roots:
	.quad	camlSq
	.quad	0
	.globl	camlSq.f_274
	.type	camlSq.f_274, @function
	.text
	.align	8
camlSq.f_274:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	lay	%r15, -8(%r15)
	.cfi_def_cfa_offset	8
	.cfi_escape 0x14, 15, 0
	stg	%r14, 0(%r15)
	.cfi_offset 14, -8
.L100:
	ldy	%f0, 0(%r2)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, sqrt@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	lay	%r11, -16(%r11)
	clg	%r11, 0(%r10)
	brcl	4, .L103
.L102:	la	%r2, 8(%r11)
	lghi	%r4, 1277
	stg	%r4, -8(%r2)
	stdy	%f0, 0(%r2)
	lg	%r14, 0(%r15)
	la	%r15, 8(%r15)
	br	%r14
.L103:	lgrl	%r1, caml_call_gc@GOT
	basr	%r14, %r1
.L101:	brcl	15, .L102
	.cfi_endproc
	.size	camlSq.f_274, . - camlSq.f_274
	.section ".data"
	.align	8
	.quad	2045
camlSq.9:
	.quad	0x7e37e43c8800759c
	.section ".data"
	.align	8
	.quad	2045
camlSq.8:
	.quad	0x0
	.section ".data"
	.align	8
	.quad	2045
camlSq.7:
	.quad	0x4000000000000000
	.section ".data"
	.align	8
	.quad	2816
camlSq.6:
	.quad	camlSq.4
	.quad	camlSq.5
	.section ".data"
	.align	8
	.quad	2044
camlSq.5:
	.byte	37,46,54,102,10
	.space	2
	.byte	2
	.section ".data"
	.align	8
	.quad	4872
camlSq.4:
	.quad	camlSq.1
	.quad	1
	.quad	camlSq.2
	.quad	camlSq.3
	.section ".data"
	.align	8
	.quad	2828
camlSq.3:
	.quad	21
	.quad	1
	.section ".data"
	.align	8
	.quad	1792
camlSq.2:
	.quad	13
	.section ".data"
	.align	8
	.quad	2045
camlSq.13:
	.quad	0xbff0000000000000
	.section ".data"
	.align	8
	.quad	2816
camlSq.12:
	.quad	camlSq.10
	.quad	camlSq.11
	.section ".data"
	.align	8
	.quad	2044
camlSq.11:
	.byte	37,98,10
	.space	4
	.byte	4
	.section ".data"
	.align	8
	.quad	2825
camlSq.10:
	.quad	1
	.quad	camlSq.3
	.section ".data"
	.align	8
	.quad	2816
camlSq.1:
	.quad	1
	.quad	1
	.globl	camlSq.entry
	.type	camlSq.entry, @function
	.text
	.align	8
camlSq.entry:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	lay	%r1, -336(%r15)
	clg	%r1, 40(%r10)
	brcl	4, .L105
.L106:
	lay	%r15, -24(%r15)
	.cfi_def_cfa_offset	24
	.cfi_escape 0x14, 15, 0
	stg	%r14, 16(%r15)
	.cfi_offset 14, -8
.L104:
	lgrl	%r3, camlSq.14@GOT
	lgrl	%r2, camlSq@GOT
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_initialize@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	larl	%r1, .L107
	ld	%f0, 0(%r1)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, sqrt@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	std	%f0, 0(%r15)
	lgrl	%r3, camlSq.6@GOT
	lgrl	%r5, camlStdlib@GOT
	lg	%r2, 304(%r5)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L108:
	lgr	%r3, %r2
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L109:
	la	%r2, 8(%r11)
	lghi	%r9, 1277
	stg	%r9, -8(%r2)
	ldy	%f11, 0(%r15)
	stdy	%f11, 0(%r2)
	lg	%r12, 0(%r3)
	basr	%r14, %r12
.L110:
	larl	%r1, .L111
	ld	%f0, 0(%r1)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, sqrt@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	std	%f0, 0(%r15)
	lgrl	%r3, camlSq.6@GOT
	lgrl	%r4, camlStdlib@GOT
	lg	%r2, 304(%r4)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L112:
	lgr	%r3, %r2
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L113:
	la	%r2, 8(%r11)
	lghi	%r7, 1277
	stg	%r7, -8(%r2)
	ldy	%f12, 0(%r15)
	stdy	%f12, 0(%r2)
	lg	%r8, 0(%r3)
	basr	%r14, %r8
.L114:
	larl	%r1, .L115
	ld	%f0, 0(%r1)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, sqrt@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	std	%f0, 0(%r15)
	lgrl	%r3, camlSq.6@GOT
	lgrl	%r12, camlStdlib@GOT
	lg	%r2, 304(%r12)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L116:
	lgr	%r3, %r2
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L117:
	la	%r2, 8(%r11)
	lghi	%r5, 1277
	stg	%r5, -8(%r2)
	ldy	%f13, 0(%r15)
	stdy	%f13, 0(%r2)
	lg	%r6, 0(%r3)
	basr	%r14, %r6
.L118:
	larl	%r1, .L119
	ld	%f0, 0(%r1)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, sqrt@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	cdbr	%f0, %f0
	lghi	%r7, 1
	brc	  7, .L120
	lghi	%r7, 0
.L120:
	sllg	%r8, %r7,1(%r0)
	la	%r9, 1(%r8)
	stg	%r9, 8(%r15)
	lgrl	%r3, camlSq.12@GOT
	lgrl	%r2, camlStdlib@GOT
	lg	%r2, 304(%r2)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L121:
	lgr	%r3, %r2
	lg	%r5, 0(%r3)
	lg	%r2, 8(%r15)
	basr	%r14, %r5
.L122:
	lgrl	%r6, camlStdlib@GOT
	lg	%r7, 168(%r6)
	ldy	%f0, 0(%r7)
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, sqrt@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	lgrl	%r8, camlStdlib@GOT
	lg	%r9, 168(%r8)
	ldy	%f10, 0(%r9)
	cdbr	%f0, %f10
	lghi	%r12, 1
	brc	  8, .L123
	lghi	%r12, 0
.L123:
	sllg	%r2, %r12,1(%r0)
	la	%r3, 1(%r2)
	stg	%r3, 8(%r15)
	lgrl	%r3, camlSq.12@GOT
	lg	%r2, 304(%r8)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L124:
	lgr	%r3, %r2
	lg	%r8, 0(%r3)
	lg	%r2, 8(%r15)
	basr	%r14, %r8
.L125:
	lghi	%r2, 1
	lg	%r14, 16(%r15)
	la	%r15, 24(%r15)
	br	%r14
.L105:
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
	brcl	15, .L106
	.cfi_endproc
	.size	camlSq.entry, . - camlSq.entry
	.section ".rodata"
	.align	8
.L119:	.quad	0xbff0000000000000
.L115:	.quad	0x7e37e43c8800759c
.L111:	.quad	0x0
.L107:	.quad	0x4000000000000000
	.section ".data"
	.align	8
	.text
	.globl	camlSq.code_end
	.type	camlSq.code_end, @object
camlSq.code_end:
	.long	0
	.section ".data"
	.align	8
	.globl	camlSq.data_end
	.type	camlSq.data_end, @object
	.quad	0
camlSq.data_end:
	.quad	0
	.section ".data"
	.align	8
	.globl	camlSq.frametable
	.type	camlSq.frametable, @object
camlSq.frametable:
	.quad	14
	.quad	.L125
	.short	25
	.short	0
	.align	4
	.long	(.L126 - .) + 0x0
	.align	8
	.quad	.L124
	.short	25
	.short	0
	.align	4
	.long	(.L127 - .) + 0x0
	.align	8
	.quad	.L122
	.short	25
	.short	0
	.align	4
	.long	(.L128 - .) + 0x0
	.align	8
	.quad	.L121
	.short	25
	.short	0
	.align	4
	.long	(.L127 - .) + 0x0
	.align	8
	.quad	.L118
	.short	25
	.short	0
	.align	4
	.long	(.L129 - .) + 0x0
	.align	8
	.quad	.L117
	.short	26
	.short	1
	.short	3
	.byte	1
	.byte	0
	.align	8
	.quad	.L116
	.short	25
	.short	0
	.align	4
	.long	(.L127 - .) + 0x0
	.align	8
	.quad	.L114
	.short	25
	.short	0
	.align	4
	.long	(.L130 - .) + 0x0
	.align	8
	.quad	.L113
	.short	26
	.short	1
	.short	3
	.byte	1
	.byte	0
	.align	8
	.quad	.L112
	.short	25
	.short	0
	.align	4
	.long	(.L127 - .) + 0x0
	.align	8
	.quad	.L110
	.short	25
	.short	0
	.align	4
	.long	(.L131 - .) + 0x0
	.align	8
	.quad	.L109
	.short	26
	.short	1
	.short	3
	.byte	1
	.byte	0
	.align	8
	.quad	.L108
	.short	25
	.short	0
	.align	4
	.long	(.L127 - .) + 0x0
	.align	8
	.quad	.L101
	.short	10
	.short	0
	.byte	1
	.byte	0
	.align	8
	.align	4
.L130:
	.long	(.L133 - .) + 0x0
	.long	0x280900
	.align	4
.L127:
	.long	(.L135 - .) + 0x0
	.long	0xf84518
	.align	4
.L126:
	.long	(.L133 - .) + 0x0
	.long	0x400970
	.align	4
.L128:
	.long	(.L133 - .) + 0x0
	.long	0x380980
	.align	4
.L129:
	.long	(.L133 - .) + 0x0
	.long	0x300910
	.align	4
.L131:
	.long	(.L133 - .) + 0x0
	.long	0x200900
.L134:
	.byte	112,114,105,110,116,102,46,109,108,0
.L132:
	.byte	115,113,46,109,108,0
	.align	4
.L133:
	.long	(.L132 - .) + 0x0
	.byte	83,113,0
	.align	4
.L135:
	.long	(.L134 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.align	8
	.size	camlSq.frametable, . - camlSq.frametable
	.section .note.GNU-stack,"",%progbits
