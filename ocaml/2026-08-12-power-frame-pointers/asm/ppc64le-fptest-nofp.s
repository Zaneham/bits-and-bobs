	.file	""
	.abiversion 2
	.section ".data"
	.globl	camlFptest.data_begin
	.type	camlFptest.data_begin, @object
camlFptest.data_begin:
	.text
	.globl	camlFptest.code_begin
	.type	camlFptest.code_begin, @object
camlFptest.code_begin:
	.section ".data"
	.align  3
	.section ".data"
	.align  3
	.quad	3063
camlFptest.2:
	.quad	camlFptest.leaf_274
	.quad	72057594037927941
	.section ".data"
	.align  3
	.quad	3063
camlFptest.1:
	.quad	camlFptest.middle_277
	.quad	72057594037927941
	.section ".data"
	.align  3
	.quad	2816
	.globl	camlFptest
	.type	camlFptest, @object
camlFptest:
	.quad	1
	.quad	1
	.section ".data"
	.align  3
	.globl	camlFptest.gc_roots
	.type	camlFptest.gc_roots, @object
camlFptest.gc_roots:
	.quad	camlFptest
	.quad	0
	.text
	.align	2
	.globl	camlFptest.leaf_274
	.type	camlFptest.leaf_274, @function
camlFptest.leaf_274:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlFptest.leaf_274, . - 0b
.L100:
	sldi	4, 3, 1
	addi	3, 4, 1
	blr
	.cfi_endproc
	.size	camlFptest.leaf_274, . - camlFptest.leaf_274
	.text
	.align	2
.L102:	mflr	28
	li	27, 38
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L103
	.globl	camlFptest.middle_277
	.type	camlFptest.middle_277, @function
camlFptest.middle_277:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlFptest.middle_277, . - 0b
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
	std	3, 32(1)
	addi	3, 3, 2
	bl	camlFptest.leaf_274
.L104:
	nop
	ld	2, 56(1)
	std	3, 40(1)
	ld	3, 32(1)
	bl	camlFptest.leaf_274
.L105:
	nop
	ld	2, 56(1)
	ld	11, 64(1)
	mtlr	11
	ld	10, 40(1)
	add	7, 3, 10
	addi	3, 7, -1
	addi	1, 1, 48
	blr
	.cfi_endproc
	.size	camlFptest.middle_277, . - camlFptest.middle_277
	.text
	.align	2
.L107:	mflr	28
	li	27, 36
	bl	caml_call_realloc_stack
	nop	
	mtlr	28
	b	.L108
	.globl	camlFptest.entry
	.type	camlFptest.entry, @function
camlFptest.entry:
	.cfi_startproc
0:	addis	2, 12, (.TOC. - 0b)@ha
	addi	2, 2, (.TOC. - 0b)@l
	.localentry camlFptest.entry, . - 0b
	ld	11, 40(30)
	addi	11, 11, 344
	cmpld	1, 11
	ble-	.L107
.L108:
	mflr	0
	std	0, 16(1)
	std	2, 8(1)
	.cfi_offset 65, 16
	addi	1, 1, -32
	.cfi_adjust_cfa_offset	32
.L106:
	addis	4, 2, .L109@toc@ha
	ld	4, .L109@toc@l(4) # camlFptest.2
	addis	3, 2, .L110@toc@ha
	ld	3, .L110@toc@l(3) # camlFptest
	mr	28, 1
	.cfi_remember_state
	.cfi_def_cfa_register 28
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	.cfi_restore_state
	addis	4, 2, .L111@toc@ha
	ld	4, .L111@toc@l(4) # camlFptest.1
	addis	6, 2, .L110@toc@ha
	ld	6, .L110@toc@l(6) # camlFptest
	addi	3, 6, 8
	mr	28, 1
	.cfi_remember_state
	.cfi_def_cfa_register 28
	ld	1, 64(30)
	bl	caml_initialize
	nop	
	mr	1, 28
	.cfi_restore_state
	li	3, 7
	bl	camlFptest.middle_277
.L112:
	nop
	ld	2, 40(1)
	bl	camlStdlib.string_of_int_175
.L113:
	nop
	ld	2, 40(1)
	mr	4, 3
	addis	11, 2, .L114@toc@ha
	ld	11, .L114@toc@l(11) # camlStdlib
	ld	3, 304(11)
	bl	camlStdlib.output_string_253
.L115:
	nop
	ld	2, 40(1)
	li	3, 1
	ld	11, 48(1)
	mtlr	11
	addi	1, 1, 32
	blr
	.cfi_endproc
	.size	camlFptest.entry, . - camlFptest.entry
	.section ".data"
	.align  3
	.text
	.globl	camlFptest.code_end
	.type	camlFptest.code_end, @object
camlFptest.code_end:
	.long	0
	.section ".data"
	.globl	camlFptest.data_end
	.type	camlFptest.data_end, @object
	.quad	0
camlFptest.data_end:
	.quad	0
	.section ".data"
	.align  3
	.globl	camlFptest.frametable
	.type	camlFptest.frametable, @object
camlFptest.frametable:
	.quad	5
	.quad	.L115
	.short	33
	.short	0
	.balign	4
	.long	(.L116 - .) + 0x0
	.balign	8
	.quad	.L113
	.short	33
	.short	0
	.balign	4
	.long	(.L117 - .) + 0x0
	.balign	8
	.quad	.L112
	.short	33
	.short	0
	.balign	4
	.long	(.L118 - .) + 0x0
	.balign	8
	.quad	.L105
	.short	49
	.short	1
	.short	40
	.balign	4
	.long	(.L119 - .) + 0x0
	.balign	8
	.quad	.L104
	.short	49
	.short	0
	.balign	4
	.long	(.L120 - .) + 0x0
	.balign	8
	.balign	4
.L119:
	.long	(.L122 - .) + 0x0
	.long	0x107920
	.balign	4
.L117:
	.long	(.L124 - .) + 0x0
	.long	0xf489dc0
	.balign	4
.L118:
	.long	(.L125 - .) + 0x0
	.long	0x184ce8
	.balign	4
.L116:
	.long	(.L124 - .) + 0x0
	.long	0xf4849c0
	.balign	4
.L120:
	.long	(.L122 - .) + 0x0
	.long	0x109d88
.L123:
	.byte	115,116,100,108,105,98,46,109,108,0
.L121:
	.byte	102,112,116,101,115,116,46,109,108,0
	.balign	4
.L124:
	.long	(.L123 - .) + 0x0
	.byte	83,116,100,108,105,98,46,112,114,105,110,116,95,105,110,116
	.byte	0
	.balign	4
.L125:
	.long	(.L121 - .) + 0x0
	.byte	70,112,116,101,115,116,0
	.balign	4
.L122:
	.long	(.L121 - .) + 0x0
	.byte	70,112,116,101,115,116,46,109,105,100,100,108,101,0
	.balign	8
	.size	camlFptest.frametable, . - camlFptest.frametable
 .section ".toc","aw"
.L109:	.quad	camlFptest.2
.L114:	.quad	camlStdlib
.L111:	.quad	camlFptest.1
.L110:	.quad	camlFptest
	.section .note.GNU-stack,"",%progbits
