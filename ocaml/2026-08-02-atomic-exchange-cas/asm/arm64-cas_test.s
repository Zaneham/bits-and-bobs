	.file	""
	.data
	.globl	camlCas_test.data_begin
camlCas_test.data_begin:
	.text
	.globl	camlCas_test.code_begin
camlCas_test.code_begin:
	.data
	.align	3
	.data
	.align	3
	.quad	4087
	.globl	camlCas_test.29
camlCas_test.29:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlCas_test.check_279
	.data
	.align	3
	.quad	1792
	.globl	camlCas_test
	.globl	camlCas_test
camlCas_test:
	.quad	1
	.data
	.align	3
	.globl	camlCas_test.gc_roots
	.globl	camlCas_test.gc_roots
camlCas_test.gc_roots:
	.quad	camlCas_test
	.quad	0
	.text
	.align	3
	.globl	camlCas_test.check_279
	.type	camlCas_test.check_279, %function
.L102:
	mov	x16, #34
	stp	x16, x30, [sp, #-16]!
	bl	caml_call_realloc_stack
	ldp	x16, x30, [sp], #16
camlCas_test.check_279:
	.cfi_startproc
	ldr	x16, [x28, #40]
	add	x16, x16, #328
	cmp	sp, x16
	bcc	.L102
.L103:
.L104:
	str	x30, [sp, #-8]
	.cfi_offset 30, -8
	sub	sp, sp, #16
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L104) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L105:
.L101:
	.ifgt (. - .L105) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L106:
	cmp	x1, #1
	b.eq	.L100
	.ifgt (. - .L106) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L107:
	orr	x0, xzr, #1
	.ifgt (. - .L107) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L108:
	.ifgt (. - .L108) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L109:
	add	sp, sp, #16
	.cfi_adjust_cfa_offset	-16
	ldr	x30, [sp, #-8]
	ret
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L109) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L110:
.L100:
	.ifgt (. - .L110) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L111:
	str	x0, [sp, #0]
	.ifgt (. - .L111) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L112:
	adrp	x1, :got:camlCas_test.6
	ldr	x1, [x1, #:got_lo12:camlCas_test.6]
	.ifgt (. - .L112) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L113:
	adrp	x4, :got:camlStdlib
	ldr	x4, [x4, #:got_lo12:camlStdlib]
	.ifgt (. - .L113) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L114:
	ldr	x0, [x4, #304]
	.ifgt (. - .L114) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L115:
	bl	camlStdlib__Printf.fprintf_433
.L116:
	.ifgt (. - .L115) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L117:
	mov	x1, x0
	.ifgt (. - .L117) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L118:
	ldr	x7, [x1, #0]
	.ifgt (. - .L118) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L119:
	ldr	x0, [sp, #0]
	.ifgt (. - .L119) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L120:
	blr	x7
.L121:
	.ifgt (. - .L120) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L122:
	orr	x0, xzr, #3
	.ifgt (. - .L122) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L123:
	add	sp, sp, #16
	.cfi_adjust_cfa_offset	-16
	ldr	x30, [sp, #-8]
	b	camlStdlib.exit_480
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L123) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.ifgt (. - .L103) - 92
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.cfi_endproc
	.type	camlCas_test.check_279, %function
	.size	camlCas_test.check_279, . - camlCas_test.check_279
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.9
camlCas_test.9:
	.ascii  "cas-ok-result"
	.space	2
	.byte	2
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.8
camlCas_test.8:
	.ascii  "cas-fail-value"
	.space	1
	.byte	1
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.7
camlCas_test.7:
	.ascii  "cas-fail-result"
	.byte	0
	.data
	.align	3
	.quad	2816
	.globl	camlCas_test.6
camlCas_test.6:
	.quad	camlCas_test.4
	.quad	camlCas_test.5
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.5
camlCas_test.5:
	.ascii  "FAIL %s\12"
	.space	7
	.byte	7
	.data
	.align	3
	.quad	2827
	.globl	camlCas_test.4
camlCas_test.4:
	.quad	camlCas_test.1
	.quad	camlCas_test.3
	.data
	.align	3
	.quad	2818
	.globl	camlCas_test.3
camlCas_test.3:
	.quad	1
	.quad	camlCas_test.2
	.data
	.align	3
	.quad	2044
	.globl	camlCas_test.28
camlCas_test.28:
	.ascii  "all ok"
	.space	1
	.byte	1
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.27
camlCas_test.27:
	.ascii  "cas-loop"
	.space	7
	.byte	7
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.26
camlCas_test.26:
	.ascii  "cas-branch"
	.space	5
	.byte	5
	.data
	.align	3
	.quad	2044
	.globl	camlCas_test.25
camlCas_test.25:
	.ascii  "no"
	.space	5
	.byte	5
	.data
	.align	3
	.quad	2044
	.globl	camlCas_test.24
camlCas_test.24:
	.ascii  "yes"
	.space	4
	.byte	4
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.23
camlCas_test.23:
	.ascii  "cas-bool-fail"
	.space	2
	.byte	2
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.22
camlCas_test.22:
	.ascii  "cas-bool-value"
	.space	1
	.byte	1
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.21
camlCas_test.21:
	.ascii  "cas-bool"
	.space	7
	.byte	7
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.20
camlCas_test.20:
	.ascii  "exch-new2"
	.space	6
	.byte	6
	.data
	.align	3
	.quad	2828
	.globl	camlCas_test.2
camlCas_test.2:
	.quad	21
	.quad	1
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.19
camlCas_test.19:
	.ascii  "exch-old2"
	.space	6
	.byte	6
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.18
camlCas_test.18:
	.ascii  "exch-new"
	.space	7
	.byte	7
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.17
camlCas_test.17:
	.ascii  "exch-old"
	.space	7
	.byte	7
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.16
camlCas_test.16:
	.ascii  "cas-same-value"
	.space	1
	.byte	1
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.15
camlCas_test.15:
	.ascii  "cas-same"
	.space	7
	.byte	7
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.14
camlCas_test.14:
	.ascii  "cas-zero-value"
	.space	1
	.byte	1
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.13
camlCas_test.13:
	.ascii  "cas-zero"
	.space	7
	.byte	7
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.12
camlCas_test.12:
	.ascii  "cas-neg-value"
	.space	2
	.byte	2
	.data
	.align	3
	.quad	2044
	.globl	camlCas_test.11
camlCas_test.11:
	.ascii  "cas-neg"
	.byte	0
	.data
	.align	3
	.quad	3068
	.globl	camlCas_test.10
camlCas_test.10:
	.ascii  "cas-ok-value"
	.space	3
	.byte	3
	.data
	.align	3
	.quad	2044
	.globl	camlCas_test.1
camlCas_test.1:
	.ascii  "FAIL "
	.space	2
	.byte	2
	.text
	.align	3
	.globl	camlCas_test.entry
	.type	camlCas_test.entry, %function
.L130:
	mov	x16, #34
	stp	x16, x30, [sp, #-16]!
	bl	caml_call_realloc_stack
	ldp	x16, x30, [sp], #16
camlCas_test.entry:
	.cfi_startproc
	ldr	x16, [x28, #40]
	add	x16, x16, #328
	cmp	sp, x16
	bcc	.L130
.L131:
.L132:
	str	x30, [sp, #-8]
	.cfi_offset 30, -8
	sub	sp, sp, #16
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L132) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L133:
.L129:
	.ifgt (. - .L133) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L134:
	adrp	x1, :got:camlCas_test.29
	ldr	x1, [x1, #:got_lo12:camlCas_test.29]
	.ifgt (. - .L134) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L135:
	adrp	x0, :got:camlCas_test
	ldr	x0, [x0, #:got_lo12:camlCas_test]
	.ifgt (. - .L135) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L136:
	mov	x19, sp
	.cfi_remember_state
	.cfi_def_cfa_register 19
	ldr	x16, [x28, 64]
	mov	sp, x16
	bl	caml_initialize
	mov	sp, x19
	.cfi_restore_state
	.ifgt (. - .L136) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L137:
	bl	caml_alloc1
.L138:	add	x2, x27, #8
	.ifgt (. - .L137) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L139:
	str	x2, [sp, #0]
	.ifgt (. - .L139) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L140:
	orr	x3, xzr, #1024
	.ifgt (. - .L140) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L141:
	str	x3, [x2, #-8]
	.ifgt (. - .L141) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L142:
	movz	x4, #21, lsl #0
	.ifgt (. - .L142) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L143:
	str	x4, [x2, #0]
	.ifgt (. - .L143) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L144:
	movz	x5, #85, lsl #0
	.ifgt (. - .L144) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L145:
	movz	x6, #199, lsl #0
	.ifgt (. - .L145) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L146:
.L147:
	ldaxr	x7, [x2]
	cmp	x7, x6
	b.ne	.L148
	stlxr	w17, x5, [x2]
	cbnz	w17, .L147
	b	.L149
.L148:
	clrex
.L149:
	cset	x7, eq
	dmb	ishst
	.ifgt (. - .L146) - 36
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L150:
	lsl	x8, x7, #1
	.ifgt (. - .L150) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L151:
	add	x9, x8, #1
	.ifgt (. - .L151) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L152:
	cmp	x9, #1
	cset	x10, eq
	.ifgt (. - .L152) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L153:
	lsl	x11, x10, #1
	.ifgt (. - .L153) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L154:
	add	x1, x11, #1
	.ifgt (. - .L154) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L155:
	adrp	x0, :got:camlCas_test.7
	ldr	x0, [x0, #:got_lo12:camlCas_test.7]
	.ifgt (. - .L155) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L156:
	bl	camlCas_test.check_279
.L157:
	.ifgt (. - .L156) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L158:
	ldr	x19, [sp, #0]
	.ifgt (. - .L158) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L159:
	dmb	ishld
	ldar	x14, [x19]
	.ifgt (. - .L159) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L160:
	cmp	x14, #21
	cset	x15, eq
	.ifgt (. - .L160) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L161:
	orr	x19, xzr, #1
	.ifgt (. - .L161) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L162:
	add	x1, x19, x15, lsl #1
	.ifgt (. - .L162) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L163:
	adrp	x0, :got:camlCas_test.8
	ldr	x0, [x0, #:got_lo12:camlCas_test.8]
	.ifgt (. - .L163) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L164:
	bl	camlCas_test.check_279
.L165:
	.ifgt (. - .L164) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L166:
	movz	x22, #85, lsl #0
	.ifgt (. - .L166) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L167:
	movz	x23, #21, lsl #0
	.ifgt (. - .L167) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L168:
	ldr	x20, [sp, #0]
	.ifgt (. - .L168) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L169:
.L170:
	ldaxr	x24, [x20]
	cmp	x24, x23
	b.ne	.L171
	stlxr	w17, x22, [x20]
	cbnz	w17, .L170
	b	.L172
.L171:
	clrex
.L172:
	cset	x24, eq
	dmb	ishst
	.ifgt (. - .L169) - 36
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L173:
	lsl	x25, x24, #1
	.ifgt (. - .L173) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L174:
	add	x0, x25, #1
	.ifgt (. - .L174) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L175:
	cmp	x0, #3
	cset	x1, eq
	.ifgt (. - .L175) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L176:
	lsl	x2, x1, #1
	.ifgt (. - .L176) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L177:
	add	x1, x2, #1
	.ifgt (. - .L177) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L178:
	adrp	x0, :got:camlCas_test.9
	ldr	x0, [x0, #:got_lo12:camlCas_test.9]
	.ifgt (. - .L178) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L179:
	bl	camlCas_test.check_279
.L180:
	.ifgt (. - .L179) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L181:
	ldr	x21, [sp, #0]
	.ifgt (. - .L181) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L182:
	dmb	ishld
	ldar	x5, [x21]
	.ifgt (. - .L182) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L183:
	cmp	x5, #85
	cset	x6, eq
	.ifgt (. - .L183) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L184:
	orr	x7, xzr, #1
	.ifgt (. - .L184) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L185:
	add	x1, x7, x6, lsl #1
	.ifgt (. - .L185) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L186:
	adrp	x0, :got:camlCas_test.10
	ldr	x0, [x0, #:got_lo12:camlCas_test.10]
	.ifgt (. - .L186) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L187:
	bl	camlCas_test.check_279
.L188:
	.ifgt (. - .L187) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L189:
	orr	x10, xzr, #-13
	.ifgt (. - .L189) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L190:
	movz	x11, #85, lsl #0
	.ifgt (. - .L190) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L191:
	ldr	x22, [sp, #0]
	.ifgt (. - .L191) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L192:
.L193:
	ldaxr	x12, [x22]
	cmp	x12, x11
	b.ne	.L194
	stlxr	w17, x10, [x22]
	cbnz	w17, .L193
	b	.L195
.L194:
	clrex
.L195:
	cset	x12, eq
	dmb	ishst
	.ifgt (. - .L192) - 36
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L196:
	lsl	x13, x12, #1
	.ifgt (. - .L196) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L197:
	add	x14, x13, #1
	.ifgt (. - .L197) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L198:
	cmp	x14, #3
	cset	x15, eq
	.ifgt (. - .L198) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L199:
	lsl	x19, x15, #1
	.ifgt (. - .L199) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L200:
	add	x1, x19, #1
	.ifgt (. - .L200) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L201:
	adrp	x0, :got:camlCas_test.11
	ldr	x0, [x0, #:got_lo12:camlCas_test.11]
	.ifgt (. - .L201) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L202:
	bl	camlCas_test.check_279
.L203:
	.ifgt (. - .L202) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L204:
	ldr	x23, [sp, #0]
	.ifgt (. - .L204) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L205:
	dmb	ishld
	ldar	x22, [x23]
	.ifgt (. - .L205) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L206:
	cmn	x22, #13
	cset	x23, eq
	.ifgt (. - .L206) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L207:
	orr	x24, xzr, #1
	.ifgt (. - .L207) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L208:
	add	x1, x24, x23, lsl #1
	.ifgt (. - .L208) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L209:
	adrp	x0, :got:camlCas_test.12
	ldr	x0, [x0, #:got_lo12:camlCas_test.12]
	.ifgt (. - .L209) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L210:
	bl	camlCas_test.check_279
.L211:
	.ifgt (. - .L210) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L212:
	orr	x1, xzr, #1
	.ifgt (. - .L212) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L213:
	orr	x2, xzr, #-13
	.ifgt (. - .L213) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L214:
	ldr	x24, [sp, #0]
	.ifgt (. - .L214) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L215:
.L216:
	ldaxr	x3, [x24]
	cmp	x3, x2
	b.ne	.L217
	stlxr	w17, x1, [x24]
	cbnz	w17, .L216
	b	.L218
.L217:
	clrex
.L218:
	cset	x3, eq
	dmb	ishst
	.ifgt (. - .L215) - 36
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L219:
	lsl	x4, x3, #1
	.ifgt (. - .L219) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L220:
	add	x5, x4, #1
	.ifgt (. - .L220) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L221:
	cmp	x5, #3
	cset	x6, eq
	.ifgt (. - .L221) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L222:
	lsl	x7, x6, #1
	.ifgt (. - .L222) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L223:
	add	x1, x7, #1
	.ifgt (. - .L223) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L224:
	adrp	x0, :got:camlCas_test.13
	ldr	x0, [x0, #:got_lo12:camlCas_test.13]
	.ifgt (. - .L224) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L225:
	bl	camlCas_test.check_279
.L226:
	.ifgt (. - .L225) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L227:
	ldr	x25, [sp, #0]
	.ifgt (. - .L227) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L228:
	dmb	ishld
	ldar	x10, [x25]
	.ifgt (. - .L228) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L229:
	cmp	x10, #1
	cset	x11, eq
	.ifgt (. - .L229) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L230:
	orr	x12, xzr, #1
	.ifgt (. - .L230) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L231:
	add	x1, x12, x11, lsl #1
	.ifgt (. - .L231) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L232:
	adrp	x0, :got:camlCas_test.14
	ldr	x0, [x0, #:got_lo12:camlCas_test.14]
	.ifgt (. - .L232) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L233:
	bl	camlCas_test.check_279
.L234:
	.ifgt (. - .L233) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L235:
	orr	x15, xzr, #1
	.ifgt (. - .L235) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L236:
	orr	x19, xzr, #1
	.ifgt (. - .L236) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L237:
	ldr	x0, [sp, #0]
	.ifgt (. - .L237) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L238:
.L239:
	ldaxr	x20, [x0]
	cmp	x20, x19
	b.ne	.L240
	stlxr	w17, x15, [x0]
	cbnz	w17, .L239
	b	.L241
.L240:
	clrex
.L241:
	cset	x20, eq
	dmb	ishst
	.ifgt (. - .L238) - 36
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L242:
	lsl	x21, x20, #1
	.ifgt (. - .L242) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L243:
	add	x22, x21, #1
	.ifgt (. - .L243) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L244:
	cmp	x22, #3
	cset	x23, eq
	.ifgt (. - .L244) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L245:
	lsl	x24, x23, #1
	.ifgt (. - .L245) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L246:
	add	x1, x24, #1
	.ifgt (. - .L246) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L247:
	adrp	x0, :got:camlCas_test.15
	ldr	x0, [x0, #:got_lo12:camlCas_test.15]
	.ifgt (. - .L247) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L248:
	bl	camlCas_test.check_279
.L249:
	.ifgt (. - .L248) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L250:
	ldr	x1, [sp, #0]
	.ifgt (. - .L250) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L251:
	dmb	ishld
	ldar	x1, [x1]
	.ifgt (. - .L251) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L252:
	cmp	x1, #1
	cset	x2, eq
	.ifgt (. - .L252) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L253:
	orr	x3, xzr, #1
	.ifgt (. - .L253) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L254:
	add	x1, x3, x2, lsl #1
	.ifgt (. - .L254) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L255:
	adrp	x0, :got:camlCas_test.16
	ldr	x0, [x0, #:got_lo12:camlCas_test.16]
	.ifgt (. - .L255) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L256:
	bl	camlCas_test.check_279
.L257:
	.ifgt (. - .L256) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L258:
	movz	x6, #11, lsl #0
	.ifgt (. - .L258) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L259:
	ldr	x2, [sp, #0]
	.ifgt (. - .L259) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L260:
.L261:
	ldaxr	x7, [x2]
	stlxr	w17, x6, [x2]
	cbnz	w17, .L261
	dmb	ishst
	.ifgt (. - .L260) - 16
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L262:
	cmp	x7, #1
	cset	x8, eq
	.ifgt (. - .L262) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L263:
	lsl	x9, x8, #1
	.ifgt (. - .L263) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L264:
	add	x1, x9, #1
	.ifgt (. - .L264) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L265:
	adrp	x0, :got:camlCas_test.17
	ldr	x0, [x0, #:got_lo12:camlCas_test.17]
	.ifgt (. - .L265) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L266:
	bl	camlCas_test.check_279
.L267:
	.ifgt (. - .L266) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L268:
	ldr	x3, [sp, #0]
	.ifgt (. - .L268) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L269:
	dmb	ishld
	ldar	x12, [x3]
	.ifgt (. - .L269) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L270:
	cmp	x12, #11
	cset	x13, eq
	.ifgt (. - .L270) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L271:
	orr	x14, xzr, #1
	.ifgt (. - .L271) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L272:
	add	x1, x14, x13, lsl #1
	.ifgt (. - .L272) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L273:
	adrp	x0, :got:camlCas_test.18
	ldr	x0, [x0, #:got_lo12:camlCas_test.18]
	.ifgt (. - .L273) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L274:
	bl	camlCas_test.check_279
.L275:
	.ifgt (. - .L274) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L276:
	movn	x20, #0
	.ifgt (. - .L276) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L277:
	ldr	x4, [sp, #0]
	.ifgt (. - .L277) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L278:
.L279:
	ldaxr	x21, [x4]
	stlxr	w17, x20, [x4]
	cbnz	w17, .L279
	dmb	ishst
	.ifgt (. - .L278) - 16
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L280:
	cmp	x21, #11
	cset	x22, eq
	.ifgt (. - .L280) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L281:
	lsl	x23, x22, #1
	.ifgt (. - .L281) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L282:
	add	x1, x23, #1
	.ifgt (. - .L282) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L283:
	adrp	x0, :got:camlCas_test.19
	ldr	x0, [x0, #:got_lo12:camlCas_test.19]
	.ifgt (. - .L283) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L284:
	bl	camlCas_test.check_279
.L285:
	.ifgt (. - .L284) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L286:
	ldr	x5, [sp, #0]
	.ifgt (. - .L286) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L287:
	dmb	ishld
	ldar	x0, [x5]
	.ifgt (. - .L287) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L288:
	cmn	x0, #1
	cset	x1, eq
	.ifgt (. - .L288) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L289:
	orr	x2, xzr, #1
	.ifgt (. - .L289) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L290:
	add	x1, x2, x1, lsl #1
	.ifgt (. - .L290) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L291:
	adrp	x0, :got:camlCas_test.20
	ldr	x0, [x0, #:got_lo12:camlCas_test.20]
	.ifgt (. - .L291) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L292:
	bl	camlCas_test.check_279
.L293:
	.ifgt (. - .L292) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L294:
	bl	caml_alloc1
.L295:	add	x5, x27, #8
	.ifgt (. - .L294) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L296:
	str	x5, [sp, #0]
	.ifgt (. - .L296) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L297:
	orr	x6, xzr, #1024
	.ifgt (. - .L297) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L298:
	str	x6, [x5, #-8]
	.ifgt (. - .L298) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L299:
	orr	x7, xzr, #3
	.ifgt (. - .L299) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L300:
	str	x7, [x5, #0]
	.ifgt (. - .L300) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L301:
	orr	x8, xzr, #1
	.ifgt (. - .L301) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L302:
	orr	x9, xzr, #3
	.ifgt (. - .L302) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L303:
.L304:
	ldaxr	x10, [x5]
	cmp	x10, x9
	b.ne	.L305
	stlxr	w17, x8, [x5]
	cbnz	w17, .L304
	b	.L306
.L305:
	clrex
.L306:
	cset	x10, eq
	dmb	ishst
	.ifgt (. - .L303) - 36
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L307:
	lsl	x11, x10, #1
	.ifgt (. - .L307) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L308:
	add	x12, x11, #1
	.ifgt (. - .L308) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L309:
	cmp	x12, #3
	cset	x13, eq
	.ifgt (. - .L309) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L310:
	lsl	x14, x13, #1
	.ifgt (. - .L310) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L311:
	add	x1, x14, #1
	.ifgt (. - .L311) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L312:
	adrp	x0, :got:camlCas_test.21
	ldr	x0, [x0, #:got_lo12:camlCas_test.21]
	.ifgt (. - .L312) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L313:
	bl	camlCas_test.check_279
.L314:
	.ifgt (. - .L313) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L315:
	ldr	x6, [sp, #0]
	.ifgt (. - .L315) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L316:
	dmb	ishld
	ldar	x20, [x6]
	.ifgt (. - .L316) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L317:
	cmp	x20, #1
	cset	x21, eq
	.ifgt (. - .L317) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L318:
	orr	x22, xzr, #1
	.ifgt (. - .L318) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L319:
	add	x1, x22, x21, lsl #1
	.ifgt (. - .L319) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L320:
	adrp	x0, :got:camlCas_test.22
	ldr	x0, [x0, #:got_lo12:camlCas_test.22]
	.ifgt (. - .L320) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L321:
	bl	camlCas_test.check_279
.L322:
	.ifgt (. - .L321) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L323:
	orr	x25, xzr, #1
	.ifgt (. - .L323) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L324:
	orr	x0, xzr, #3
	.ifgt (. - .L324) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L325:
	ldr	x7, [sp, #0]
	.ifgt (. - .L325) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L326:
.L327:
	ldaxr	x1, [x7]
	cmp	x1, x0
	b.ne	.L328
	stlxr	w17, x25, [x7]
	cbnz	w17, .L327
	b	.L329
.L328:
	clrex
.L329:
	cset	x1, eq
	dmb	ishst
	.ifgt (. - .L326) - 36
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L330:
	lsl	x2, x1, #1
	.ifgt (. - .L330) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L331:
	add	x3, x2, #1
	.ifgt (. - .L331) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L332:
	cmp	x3, #1
	cset	x4, eq
	.ifgt (. - .L332) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L333:
	lsl	x5, x4, #1
	.ifgt (. - .L333) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L334:
	add	x1, x5, #1
	.ifgt (. - .L334) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L335:
	adrp	x0, :got:camlCas_test.23
	ldr	x0, [x0, #:got_lo12:camlCas_test.23]
	.ifgt (. - .L335) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L336:
	bl	camlCas_test.check_279
.L337:
	.ifgt (. - .L336) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L338:
	bl	caml_alloc1
.L339:	add	x8, x27, #8
	.ifgt (. - .L338) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L340:
	str	x8, [sp, #0]
	.ifgt (. - .L340) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L341:
	orr	x9, xzr, #1024
	.ifgt (. - .L341) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L342:
	str	x9, [x8, #-8]
	.ifgt (. - .L342) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L343:
	orr	x10, xzr, #3
	.ifgt (. - .L343) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L344:
	str	x10, [x8, #0]
	.ifgt (. - .L344) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L345:
	movz	x11, #5, lsl #0
	.ifgt (. - .L345) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L346:
	orr	x12, xzr, #3
	.ifgt (. - .L346) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L347:
.L348:
	ldaxr	x13, [x8]
	cmp	x13, x12
	b.ne	.L349
	stlxr	w17, x11, [x8]
	cbnz	w17, .L348
	b	.L350
.L349:
	clrex
.L350:
	cset	x13, eq
	dmb	ishst
	.ifgt (. - .L347) - 36
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L351:
	cbz	x13, .L128
	.ifgt (. - .L351) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L352:
	adrp	x0, :got:camlCas_test.24
	ldr	x0, [x0, #:got_lo12:camlCas_test.24]
	.ifgt (. - .L352) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L353:
	b	.L127
	.ifgt (. - .L353) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L354:
.L128:
	.ifgt (. - .L354) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L355:
	adrp	x0, :got:camlCas_test.25
	ldr	x0, [x0, #:got_lo12:camlCas_test.25]
	.ifgt (. - .L355) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L356:
.L127:
	.ifgt (. - .L356) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L357:
	adrp	x1, :got:camlCas_test.24
	ldr	x1, [x1, #:got_lo12:camlCas_test.24]
	.ifgt (. - .L357) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L358:
	mov	x19, sp
	.cfi_remember_state
	.cfi_def_cfa_register 19
	ldr	x16, [x28, 64]
	mov	sp, x16
	bl	caml_string_equal
	mov	sp, x19
	.cfi_restore_state
	.ifgt (. - .L358) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L359:
	mov	x1, x0
	.ifgt (. - .L359) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L360:
	adrp	x0, :got:camlCas_test.26
	ldr	x0, [x0, #:got_lo12:camlCas_test.26]
	.ifgt (. - .L360) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L361:
	bl	camlCas_test.check_279
.L362:
	.ifgt (. - .L361) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L363:
	orr	x22, xzr, #1
	.ifgt (. - .L363) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L364:
	orr	x24, xzr, #3
	.ifgt (. - .L364) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L365:
	cmp	x24, #2001
	b.gt	.L124
	.ifgt (. - .L365) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L366:
.L125:
	.ifgt (. - .L366) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L367:
	movz	x0, #5, lsl #0
	.ifgt (. - .L367) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L368:
	movz	x1, #5, lsl #0
	.ifgt (. - .L368) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L369:
	ldr	x8, [sp, #0]
	.ifgt (. - .L369) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L370:
.L371:
	ldaxr	x2, [x8]
	cmp	x2, x1
	b.ne	.L372
	stlxr	w17, x0, [x8]
	cbnz	w17, .L371
	b	.L373
.L372:
	clrex
.L373:
	cset	x2, eq
	dmb	ishst
	.ifgt (. - .L370) - 36
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L374:
	cbz	x2, .L126
	.ifgt (. - .L374) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L375:
	add	x22, x22, #2
	.ifgt (. - .L375) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L376:
.L126:
	.ifgt (. - .L376) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L377:
	mov	x5, x24
	.ifgt (. - .L377) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L378:
	add	x24, x24, #2
	.ifgt (. - .L378) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L379:
	cmp	x5, #2001
	b.eq	.L124
	.ifgt (. - .L379) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L380:
	ldr	x16, [x28, #0]
	cmp	x27, x16
	b.hi	.L125
	b	.L382
	.ifgt (. - .L380) - 16
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L383:
.L124:
	.ifgt (. - .L383) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L384:
	cmp	x22, #2001
	cset	x9, eq
	.ifgt (. - .L384) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L385:
	lsl	x10, x9, #1
	.ifgt (. - .L385) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L386:
	add	x1, x10, #1
	.ifgt (. - .L386) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L387:
	adrp	x0, :got:camlCas_test.27
	ldr	x0, [x0, #:got_lo12:camlCas_test.27]
	.ifgt (. - .L387) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L388:
	bl	camlCas_test.check_279
.L389:
	.ifgt (. - .L388) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L390:
	adrp	x0, :got:camlCas_test.28
	ldr	x0, [x0, #:got_lo12:camlCas_test.28]
	.ifgt (. - .L390) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L391:
	bl	camlStdlib.print_endline_369
.L392:
	.ifgt (. - .L391) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L393:
	orr	x0, xzr, #1
	.ifgt (. - .L393) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L394:
	.ifgt (. - .L394) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L395:
	add	sp, sp, #16
	.cfi_adjust_cfa_offset	-16
	ldr	x30, [sp, #-8]
	ret
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L395) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.ifgt (. - .L131) - 1404
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L382:	bl	caml_call_gc
.L381:	b	.L125
	.cfi_endproc
	.type	camlCas_test.entry, %function
	.size	camlCas_test.entry, . - camlCas_test.entry
	.data
	.align	3
	.text
	.globl	camlCas_test.code_end
camlCas_test.code_end:
	.data
	.quad	0
	.globl	camlCas_test.data_end
camlCas_test.data_end:
	.quad	0
	.align	3
	.globl	camlCas_test.frametable
camlCas_test.frametable:
	.quad	26
	.type	.L392, %function
	.quad	.L392
	.short	17
	.short	0
	.align	2
	.long	.L396 - . + 0x0
	.align	3
	.type	.L389, %function
	.quad	.L389
	.short	17
	.short	0
	.align	2
	.long	.L397 - . + 0x0
	.align	3
	.type	.L381, %function
	.quad	.L381
	.short	18
	.short	1
	.short	0
	.byte	0
	.align	3
	.type	.L362, %function
	.quad	.L362
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L398 - . + 0x0
	.align	3
	.type	.L339, %function
	.quad	.L339
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	3
	.type	.L337, %function
	.quad	.L337
	.short	17
	.short	0
	.align	2
	.long	.L399 - . + 0x0
	.align	3
	.type	.L322, %function
	.quad	.L322
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L400 - . + 0x0
	.align	3
	.type	.L314, %function
	.quad	.L314
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L401 - . + 0x0
	.align	3
	.type	.L295, %function
	.quad	.L295
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	3
	.type	.L293, %function
	.quad	.L293
	.short	17
	.short	0
	.align	2
	.long	.L402 - . + 0x0
	.align	3
	.type	.L285, %function
	.quad	.L285
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L403 - . + 0x0
	.align	3
	.type	.L275, %function
	.quad	.L275
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L404 - . + 0x0
	.align	3
	.type	.L267, %function
	.quad	.L267
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L405 - . + 0x0
	.align	3
	.type	.L257, %function
	.quad	.L257
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L406 - . + 0x0
	.align	3
	.type	.L249, %function
	.quad	.L249
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L407 - . + 0x0
	.align	3
	.type	.L234, %function
	.quad	.L234
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L408 - . + 0x0
	.align	3
	.type	.L226, %function
	.quad	.L226
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L409 - . + 0x0
	.align	3
	.type	.L211, %function
	.quad	.L211
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L410 - . + 0x0
	.align	3
	.type	.L203, %function
	.quad	.L203
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L411 - . + 0x0
	.align	3
	.type	.L188, %function
	.quad	.L188
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L412 - . + 0x0
	.align	3
	.type	.L180, %function
	.quad	.L180
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L413 - . + 0x0
	.align	3
	.type	.L165, %function
	.quad	.L165
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L414 - . + 0x0
	.align	3
	.type	.L157, %function
	.quad	.L157
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L415 - . + 0x0
	.align	3
	.type	.L138, %function
	.quad	.L138
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	3
	.type	.L121, %function
	.quad	.L121
	.short	17
	.short	0
	.align	2
	.long	.L416 - . + 0x0
	.align	3
	.type	.L116, %function
	.quad	.L116
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L417 - . + 0x0
	.align	3
	.align	2
.L417:
	.long	.L419 - . + 0x0
	.long	0xf84518
	.align	2
.L410:
	.long	.L421 - . + 0x0
	.long	0xa00938
	.align	2
.L403:
	.long	.L421 - . + 0x0
	.long	0xe80940
	.align	2
.L414:
	.long	.L421 - . + 0x0
	.long	0x700940
	.align	2
.L413:
	.long	.L421 - . + 0x0
	.long	0x800978
	.align	2
.L404:
	.long	.L421 - . + 0x0
	.long	0xe00908
	.align	2
.L415:
	.long	.L421 - . + 0x0
	.long	0x680990
	.align	2
.L407:
	.long	.L421 - . + 0x0
	.long	0xc00940
	.align	2
.L411:
	.long	.L421 - . + 0x0
	.long	0x980958
	.align	2
.L402:
	.long	.L421 - . + 0x0
	.long	0xf00918
	.align	2
.L397:
	.long	.L421 - . + 0x0
	.long	0x16008f0
	.align	2
.L396:
	.long	.L421 - . + 0x0
	.long	0x16808c0
	.align	2
.L409:
	.long	.L421 - . + 0x0
	.long	0xa80958
	.align	2
.L408:
	.long	.L421 - . + 0x0
	.long	0xb00938
	.align	2
.L400:
	.long	.L421 - . + 0x0
	.long	0x1100958
	.align	2
.L412:
	.long	.L421 - . + 0x0
	.long	0x880930
	.align	2
.L406:
	.long	.L421 - . + 0x0
	.long	0xc80938
	.align	2
.L416:
	.long	.L422 - . + 0x0
	.long	0x408a00
	.align	2
.L401:
	.long	.L421 - . + 0x0
	.long	0x1080978
	.align	2
.L405:
	.long	.L421 - . + 0x0
	.long	0xd80920
	.align	2
.L399:
	.long	.L421 - . + 0x0
	.long	0x11809a8
	.align	2
.L398:
	.long	.L421 - . + 0x0
	.long	0x1380920
.L420:
	.asciz	"cas_test.ml"
.L418:
	.asciz	"printf.ml"
	.align	2
.L422:
	.long	.L420 - . + 0x0
	.asciz	"Cas_test.check"
	.align	2
.L419:
	.long	.L418 - . + 0x0
	.asciz	"Stdlib__Printf.printf"
	.align	2
.L421:
	.long	.L420 - . + 0x0
	.asciz	"Cas_test"
	.align	3
	.type	camlCas_test.frametable, %object
	.size	camlCas_test.frametable, . - camlCas_test.frametable
	.section .note.GNU-stack,"",%progbits
