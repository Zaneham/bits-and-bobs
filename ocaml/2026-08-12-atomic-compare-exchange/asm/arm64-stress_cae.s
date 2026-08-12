	.file	""
	.data
	.globl	camlStress_cae.data_begin
camlStress_cae.data_begin:
	.text
	.globl	camlStress_cae.code_begin
camlStress_cae.code_begin:
	.data
	.align	3
	.data
	.align	3
	.quad	4087
	.globl	camlStress_cae.58
camlStress_cae.58:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlStress_cae.check_277
	.data
	.align	3
	.quad	4864
	.globl	camlStress_cae
	.globl	camlStress_cae
camlStress_cae:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.data
	.align	3
	.globl	camlStress_cae.gc_roots
	.globl	camlStress_cae.gc_roots
camlStress_cae.gc_roots:
	.quad	camlStress_cae
	.quad	0
	.text
	.align	3
	.globl	camlStress_cae.check_277
	.type	camlStress_cae.check_277, %function
.L102:
	mov	x16, #34
	stp	x16, x30, [sp, #-16]!
	bl	caml_call_realloc_stack
	ldp	x16, x30, [sp], #16
camlStress_cae.check_277:
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
	ldr	x16, [x28, #0]
	cmp	x27, x16
	b.ls	.L108
.L109:
	.ifgt (. - .L106) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L110:
	cmp	x1, #1
	b.eq	.L100
	.ifgt (. - .L110) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L111:
	str	x0, [sp, #0]
	.ifgt (. - .L111) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L112:
	adrp	x1, :got:camlStress_cae.6
	ldr	x1, [x1, #:got_lo12:camlStress_cae.6]
	.ifgt (. - .L112) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L113:
	adrp	x14, :got:camlStdlib
	ldr	x14, [x14, #:got_lo12:camlStdlib]
	.ifgt (. - .L113) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L114:
	ldr	x0, [x14, #304]
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
	ldr	x20, [x1, #0]
	.ifgt (. - .L118) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L119:
	ldr	x0, [sp, #0]
	.ifgt (. - .L119) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L120:
	add	sp, sp, #16
	.cfi_adjust_cfa_offset	-16
	ldr	x30, [sp, #-8]
	br	x20
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L120) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L121:
.L100:
	.ifgt (. - .L121) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L122:
	adrp	x2, :got:camlStress_cae
	ldr	x2, [x2, #:got_lo12:camlStress_cae]
	.ifgt (. - .L122) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L123:
	ldr	x3, [x2, #16]
	.ifgt (. - .L123) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L124:
	ldr	x4, [x3, #0]
	.ifgt (. - .L124) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L125:
	add	x5, x4, #2
	.ifgt (. - .L125) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L126:
	stlr	x5, [x3]
	.ifgt (. - .L126) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L127:
	str	x0, [sp, #0]
	.ifgt (. - .L127) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L128:
	adrp	x1, :got:camlStress_cae.10
	ldr	x1, [x1, #:got_lo12:camlStress_cae.10]
	.ifgt (. - .L128) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L129:
	adrp	x8, :got:camlStdlib
	ldr	x8, [x8, #:got_lo12:camlStdlib]
	.ifgt (. - .L129) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L130:
	ldr	x0, [x8, #304]
	.ifgt (. - .L130) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L131:
	bl	camlStdlib__Printf.fprintf_433
.L132:
	.ifgt (. - .L131) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L133:
	mov	x1, x0
	.ifgt (. - .L133) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L134:
	ldr	x11, [x1, #0]
	.ifgt (. - .L134) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L135:
	ldr	x0, [sp, #0]
	.ifgt (. - .L135) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L136:
	add	sp, sp, #16
	.cfi_adjust_cfa_offset	-16
	ldr	x30, [sp, #-8]
	br	x11
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L136) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.ifgt (. - .L103) - 156
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L108:	bl	caml_call_gc
.L107:	b	.L109
	.cfi_endproc
	.type	camlStress_cae.check_277, %function
	.size	camlStress_cae.check_277, . - camlStress_cae.check_277
	.text
	.align	3
	.globl	camlStress_cae.bump_387
	.type	camlStress_cae.bump_387, %function
.L140:
	mov	x16, #36
	stp	x16, x30, [sp, #-16]!
	bl	caml_call_realloc_stack
	ldp	x16, x30, [sp], #16
camlStress_cae.bump_387:
	.cfi_startproc
	ldr	x16, [x28, #40]
	add	x16, x16, #344
	cmp	sp, x16
	bcc	.L140
.L141:
.L142:
	str	x30, [sp, #-8]
	.cfi_offset 30, -8
	sub	sp, sp, #32
	.cfi_adjust_cfa_offset	32
	.ifgt (. - .L142) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L143:
.L139:
	.ifgt (. - .L143) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L144:
	orr	x2, xzr, #3
	.ifgt (. - .L144) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L145:
	movz	x5, #3393, lsl #0
	movk	x5, #3, lsl #16
	.ifgt (. - .L145) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L146:
	cmp	x2, x5
	b.gt	.L137
	.ifgt (. - .L146) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L147:
	str	x2, [sp, #8]
	.ifgt (. - .L147) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L148:
	str	x1, [sp, #0]
	.ifgt (. - .L148) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L149:
.L138:
	.ifgt (. - .L149) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L150:
	ldr	x16, [x28, #0]
	sub	x27, x27, #32
	cmp	x27, x16
	b.lo	.L153
.L152:	add	x1, x27, #8
	.ifgt (. - .L150) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L154:
	movz	x7, #3319, lsl #0
	.ifgt (. - .L154) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L155:
	str	x7, [x1, #-8]
	.ifgt (. - .L155) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L156:
	adrp	x8, :got:camlStress_cae.go_390
	ldr	x8, [x8, #:got_lo12:camlStress_cae.go_390]
	.ifgt (. - .L156) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L157:
	str	x8, [x1, #0]
	.ifgt (. - .L157) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L158:
	movz	x9, #5, lsl #0
	movk	x9, #256, lsl #48
	.ifgt (. - .L158) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L159:
	str	x9, [x1, #8]
	.ifgt (. - .L159) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L160:
	ldr	x20, [sp, #0]
	.ifgt (. - .L160) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L161:
	ldr	x10, [x20, #16]
	.ifgt (. - .L161) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L162:
	str	x10, [x1, #16]
	.ifgt (. - .L162) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L163:
	orr	x0, xzr, #1
	.ifgt (. - .L163) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L164:
	bl	camlStress_cae.go_390
.L165:
	.ifgt (. - .L164) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L166:
	ldr	x13, [sp, #8]
	.ifgt (. - .L166) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L167:
	mov	x12, x13
	.ifgt (. - .L167) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L168:
	add	x13, x13, #2
	.ifgt (. - .L168) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L169:
	str	x13, [sp, #8]
	.ifgt (. - .L169) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L170:
	movz	x15, #3393, lsl #0
	movk	x15, #3, lsl #16
	.ifgt (. - .L170) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L171:
	cmp	x12, x15
	b.ne	.L138
	.ifgt (. - .L171) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L172:
.L137:
	.ifgt (. - .L172) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L173:
	orr	x0, xzr, #1
	.ifgt (. - .L173) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L174:
	.ifgt (. - .L174) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L175:
	add	sp, sp, #32
	.cfi_adjust_cfa_offset	-32
	ldr	x30, [sp, #-8]
	ret
	.cfi_adjust_cfa_offset	32
	.ifgt (. - .L175) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.ifgt (. - .L141) - 156
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L153:	bl	caml_call_gc
.L151:	b	.L152
	.cfi_endproc
	.type	camlStress_cae.bump_387, %function
	.size	camlStress_cae.bump_387, . - camlStress_cae.bump_387
	.text
	.align	3
	.globl	camlStress_cae.go_390
	.type	camlStress_cae.go_390, %function
camlStress_cae.go_390:
	.cfi_startproc
.L178:
.L179:
	str	x30, [sp, #-8]
	.cfi_offset 30, -8
	sub	sp, sp, #16
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L179) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L180:
.L177:
	.ifgt (. - .L180) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L181:
	ldr	x16, [x28, #0]
	cmp	x27, x16
	b.ls	.L183
.L184:
	.ifgt (. - .L181) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L185:
	ldr	x2, [x1, #16]
	.ifgt (. - .L185) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L186:
	dmb	ishld
	ldar	x3, [x2]
	.ifgt (. - .L186) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L187:
	add	x4, x3, #2
	.ifgt (. - .L187) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L188:
.L189:
	ldaxr	x6, [x2]
	cmp	x6, x3
	b.ne	.L190
	stlxr	w17, x4, [x2]
	cbnz	w17, .L189
	b	.L191
.L190:
	clrex
.L191:
	dmb	ishst
	.ifgt (. - .L188) - 32
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L192:
	cmp	x6, x3
	b.ne	.L176
	.ifgt (. - .L192) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L193:
	orr	x0, xzr, #1
	.ifgt (. - .L193) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L194:
	.ifgt (. - .L194) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L195:
	add	sp, sp, #16
	.cfi_adjust_cfa_offset	-16
	ldr	x30, [sp, #-8]
	ret
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L195) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L196:
.L176:
	.ifgt (. - .L196) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L197:
	orr	x0, xzr, #1
	.ifgt (. - .L197) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L198:
	b	.L177
	.ifgt (. - .L198) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.ifgt (. - .L178) - 100
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L183:	bl	caml_call_gc
.L182:	b	.L184
	.cfi_endproc
	.type	camlStress_cae.go_390, %function
	.size	camlStress_cae.go_390, . - camlStress_cae.go_390
	.text
	.align	3
	.globl	camlStress_cae.fun_604
	.type	camlStress_cae.fun_604, %function
camlStress_cae.fun_604:
	.cfi_startproc
.L200:
.L201:
.L199:
	.ifgt (. - .L201) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L202:
	ldr	x0, [x1, #16]
	.ifgt (. - .L202) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L203:
	adrp	x3, :got:camlStdlib__Domain
	ldr	x3, [x3, #:got_lo12:camlStdlib__Domain]
	.ifgt (. - .L203) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L204:
	ldr	x1, [x3, #0]
	.ifgt (. - .L204) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L205:
	b	camlStdlib__Domain.spawn_790
	.ifgt (. - .L205) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.ifgt (. - .L200) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.cfi_endproc
	.type	camlStress_cae.fun_604, %function
	.size	camlStress_cae.fun_604, . - camlStress_cae.fun_604
	.text
	.align	3
	.globl	camlStress_cae.collect_556
	.type	camlStress_cae.collect_556, %function
camlStress_cae.collect_556:
	.cfi_startproc
.L209:
.L210:
	str	x30, [sp, #-8]
	.cfi_offset 30, -8
	sub	sp, sp, #16
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L210) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L211:
.L208:
	.ifgt (. - .L211) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L212:
	mov	x2, x0
	.ifgt (. - .L212) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L213:
	orr	x0, xzr, #1
	.ifgt (. - .L213) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L214:
	orr	x4, xzr, #3
	.ifgt (. - .L214) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L215:
	movz	x7, #3393, lsl #0
	movk	x7, #3, lsl #16
	.ifgt (. - .L215) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L216:
	cmp	x4, x7
	b.gt	.L206
	.ifgt (. - .L216) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L217:
.L207:
	.ifgt (. - .L217) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L218:
	movz	x10, #34464, lsl #0
	movk	x10, #1, lsl #16
	.ifgt (. - .L218) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L219:
	madd	x11, x2, x10, x4
	.ifgt (. - .L219) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L220:
	sub	x12, x11, #98304
	sub	x12, x12, #1696
	.ifgt (. - .L220) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L221:
	ldr	x13, [x1, #16]
	.ifgt (. - .L221) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L222:
.L223:
	ldaxr	x14, [x13]
	stlxr	w17, x12, [x13]
	cbnz	w17, .L223
	dmb	ishst
	.ifgt (. - .L222) - 16
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L224:
	ldr	x16, [x28, #0]
	sub	x27, x27, #24
	cmp	x27, x16
	b.lo	.L227
.L226:	add	x15, x27, #8
	.ifgt (. - .L224) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L228:
	orr	x19, xzr, #2048
	.ifgt (. - .L228) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L229:
	str	x19, [x15, #-8]
	.ifgt (. - .L229) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L230:
	str	x14, [x15, #0]
	.ifgt (. - .L230) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L231:
	str	x0, [x15, #8]
	.ifgt (. - .L231) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L232:
	mov	x0, x15
	.ifgt (. - .L232) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L233:
	mov	x20, x4
	.ifgt (. - .L233) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L234:
	add	x4, x4, #2
	.ifgt (. - .L234) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L235:
	movz	x23, #3393, lsl #0
	movk	x23, #3, lsl #16
	.ifgt (. - .L235) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L236:
	cmp	x20, x23
	b.ne	.L207
	.ifgt (. - .L236) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L237:
.L206:
	.ifgt (. - .L237) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L238:
	.ifgt (. - .L238) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L239:
	add	sp, sp, #16
	.cfi_adjust_cfa_offset	-16
	ldr	x30, [sp, #-8]
	ret
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L239) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.ifgt (. - .L209) - 152
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L227:	bl	caml_call_gc
.L225:	b	.L226
	.cfi_endproc
	.type	camlStress_cae.collect_556, %function
	.size	camlStress_cae.collect_556, . - camlStress_cae.collect_556
	.text
	.align	3
	.globl	camlStress_cae.fun_625
	.type	camlStress_cae.fun_625, %function
camlStress_cae.fun_625:
	.cfi_startproc
.L241:
.L242:
.L240:
	.ifgt (. - .L242) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L243:
	ldr	x2, [x1, #24]
	.ifgt (. - .L243) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L244:
	add	x0, x2, #2
	.ifgt (. - .L244) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L245:
	ldr	x1, [x1, #16]
	.ifgt (. - .L245) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L246:
	b	camlStress_cae.collect_556
	.ifgt (. - .L246) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.ifgt (. - .L241) - 16
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.cfi_endproc
	.type	camlStress_cae.fun_625, %function
	.size	camlStress_cae.fun_625, . - camlStress_cae.fun_625
	.text
	.align	3
	.globl	camlStress_cae.fun_613
	.type	camlStress_cae.fun_613, %function
camlStress_cae.fun_613:
	.cfi_startproc
.L248:
.L249:
	str	x30, [sp, #-8]
	.cfi_offset 30, -8
	sub	sp, sp, #16
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L249) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L250:
.L247:
	.ifgt (. - .L250) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L251:
	ldr	x16, [x28, #0]
	sub	x27, x27, #40
	cmp	x27, x16
	b.lo	.L254
.L253:	add	x2, x27, #8
	.ifgt (. - .L251) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L255:
	movz	x3, #4343, lsl #0
	.ifgt (. - .L255) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L256:
	str	x3, [x2, #-8]
	.ifgt (. - .L256) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L257:
	adrp	x4, :got:camlStress_cae.fun_625
	ldr	x4, [x4, #:got_lo12:camlStress_cae.fun_625]
	.ifgt (. - .L257) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L258:
	str	x4, [x2, #0]
	.ifgt (. - .L258) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L259:
	movz	x5, #5, lsl #0
	movk	x5, #256, lsl #48
	.ifgt (. - .L259) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L260:
	str	x5, [x2, #8]
	.ifgt (. - .L260) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L261:
	ldr	x6, [x1, #16]
	.ifgt (. - .L261) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L262:
	str	x6, [x2, #16]
	.ifgt (. - .L262) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L263:
	str	x0, [x2, #24]
	.ifgt (. - .L263) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L264:
	adrp	x7, :got:camlStdlib__Domain
	ldr	x7, [x7, #:got_lo12:camlStdlib__Domain]
	.ifgt (. - .L264) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L265:
	ldr	x1, [x7, #0]
	.ifgt (. - .L265) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L266:
	mov	x0, x2
	.ifgt (. - .L266) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L267:
	add	sp, sp, #16
	.cfi_adjust_cfa_offset	-16
	ldr	x30, [sp, #-8]
	b	camlStdlib__Domain.spawn_790
	.cfi_adjust_cfa_offset	16
	.ifgt (. - .L267) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.ifgt (. - .L248) - 100
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L254:	bl	caml_call_gc
.L252:	b	.L253
	.cfi_endproc
	.type	camlStress_cae.fun_613, %function
	.size	camlStress_cae.fun_613, . - camlStress_cae.fun_613
	.text
	.align	3
	.globl	camlStress_cae.fun_634
	.type	camlStress_cae.fun_634, %function
camlStress_cae.fun_634:
	.cfi_startproc
.L269:
.L270:
.L268:
	.ifgt (. - .L270) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L271:
	ldr	x2, [x1, #16]
	.ifgt (. - .L271) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L272:
	ldr	x3, [x2, #-8]
	.ifgt (. - .L272) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L273:
	cmp	x0, x3, lsr #9
	b.cs	.L274
	.ifgt (. - .L273) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L276:
	add	x4, x2, x0, lsl #2
	.ifgt (. - .L276) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L277:
	ldr	x5, [x4, #-4]
	.ifgt (. - .L277) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L278:
	add	x6, x5, #2
	.ifgt (. - .L278) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L279:
	sub	x16, x4, #4
	stlr	x6, [x16]
	.ifgt (. - .L279) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L280:
	orr	x0, xzr, #1
	.ifgt (. - .L280) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L281:
	ret
	.ifgt (. - .L281) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.ifgt (. - .L269) - 44
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L274:	bl	caml_ml_array_bound_error
.L275:
	.cfi_endproc
	.type	camlStress_cae.fun_634, %function
	.size	camlStress_cae.fun_634, . - camlStress_cae.fun_634
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.9
camlStress_cae.9:
	.ascii  "  FAIL: %s\12"
	.space	4
	.byte	4
	.data
	.align	3
	.quad	2827
	.globl	camlStress_cae.8
camlStress_cae.8:
	.quad	camlStress_cae.7
	.quad	camlStress_cae.3
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.7
camlStress_cae.7:
	.ascii  "  FAIL: "
	.space	7
	.byte	7
	.data
	.align	3
	.quad	2816
	.globl	camlStress_cae.6
camlStress_cae.6:
	.quad	camlStress_cae.4
	.quad	camlStress_cae.5
	.data
	.align	3
	.quad	2816
	.globl	camlStress_cae.57
camlStress_cae.57:
	.quad	camlStress_cae.55
	.quad	camlStress_cae.56
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.56
camlStress_cae.56:
	.ascii  "%d FAILURES\12"
	.space	3
	.byte	3
	.data
	.align	3
	.quad	4868
	.globl	camlStress_cae.55
camlStress_cae.55:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.54
	.data
	.align	3
	.quad	2827
	.globl	camlStress_cae.54
camlStress_cae.54:
	.quad	camlStress_cae.53
	.quad	1
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.53
camlStress_cae.53:
	.ascii  " FAILURES\12"
	.space	5
	.byte	5
	.data
	.align	3
	.quad	2044
	.globl	camlStress_cae.52
camlStress_cae.52:
	.ascii  "ALL OK"
	.space	1
	.byte	1
	.data
	.align	3
	.quad	6140
	.globl	camlStress_cae.51
camlStress_cae.51:
	.ascii  "every value observed exactly once"
	.space	6
	.byte	6
	.data
	.align	3
	.quad	2816
	.globl	camlStress_cae.50
camlStress_cae.50:
	.quad	camlStress_cae.49
	.quad	camlStress_cae.48
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.5
camlStress_cae.5:
	.ascii  "  PASS: %s\12"
	.space	4
	.byte	4
	.data
	.align	3
	.quad	2827
	.globl	camlStress_cae.49
camlStress_cae.49:
	.quad	camlStress_cae.48
	.quad	1
	.data
	.align	3
	.quad	4092
	.globl	camlStress_cae.48
camlStress_cae.48:
	.ascii  "Contended exchange\12"
	.space	4
	.byte	4
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.47
camlStress_cae.47:
	.ascii  "no lost updates"
	.byte	0
	.data
	.align	3
	.quad	2816
	.globl	camlStress_cae.46
camlStress_cae.46:
	.quad	camlStress_cae.44
	.quad	camlStress_cae.45
	.data
	.align	3
	.quad	6140
	.globl	camlStress_cae.45
camlStress_cae.45:
	.ascii  "Contended increment (%d domains x %d)\12"
	.space	1
	.byte	1
	.data
	.align	3
	.quad	2827
	.globl	camlStress_cae.44
camlStress_cae.44:
	.quad	camlStress_cae.37
	.quad	camlStress_cae.43
	.data
	.align	3
	.quad	4868
	.globl	camlStress_cae.43
camlStress_cae.43:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.42
	.data
	.align	3
	.quad	2827
	.globl	camlStress_cae.42
camlStress_cae.42:
	.quad	camlStress_cae.38
	.quad	camlStress_cae.41
	.data
	.align	3
	.quad	4868
	.globl	camlStress_cae.41
camlStress_cae.41:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlStress_cae.40
	.data
	.align	3
	.quad	2827
	.globl	camlStress_cae.40
camlStress_cae.40:
	.quad	camlStress_cae.39
	.quad	1
	.data
	.align	3
	.quad	2827
	.globl	camlStress_cae.4
camlStress_cae.4:
	.quad	camlStress_cae.1
	.quad	camlStress_cae.3
	.data
	.align	3
	.quad	2044
	.globl	camlStress_cae.39
camlStress_cae.39:
	.ascii  ")\12"
	.space	5
	.byte	5
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.38
camlStress_cae.38:
	.ascii  " domains x "
	.space	4
	.byte	4
	.data
	.align	3
	.quad	4092
	.globl	camlStress_cae.37
camlStress_cae.37:
	.ascii  "Contended increment ("
	.space	2
	.byte	2
	.data
	.align	3
	.quad	4092
	.globl	camlStress_cae.36
camlStress_cae.36:
	.ascii  "boxed survives gc"
	.space	6
	.byte	6
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.35
camlStress_cae.35:
	.ascii  "boxed value"
	.space	4
	.byte	4
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.34
camlStress_cae.34:
	.ascii  "boxed cas hit"
	.space	2
	.byte	2
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.33
camlStress_cae.33:
	.ascii  "boxed cas miss"
	.space	1
	.byte	1
	.data
	.align	3
	.quad	2044
	.globl	camlStress_cae.32
camlStress_cae.32:
	.ascii  "b"
	.space	6
	.byte	6
	.data
	.align	3
	.quad	2044
	.globl	camlStress_cae.31
camlStress_cae.31:
	.ascii  "a"
	.space	6
	.byte	6
	.data
	.align	3
	.quad	2816
	.globl	camlStress_cae.30
camlStress_cae.30:
	.quad	camlStress_cae.29
	.quad	camlStress_cae.28
	.data
	.align	3
	.quad	2818
	.globl	camlStress_cae.3
camlStress_cae.3:
	.quad	1
	.quad	camlStress_cae.2
	.data
	.align	3
	.quad	2827
	.globl	camlStress_cae.29
camlStress_cae.29:
	.quad	camlStress_cae.28
	.quad	1
	.data
	.align	3
	.quad	5116
	.globl	camlStress_cae.28
camlStress_cae.28:
	.ascii  "Boxed (barrier retained)\12"
	.space	6
	.byte	6
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.27
camlStress_cae.27:
	.ascii  "max_int stored"
	.space	1
	.byte	1
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.26
camlStress_cae.26:
	.ascii  "max_int cas"
	.space	4
	.byte	4
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.25
camlStress_cae.25:
	.ascii  "negative stored"
	.byte	0
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.24
camlStress_cae.24:
	.ascii  "negative cas"
	.space	3
	.byte	3
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.23
camlStress_cae.23:
	.ascii  "bool value"
	.space	5
	.byte	5
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.22
camlStress_cae.22:
	.ascii  "bool cas miss"
	.space	2
	.byte	2
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.21
camlStress_cae.21:
	.ascii  "bool cas hit"
	.space	3
	.byte	3
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.20
camlStress_cae.20:
	.ascii  "exchange stored"
	.byte	0
	.data
	.align	3
	.quad	2828
	.globl	camlStress_cae.2
camlStress_cae.2:
	.quad	21
	.quad	1
	.data
	.align	3
	.quad	4092
	.globl	camlStress_cae.19
camlStress_cae.19:
	.ascii  "exchange returns old"
	.space	3
	.byte	3
	.data
	.align	3
	.quad	4092
	.globl	camlStress_cae.18
camlStress_cae.18:
	.ascii  "cas to same value"
	.space	6
	.byte	6
	.data
	.align	3
	.quad	5116
	.globl	camlStress_cae.17
camlStress_cae.17:
	.ascii  "cas miss left value alone"
	.space	6
	.byte	6
	.data
	.align	3
	.quad	4092
	.globl	camlStress_cae.16
camlStress_cae.16:
	.ascii  "cas miss returns false"
	.space	1
	.byte	1
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.15
camlStress_cae.15:
	.ascii  "cas hit stored"
	.space	1
	.byte	1
	.data
	.align	3
	.quad	4092
	.globl	camlStress_cae.14
camlStress_cae.14:
	.ascii  "cas hit returns true"
	.space	3
	.byte	3
	.data
	.align	3
	.quad	2816
	.globl	camlStress_cae.13
camlStress_cae.13:
	.quad	camlStress_cae.12
	.quad	camlStress_cae.11
	.data
	.align	3
	.quad	2827
	.globl	camlStress_cae.12
camlStress_cae.12:
	.quad	camlStress_cae.11
	.quad	1
	.data
	.align	3
	.quad	5116
	.globl	camlStress_cae.11
camlStress_cae.11:
	.ascii  "Single-threaded semantics\12"
	.space	5
	.byte	5
	.data
	.align	3
	.quad	2816
	.globl	camlStress_cae.10
camlStress_cae.10:
	.quad	camlStress_cae.8
	.quad	camlStress_cae.9
	.data
	.align	3
	.quad	3068
	.globl	camlStress_cae.1
camlStress_cae.1:
	.ascii  "  PASS: "
	.space	7
	.byte	7
	.text
	.align	3
	.globl	camlStress_cae.entry
	.type	camlStress_cae.entry, %function
.L288:
	mov	x16, #38
	stp	x16, x30, [sp, #-16]!
	bl	caml_call_realloc_stack
	ldp	x16, x30, [sp], #16
camlStress_cae.entry:
	.cfi_startproc
	ldr	x16, [x28, #40]
	add	x16, x16, #360
	cmp	sp, x16
	bcc	.L288
.L289:
.L290:
	str	x30, [sp, #-8]
	.cfi_offset 30, -8
	sub	sp, sp, #48
	.cfi_adjust_cfa_offset	48
	.ifgt (. - .L290) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L291:
.L287:
	.ifgt (. - .L291) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L292:
	movz	x1, #9, lsl #0
	.ifgt (. - .L292) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L293:
	adrp	x0, :got:camlStress_cae
	ldr	x0, [x0, #:got_lo12:camlStress_cae]
	.ifgt (. - .L293) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L294:
	mov	x19, sp
	.cfi_remember_state
	.cfi_def_cfa_register 19
	ldr	x16, [x28, 64]
	mov	sp, x16
	bl	caml_initialize
	mov	sp, x19
	.cfi_restore_state
	.ifgt (. - .L294) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L295:
	movz	x1, #3393, lsl #0
	movk	x1, #3, lsl #16
	.ifgt (. - .L295) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L296:
	adrp	x4, :got:camlStress_cae
	ldr	x4, [x4, #:got_lo12:camlStress_cae]
	.ifgt (. - .L296) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L297:
	add	x0, x4, #8
	.ifgt (. - .L297) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L298:
	mov	x19, sp
	.cfi_remember_state
	.cfi_def_cfa_register 19
	ldr	x16, [x28, 64]
	mov	sp, x16
	bl	caml_initialize
	mov	sp, x19
	.cfi_restore_state
	.ifgt (. - .L298) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L299:
	bl	caml_alloc1
.L300:	add	x1, x27, #8
	.ifgt (. - .L299) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L301:
	orr	x7, xzr, #1024
	.ifgt (. - .L301) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L302:
	str	x7, [x1, #-8]
	.ifgt (. - .L302) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L303:
	orr	x8, xzr, #1
	.ifgt (. - .L303) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L304:
	str	x8, [x1, #0]
	.ifgt (. - .L304) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L305:
	adrp	x9, :got:camlStress_cae
	ldr	x9, [x9, #:got_lo12:camlStress_cae]
	.ifgt (. - .L305) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L306:
	add	x0, x9, #16
	.ifgt (. - .L306) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L307:
	mov	x19, sp
	.cfi_remember_state
	.cfi_def_cfa_register 19
	ldr	x16, [x28, 64]
	mov	sp, x16
	bl	caml_initialize
	mov	sp, x19
	.cfi_restore_state
	.ifgt (. - .L307) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L308:
	adrp	x1, :got:camlStress_cae.58
	ldr	x1, [x1, #:got_lo12:camlStress_cae.58]
	.ifgt (. - .L308) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L309:
	adrp	x12, :got:camlStress_cae
	ldr	x12, [x12, #:got_lo12:camlStress_cae]
	.ifgt (. - .L309) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L310:
	add	x0, x12, #24
	.ifgt (. - .L310) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L311:
	mov	x19, sp
	.cfi_remember_state
	.cfi_def_cfa_register 19
	ldr	x16, [x28, 64]
	mov	sp, x16
	bl	caml_initialize
	mov	sp, x19
	.cfi_restore_state
	.ifgt (. - .L311) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L312:
	adrp	x1, :got:camlStress_cae.13
	ldr	x1, [x1, #:got_lo12:camlStress_cae.13]
	.ifgt (. - .L312) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L313:
	adrp	x15, :got:camlStdlib
	ldr	x15, [x15, #:got_lo12:camlStdlib]
	.ifgt (. - .L313) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L314:
	ldr	x0, [x15, #304]
	.ifgt (. - .L314) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L315:
	bl	camlStdlib__Printf.fprintf_433
.L316:
	.ifgt (. - .L315) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L317:
	bl	caml_alloc1
.L318:	add	x20, x27, #8
	.ifgt (. - .L317) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L319:
	str	x20, [sp, #0]
	.ifgt (. - .L319) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L320:
	orr	x21, xzr, #1024
	.ifgt (. - .L320) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L321:
	str	x21, [x20, #-8]
	.ifgt (. - .L321) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L322:
	orr	x22, xzr, #1
	.ifgt (. - .L322) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L323:
	str	x22, [x20, #0]
	.ifgt (. - .L323) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L324:
	orr	x23, xzr, #3
	.ifgt (. - .L324) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L325:
	orr	x24, xzr, #1
	.ifgt (. - .L325) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L326:
.L327:
	ldaxr	x25, [x20]
	cmp	x25, x24
	b.ne	.L328
	stlxr	w17, x23, [x20]
	cbnz	w17, .L327
	b	.L329
.L328:
	clrex
.L329:
	dmb	ishst
	.ifgt (. - .L326) - 32
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L330:
	cmp	x25, #1
	cset	x0, eq
	.ifgt (. - .L330) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L331:
	lsl	x1, x0, #1
	.ifgt (. - .L331) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L332:
	add	x1, x1, #1
	.ifgt (. - .L332) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L333:
	adrp	x0, :got:camlStress_cae.14
	ldr	x0, [x0, #:got_lo12:camlStress_cae.14]
	.ifgt (. - .L333) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L334:
	bl	camlStress_cae.check_277
.L335:
	.ifgt (. - .L334) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L336:
	ldr	x20, [sp, #0]
	.ifgt (. - .L336) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L337:
	dmb	ishld
	ldar	x4, [x20]
	.ifgt (. - .L337) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L338:
	cmp	x4, #3
	cset	x5, eq
	.ifgt (. - .L338) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L339:
	orr	x6, xzr, #1
	.ifgt (. - .L339) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L340:
	add	x1, x6, x5, lsl #1
	.ifgt (. - .L340) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L341:
	adrp	x0, :got:camlStress_cae.15
	ldr	x0, [x0, #:got_lo12:camlStress_cae.15]
	.ifgt (. - .L341) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L342:
	bl	camlStress_cae.check_277
.L343:
	.ifgt (. - .L342) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L344:
	movz	x9, #5, lsl #0
	.ifgt (. - .L344) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L345:
	orr	x10, xzr, #1
	.ifgt (. - .L345) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L346:
	ldr	x21, [sp, #0]
	.ifgt (. - .L346) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L347:
.L348:
	ldaxr	x11, [x21]
	cmp	x11, x10
	b.ne	.L349
	stlxr	w17, x9, [x21]
	cbnz	w17, .L348
	b	.L350
.L349:
	clrex
.L350:
	dmb	ishst
	.ifgt (. - .L347) - 32
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L351:
	cmp	x11, #1
	cset	x12, ne
	.ifgt (. - .L351) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L352:
	lsl	x13, x12, #1
	.ifgt (. - .L352) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L353:
	add	x1, x13, #1
	.ifgt (. - .L353) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L354:
	adrp	x0, :got:camlStress_cae.16
	ldr	x0, [x0, #:got_lo12:camlStress_cae.16]
	.ifgt (. - .L354) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L355:
	bl	camlStress_cae.check_277
.L356:
	.ifgt (. - .L355) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L357:
	ldr	x22, [sp, #0]
	.ifgt (. - .L357) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L358:
	dmb	ishld
	ldar	x19, [x22]
	.ifgt (. - .L358) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L359:
	cmp	x19, #3
	cset	x20, eq
	.ifgt (. - .L359) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L360:
	orr	x21, xzr, #1
	.ifgt (. - .L360) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L361:
	add	x1, x21, x20, lsl #1
	.ifgt (. - .L361) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L362:
	adrp	x0, :got:camlStress_cae.17
	ldr	x0, [x0, #:got_lo12:camlStress_cae.17]
	.ifgt (. - .L362) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L363:
	bl	camlStress_cae.check_277
.L364:
	.ifgt (. - .L363) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L365:
	orr	x24, xzr, #3
	.ifgt (. - .L365) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L366:
	orr	x25, xzr, #3
	.ifgt (. - .L366) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L367:
	ldr	x23, [sp, #0]
	.ifgt (. - .L367) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L368:
.L369:
	ldaxr	x0, [x23]
	cmp	x0, x25
	b.ne	.L370
	stlxr	w17, x24, [x23]
	cbnz	w17, .L369
	b	.L371
.L370:
	clrex
.L371:
	dmb	ishst
	.ifgt (. - .L368) - 32
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L372:
	cmp	x0, #3
	cset	x1, eq
	.ifgt (. - .L372) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L373:
	lsl	x2, x1, #1
	.ifgt (. - .L373) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L374:
	add	x1, x2, #1
	.ifgt (. - .L374) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L375:
	adrp	x0, :got:camlStress_cae.18
	ldr	x0, [x0, #:got_lo12:camlStress_cae.18]
	.ifgt (. - .L375) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L376:
	bl	camlStress_cae.check_277
.L377:
	.ifgt (. - .L376) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L378:
	movz	x5, #19, lsl #0
	.ifgt (. - .L378) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L379:
	ldr	x24, [sp, #0]
	.ifgt (. - .L379) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L380:
.L381:
	ldaxr	x6, [x24]
	stlxr	w17, x5, [x24]
	cbnz	w17, .L381
	dmb	ishst
	.ifgt (. - .L380) - 16
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L382:
	cmp	x6, #3
	cset	x7, eq
	.ifgt (. - .L382) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L383:
	lsl	x8, x7, #1
	.ifgt (. - .L383) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L384:
	add	x1, x8, #1
	.ifgt (. - .L384) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L385:
	adrp	x0, :got:camlStress_cae.19
	ldr	x0, [x0, #:got_lo12:camlStress_cae.19]
	.ifgt (. - .L385) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L386:
	bl	camlStress_cae.check_277
.L387:
	.ifgt (. - .L386) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L388:
	ldr	x25, [sp, #0]
	.ifgt (. - .L388) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L389:
	dmb	ishld
	ldar	x11, [x25]
	.ifgt (. - .L389) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L390:
	cmp	x11, #19
	cset	x12, eq
	.ifgt (. - .L390) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L391:
	orr	x13, xzr, #1
	.ifgt (. - .L391) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L392:
	add	x1, x13, x12, lsl #1
	.ifgt (. - .L392) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L393:
	adrp	x0, :got:camlStress_cae.20
	ldr	x0, [x0, #:got_lo12:camlStress_cae.20]
	.ifgt (. - .L393) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L394:
	bl	camlStress_cae.check_277
.L395:
	.ifgt (. - .L394) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L396:
	bl	caml_alloc1
.L397:	add	x19, x27, #8
	.ifgt (. - .L396) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L398:
	str	x19, [sp, #0]
	.ifgt (. - .L398) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L399:
	orr	x20, xzr, #1024
	.ifgt (. - .L399) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L400:
	str	x20, [x19, #-8]
	.ifgt (. - .L400) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L401:
	orr	x21, xzr, #1
	.ifgt (. - .L401) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L402:
	str	x21, [x19, #0]
	.ifgt (. - .L402) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L403:
	orr	x22, xzr, #3
	.ifgt (. - .L403) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L404:
	orr	x23, xzr, #1
	.ifgt (. - .L404) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L405:
.L406:
	ldaxr	x24, [x19]
	cmp	x24, x23
	b.ne	.L407
	stlxr	w17, x22, [x19]
	cbnz	w17, .L406
	b	.L408
.L407:
	clrex
.L408:
	dmb	ishst
	.ifgt (. - .L405) - 32
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L409:
	cmp	x24, #1
	cset	x25, eq
	.ifgt (. - .L409) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L410:
	lsl	x0, x25, #1
	.ifgt (. - .L410) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L411:
	add	x1, x0, #1
	.ifgt (. - .L411) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L412:
	adrp	x0, :got:camlStress_cae.21
	ldr	x0, [x0, #:got_lo12:camlStress_cae.21]
	.ifgt (. - .L412) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L413:
	bl	camlStress_cae.check_277
.L414:
	.ifgt (. - .L413) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L415:
	orr	x3, xzr, #3
	.ifgt (. - .L415) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L416:
	orr	x4, xzr, #1
	.ifgt (. - .L416) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L417:
	ldr	x0, [sp, #0]
	.ifgt (. - .L417) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L418:
.L419:
	ldaxr	x5, [x0]
	cmp	x5, x4
	b.ne	.L420
	stlxr	w17, x3, [x0]
	cbnz	w17, .L419
	b	.L421
.L420:
	clrex
.L421:
	dmb	ishst
	.ifgt (. - .L418) - 32
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L422:
	cmp	x5, #1
	cset	x6, ne
	.ifgt (. - .L422) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L423:
	lsl	x7, x6, #1
	.ifgt (. - .L423) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L424:
	add	x1, x7, #1
	.ifgt (. - .L424) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L425:
	adrp	x0, :got:camlStress_cae.22
	ldr	x0, [x0, #:got_lo12:camlStress_cae.22]
	.ifgt (. - .L425) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L426:
	bl	camlStress_cae.check_277
.L427:
	.ifgt (. - .L426) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L428:
	ldr	x1, [sp, #0]
	.ifgt (. - .L428) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L429:
	dmb	ishld
	ldar	x10, [x1]
	.ifgt (. - .L429) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L430:
	cmp	x10, #3
	cset	x11, eq
	.ifgt (. - .L430) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L431:
	orr	x12, xzr, #1
	.ifgt (. - .L431) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L432:
	add	x1, x12, x11, lsl #1
	.ifgt (. - .L432) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L433:
	adrp	x0, :got:camlStress_cae.23
	ldr	x0, [x0, #:got_lo12:camlStress_cae.23]
	.ifgt (. - .L433) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L434:
	bl	camlStress_cae.check_277
.L435:
	.ifgt (. - .L434) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L436:
	bl	caml_alloc1
.L437:	add	x15, x27, #8
	.ifgt (. - .L436) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L438:
	str	x15, [sp, #0]
	.ifgt (. - .L438) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L439:
	orr	x19, xzr, #1024
	.ifgt (. - .L439) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L440:
	str	x19, [x15, #-8]
	.ifgt (. - .L440) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L441:
	movn	x20, #0
	.ifgt (. - .L441) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L442:
	str	x20, [x15, #0]
	.ifgt (. - .L442) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L443:
	orr	x21, xzr, #-9223372036854775807
	.ifgt (. - .L443) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L444:
	movn	x22, #0
	.ifgt (. - .L444) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L445:
.L446:
	ldaxr	x23, [x15]
	cmp	x23, x22
	b.ne	.L447
	stlxr	w17, x21, [x15]
	cbnz	w17, .L446
	b	.L448
.L447:
	clrex
.L448:
	dmb	ishst
	.ifgt (. - .L445) - 32
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L449:
	cmn	x23, #1
	cset	x24, eq
	.ifgt (. - .L449) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L450:
	lsl	x25, x24, #1
	.ifgt (. - .L450) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L451:
	add	x1, x25, #1
	.ifgt (. - .L451) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L452:
	adrp	x0, :got:camlStress_cae.24
	ldr	x0, [x0, #:got_lo12:camlStress_cae.24]
	.ifgt (. - .L452) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L453:
	bl	camlStress_cae.check_277
.L454:
	.ifgt (. - .L453) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L455:
	orr	x2, xzr, #-9223372036854775807
	.ifgt (. - .L455) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L456:
	ldr	x3, [sp, #0]
	.ifgt (. - .L456) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L457:
	dmb	ishld
	ldar	x3, [x3]
	.ifgt (. - .L457) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L458:
	cmp	x3, x2
	cset	x4, eq
	.ifgt (. - .L458) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L459:
	orr	x5, xzr, #1
	.ifgt (. - .L459) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L460:
	add	x1, x5, x4, lsl #1
	.ifgt (. - .L460) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L461:
	adrp	x0, :got:camlStress_cae.25
	ldr	x0, [x0, #:got_lo12:camlStress_cae.25]
	.ifgt (. - .L461) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L462:
	bl	camlStress_cae.check_277
.L463:
	.ifgt (. - .L462) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L464:
	orr	x8, xzr, #9223372036854775807
	.ifgt (. - .L464) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L465:
	orr	x9, xzr, #-9223372036854775807
	.ifgt (. - .L465) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L466:
	ldr	x3, [sp, #0]
	.ifgt (. - .L466) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L467:
.L468:
	ldaxr	x10, [x3]
	cmp	x10, x9
	b.ne	.L469
	stlxr	w17, x8, [x3]
	cbnz	w17, .L468
	b	.L470
.L469:
	clrex
.L470:
	dmb	ishst
	.ifgt (. - .L467) - 32
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L471:
	cmp	x10, x9
	cset	x12, eq
	.ifgt (. - .L471) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L472:
	lsl	x13, x12, #1
	.ifgt (. - .L472) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L473:
	add	x1, x13, #1
	.ifgt (. - .L473) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L474:
	adrp	x0, :got:camlStress_cae.26
	ldr	x0, [x0, #:got_lo12:camlStress_cae.26]
	.ifgt (. - .L474) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L475:
	bl	camlStress_cae.check_277
.L476:
	.ifgt (. - .L475) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L477:
	orr	x19, xzr, #9223372036854775807
	.ifgt (. - .L477) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L478:
	ldr	x4, [sp, #0]
	.ifgt (. - .L478) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L479:
	dmb	ishld
	ldar	x20, [x4]
	.ifgt (. - .L479) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L480:
	cmp	x20, x19
	cset	x21, eq
	.ifgt (. - .L480) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L481:
	orr	x22, xzr, #1
	.ifgt (. - .L481) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L482:
	add	x1, x22, x21, lsl #1
	.ifgt (. - .L482) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L483:
	adrp	x0, :got:camlStress_cae.27
	ldr	x0, [x0, #:got_lo12:camlStress_cae.27]
	.ifgt (. - .L483) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L484:
	bl	camlStress_cae.check_277
.L485:
	.ifgt (. - .L484) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L486:
	adrp	x1, :got:camlStress_cae.30
	ldr	x1, [x1, #:got_lo12:camlStress_cae.30]
	.ifgt (. - .L486) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L487:
	adrp	x2, :got:camlStdlib
	ldr	x2, [x2, #:got_lo12:camlStdlib]
	.ifgt (. - .L487) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L488:
	ldr	x0, [x2, #304]
	.ifgt (. - .L488) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L489:
	bl	camlStdlib__Printf.fprintf_433
.L490:
	.ifgt (. - .L489) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L491:
	bl	caml_alloc1
.L492:	add	x0, x27, #8
	.ifgt (. - .L491) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L493:
	str	x0, [sp, #0]
	.ifgt (. - .L493) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L494:
	orr	x4, xzr, #1024
	.ifgt (. - .L494) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L495:
	str	x4, [x0, #-8]
	.ifgt (. - .L495) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L496:
	adrp	x3, :got:camlStress_cae.31
	ldr	x3, [x3, #:got_lo12:camlStress_cae.31]
	.ifgt (. - .L496) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L497:
	str	x3, [x0, #0]
	.ifgt (. - .L497) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L498:
	adrp	x2, :got:camlStress_cae.32
	ldr	x2, [x2, #:got_lo12:camlStress_cae.32]
	.ifgt (. - .L498) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L499:
	orr	x1, xzr, #1
	.ifgt (. - .L499) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L500:
	mov	x19, sp
	.cfi_remember_state
	.cfi_def_cfa_register 19
	ldr	x16, [x28, 64]
	mov	sp, x16
	bl	caml_atomic_cas_field
	mov	sp, x19
	.cfi_restore_state
	.ifgt (. - .L500) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L501:
	orr	x10, xzr, #4
	.ifgt (. - .L501) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L502:
	sub	x1, x10, x0
	.ifgt (. - .L502) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L503:
	adrp	x0, :got:camlStress_cae.33
	ldr	x0, [x0, #:got_lo12:camlStress_cae.33]
	.ifgt (. - .L503) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L504:
	bl	camlStress_cae.check_277
.L505:
	.ifgt (. - .L504) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L506:
	adrp	x3, :got:camlStress_cae.32
	ldr	x3, [x3, #:got_lo12:camlStress_cae.32]
	.ifgt (. - .L506) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L507:
	adrp	x2, :got:camlStress_cae.31
	ldr	x2, [x2, #:got_lo12:camlStress_cae.31]
	.ifgt (. - .L507) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L508:
	orr	x1, xzr, #1
	.ifgt (. - .L508) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L509:
	ldr	x0, [sp, #0]
	.ifgt (. - .L509) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L510:
	mov	x19, sp
	.cfi_remember_state
	.cfi_def_cfa_register 19
	ldr	x16, [x28, 64]
	mov	sp, x16
	bl	caml_atomic_cas_field
	mov	sp, x19
	.cfi_restore_state
	.ifgt (. - .L510) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L511:
	mov	x1, x0
	.ifgt (. - .L511) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L512:
	adrp	x0, :got:camlStress_cae.34
	ldr	x0, [x0, #:got_lo12:camlStress_cae.34]
	.ifgt (. - .L512) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L513:
	bl	camlStress_cae.check_277
.L514:
	.ifgt (. - .L513) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L515:
	adrp	x21, :got:camlStress_cae.32
	ldr	x21, [x21, #:got_lo12:camlStress_cae.32]
	.ifgt (. - .L515) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L516:
	ldr	x6, [sp, #0]
	.ifgt (. - .L516) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L517:
	dmb	ishld
	ldar	x22, [x6]
	.ifgt (. - .L517) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L518:
	cmp	x22, x21
	cset	x23, eq
	.ifgt (. - .L518) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L519:
	orr	x24, xzr, #1
	.ifgt (. - .L519) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L520:
	add	x1, x24, x23, lsl #1
	.ifgt (. - .L520) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L521:
	adrp	x0, :got:camlStress_cae.35
	ldr	x0, [x0, #:got_lo12:camlStress_cae.35]
	.ifgt (. - .L521) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L522:
	bl	camlStress_cae.check_277
.L523:
	.ifgt (. - .L522) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L524:
	orr	x0, xzr, #1
	.ifgt (. - .L524) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L525:
	adrp	x8, :got:caml_gc_full_major
	ldr	x8, [x8, #:got_lo12:caml_gc_full_major]
	bl	caml_c_call
.L526:
	.ifgt (. - .L525) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L527:
	adrp	x1, :got:camlStress_cae.32
	ldr	x1, [x1, #:got_lo12:camlStress_cae.32]
	.ifgt (. - .L527) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L528:
	ldr	x7, [sp, #0]
	.ifgt (. - .L528) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L529:
	dmb	ishld
	ldar	x0, [x7]
	.ifgt (. - .L529) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L530:
	mov	x19, sp
	.cfi_remember_state
	.cfi_def_cfa_register 19
	ldr	x16, [x28, 64]
	mov	sp, x16
	bl	caml_string_equal
	mov	sp, x19
	.cfi_restore_state
	.ifgt (. - .L530) - 20
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L531:
	mov	x1, x0
	.ifgt (. - .L531) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L532:
	adrp	x0, :got:camlStress_cae.36
	ldr	x0, [x0, #:got_lo12:camlStress_cae.36]
	.ifgt (. - .L532) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L533:
	bl	camlStress_cae.check_277
.L534:
	.ifgt (. - .L533) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L535:
	movz	x7, #3393, lsl #0
	movk	x7, #3, lsl #16
	.ifgt (. - .L535) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L536:
	str	x7, [sp, #8]
	.ifgt (. - .L536) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L537:
	movz	x8, #9, lsl #0
	.ifgt (. - .L537) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L538:
	str	x8, [sp, #0]
	.ifgt (. - .L538) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L539:
	adrp	x1, :got:camlStress_cae.46
	ldr	x1, [x1, #:got_lo12:camlStress_cae.46]
	.ifgt (. - .L539) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L540:
	adrp	x10, :got:camlStdlib
	ldr	x10, [x10, #:got_lo12:camlStdlib]
	.ifgt (. - .L540) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L541:
	ldr	x0, [x10, #304]
	.ifgt (. - .L541) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L542:
	bl	camlStdlib__Printf.fprintf_433
.L543:
	.ifgt (. - .L542) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L544:
	mov	x2, x0
	.ifgt (. - .L544) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L545:
	ldr	x0, [sp, #0]
	.ifgt (. - .L545) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L546:
	ldr	x1, [sp, #8]
	.ifgt (. - .L546) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L547:
	bl	caml_apply2
.L548:
	.ifgt (. - .L547) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L549:
	movz	x8, #80, lsl #0
	bl	caml_allocN
.L550:	add	x13, x27, #8
	.ifgt (. - .L549) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L551:
	add	x13, x13, #64
	.ifgt (. - .L551) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L552:
	str	x13, [sp, #16]
	.ifgt (. - .L552) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L553:
	orr	x14, xzr, #1024
	.ifgt (. - .L553) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L554:
	str	x14, [x13, #-8]
	.ifgt (. - .L554) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L555:
	orr	x15, xzr, #1
	.ifgt (. - .L555) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L556:
	str	x15, [x13, #0]
	.ifgt (. - .L556) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L557:
	sub	x19, x13, #32
	.ifgt (. - .L557) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L558:
	str	x19, [sp, #0]
	.ifgt (. - .L558) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L559:
	movz	x20, #3319, lsl #0
	.ifgt (. - .L559) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L560:
	str	x20, [x19, #-8]
	.ifgt (. - .L560) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L561:
	adrp	x21, :got:camlStress_cae.bump_387
	ldr	x21, [x21, #:got_lo12:camlStress_cae.bump_387]
	.ifgt (. - .L561) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L562:
	str	x21, [x19, #0]
	.ifgt (. - .L562) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L563:
	movz	x22, #5, lsl #0
	movk	x22, #256, lsl #48
	.ifgt (. - .L563) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L564:
	str	x22, [x19, #8]
	.ifgt (. - .L564) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L565:
	str	x13, [x19, #16]
	.ifgt (. - .L565) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L566:
	sub	x1, x19, #32
	.ifgt (. - .L566) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L567:
	movz	x24, #3319, lsl #0
	.ifgt (. - .L567) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L568:
	str	x24, [x1, #-8]
	.ifgt (. - .L568) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L569:
	adrp	x25, :got:camlStress_cae.fun_604
	ldr	x25, [x25, #:got_lo12:camlStress_cae.fun_604]
	.ifgt (. - .L569) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L570:
	str	x25, [x1, #0]
	.ifgt (. - .L570) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L571:
	str	x22, [x1, #8]
	.ifgt (. - .L571) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L572:
	str	x19, [x1, #16]
	.ifgt (. - .L572) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L573:
	orr	x0, xzr, #7
	.ifgt (. - .L573) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L574:
	bl	camlStdlib__List.init_332
.L575:
	.ifgt (. - .L574) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L576:
	str	x0, [sp, #8]
	.ifgt (. - .L576) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L577:
	orr	x0, xzr, #1
	.ifgt (. - .L577) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L578:
	ldr	x1, [sp, #0]
	.ifgt (. - .L578) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L579:
	bl	camlStress_cae.bump_387
.L580:
	.ifgt (. - .L579) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L581:
	adrp	x4, :got:camlStdlib__Domain
	ldr	x4, [x4, #:got_lo12:camlStdlib__Domain]
	.ifgt (. - .L581) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L582:
	ldr	x0, [x4, #8]
	.ifgt (. - .L582) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L583:
	ldr	x1, [sp, #8]
	.ifgt (. - .L583) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L584:
	bl	camlStdlib__List.iter_403
.L585:
	.ifgt (. - .L584) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L586:
	movz	x6, #13569, lsl #0
	movk	x6, #12, lsl #16
	.ifgt (. - .L586) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L587:
	ldr	x12, [sp, #16]
	.ifgt (. - .L587) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L588:
	dmb	ishld
	ldar	x7, [x12]
	.ifgt (. - .L588) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L589:
	cmp	x7, x6
	cset	x8, eq
	.ifgt (. - .L589) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L590:
	orr	x9, xzr, #1
	.ifgt (. - .L590) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L591:
	add	x1, x9, x8, lsl #1
	.ifgt (. - .L591) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L592:
	adrp	x0, :got:camlStress_cae.47
	ldr	x0, [x0, #:got_lo12:camlStress_cae.47]
	.ifgt (. - .L592) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L593:
	bl	camlStress_cae.check_277
.L594:
	.ifgt (. - .L593) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L595:
	adrp	x1, :got:camlStress_cae.50
	ldr	x1, [x1, #:got_lo12:camlStress_cae.50]
	.ifgt (. - .L595) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L596:
	adrp	x14, :got:camlStdlib
	ldr	x14, [x14, #:got_lo12:camlStdlib]
	.ifgt (. - .L596) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L597:
	ldr	x0, [x14, #304]
	.ifgt (. - .L597) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L598:
	bl	camlStdlib__Printf.fprintf_433
.L599:
	.ifgt (. - .L598) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L600:
	bl	caml_alloc1
.L601:	add	x19, x27, #8
	.ifgt (. - .L600) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L602:
	str	x19, [sp, #16]
	.ifgt (. - .L602) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L603:
	orr	x20, xzr, #1024
	.ifgt (. - .L603) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L604:
	str	x20, [x19, #-8]
	.ifgt (. - .L604) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L605:
	orr	x21, xzr, #1
	.ifgt (. - .L605) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L606:
	str	x21, [x19, #0]
	.ifgt (. - .L606) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L607:
	orr	x1, xzr, #1
	.ifgt (. - .L607) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L608:
	movz	x0, #13571, lsl #0
	movk	x0, #12, lsl #16
	.ifgt (. - .L608) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L609:
	adrp	x8, :got:caml_array_make
	ldr	x8, [x8, #:got_lo12:caml_array_make]
	bl	caml_c_call
.L610:
	.ifgt (. - .L609) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L611:
	str	x0, [sp, #24]
	.ifgt (. - .L611) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L612:
	orr	x8, xzr, #64
	bl	caml_allocN
.L613:	add	x25, x27, #8
	.ifgt (. - .L612) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L614:
	add	x25, x25, #32
	.ifgt (. - .L614) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L615:
	str	x25, [sp, #0]
	.ifgt (. - .L615) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L616:
	movz	x0, #3319, lsl #0
	.ifgt (. - .L616) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L617:
	str	x0, [x25, #-8]
	.ifgt (. - .L617) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L618:
	adrp	x1, :got:camlStress_cae.collect_556
	ldr	x1, [x1, #:got_lo12:camlStress_cae.collect_556]
	.ifgt (. - .L618) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L619:
	str	x1, [x25, #0]
	.ifgt (. - .L619) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L620:
	movz	x2, #5, lsl #0
	movk	x2, #256, lsl #48
	.ifgt (. - .L620) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L621:
	str	x2, [x25, #8]
	.ifgt (. - .L621) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L622:
	ldr	x13, [sp, #16]
	.ifgt (. - .L622) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L623:
	str	x13, [x25, #16]
	.ifgt (. - .L623) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L624:
	sub	x1, x25, #32
	.ifgt (. - .L624) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L625:
	movz	x4, #3319, lsl #0
	.ifgt (. - .L625) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L626:
	str	x4, [x1, #-8]
	.ifgt (. - .L626) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L627:
	adrp	x5, :got:camlStress_cae.fun_613
	ldr	x5, [x5, #:got_lo12:camlStress_cae.fun_613]
	.ifgt (. - .L627) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L628:
	str	x5, [x1, #0]
	.ifgt (. - .L628) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L629:
	str	x2, [x1, #8]
	.ifgt (. - .L629) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L630:
	str	x25, [x1, #16]
	.ifgt (. - .L630) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L631:
	orr	x0, xzr, #7
	.ifgt (. - .L631) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L632:
	bl	camlStdlib__List.init_332
.L633:
	.ifgt (. - .L632) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L634:
	str	x0, [sp, #8]
	.ifgt (. - .L634) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L635:
	orr	x0, xzr, #1
	.ifgt (. - .L635) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L636:
	ldr	x1, [sp, #0]
	.ifgt (. - .L636) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L637:
	bl	camlStress_cae.collect_556
.L638:
	.ifgt (. - .L637) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L639:
	str	x0, [sp, #0]
	.ifgt (. - .L639) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L640:
	adrp	x11, :got:camlStdlib__Domain
	ldr	x11, [x11, #:got_lo12:camlStdlib__Domain]
	.ifgt (. - .L640) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L641:
	ldr	x0, [x11, #8]
	.ifgt (. - .L641) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L642:
	ldr	x1, [sp, #8]
	.ifgt (. - .L642) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L643:
	bl	camlStdlib__List.map_340
.L644:
	.ifgt (. - .L643) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L645:
	bl	caml_alloc2
.L646:	add	x14, x27, #8
	.ifgt (. - .L645) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L647:
	orr	x15, xzr, #2048
	.ifgt (. - .L647) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L648:
	str	x15, [x14, #-8]
	.ifgt (. - .L648) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L649:
	ldr	x19, [sp, #0]
	.ifgt (. - .L649) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L650:
	str	x19, [x14, #0]
	.ifgt (. - .L650) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L651:
	str	x0, [x14, #8]
	.ifgt (. - .L651) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L652:
	mov	x0, x14
	.ifgt (. - .L652) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L653:
	bl	camlStdlib__List.flatten_335
.L654:
	.ifgt (. - .L653) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L655:
	mov	x1, x0
	.ifgt (. - .L655) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L656:
	bl	caml_alloc3
.L657:	add	x0, x27, #8
	.ifgt (. - .L656) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L658:
	movz	x21, #3319, lsl #0
	.ifgt (. - .L658) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L659:
	str	x21, [x0, #-8]
	.ifgt (. - .L659) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L660:
	adrp	x22, :got:camlStress_cae.fun_634
	ldr	x22, [x22, #:got_lo12:camlStress_cae.fun_634]
	.ifgt (. - .L660) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L661:
	str	x22, [x0, #0]
	.ifgt (. - .L661) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L662:
	movz	x23, #5, lsl #0
	movk	x23, #256, lsl #48
	.ifgt (. - .L662) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L663:
	str	x23, [x0, #8]
	.ifgt (. - .L663) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L664:
	ldr	x20, [sp, #24]
	.ifgt (. - .L664) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L665:
	str	x20, [x0, #16]
	.ifgt (. - .L665) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L666:
	bl	camlStdlib__List.iter_403
.L667:
	.ifgt (. - .L666) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L668:
	ldr	x21, [sp, #16]
	.ifgt (. - .L668) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L669:
	dmb	ishld
	ldar	x24, [x21]
	.ifgt (. - .L669) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L670:
	ldr	x0, [sp, #24]
	.ifgt (. - .L670) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L671:
	ldr	x25, [x0, #-8]
	.ifgt (. - .L671) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L672:
	cmp	x24, x25, lsr #9
	b.cs	.L673
	.ifgt (. - .L672) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L675:
	add	x1, x0, x24, lsl #2
	.ifgt (. - .L675) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L676:
	ldr	x1, [x1, #-4]
	.ifgt (. - .L676) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L677:
	add	x2, x1, #2
	.ifgt (. - .L677) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L678:
	dmb	ishld
	ldar	x3, [x21]
	.ifgt (. - .L678) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L679:
	cmp	x3, x25, lsr #9
	b.cs	.L673
	.ifgt (. - .L679) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L680:
	add	x5, x0, x3, lsl #2
	.ifgt (. - .L680) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L681:
	sub	x16, x5, #4
	stlr	x2, [x16]
	.ifgt (. - .L681) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L682:
	orr	x1, xzr, #3
	.ifgt (. - .L682) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L683:
	orr	x9, xzr, #1
	.ifgt (. - .L683) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L684:
	movz	x11, #13569, lsl #0
	movk	x11, #12, lsl #16
	.ifgt (. - .L684) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L685:
	cmp	x9, x11
	b.gt	.L284
	.ifgt (. - .L685) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L686:
.L285:
	.ifgt (. - .L686) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L687:
	ldr	x13, [x0, #-8]
	.ifgt (. - .L687) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L688:
	cmp	x9, x13, lsr #9
	b.cs	.L673
	.ifgt (. - .L688) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L689:
	add	x14, x0, x9, lsl #2
	.ifgt (. - .L689) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L690:
	ldr	x15, [x14, #-4]
	.ifgt (. - .L690) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L691:
	cmp	x15, #3
	b.eq	.L286
	.ifgt (. - .L691) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L692:
	orr	x1, xzr, #1
	.ifgt (. - .L692) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L693:
.L286:
	.ifgt (. - .L693) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L694:
	mov	x20, x9
	.ifgt (. - .L694) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L695:
	add	x9, x9, #2
	.ifgt (. - .L695) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L696:
	movz	x23, #13569, lsl #0
	movk	x23, #12, lsl #16
	.ifgt (. - .L696) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L697:
	cmp	x20, x23
	b.eq	.L284
	.ifgt (. - .L697) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L698:
	ldr	x16, [x28, #0]
	cmp	x27, x16
	b.hi	.L285
	b	.L700
	.ifgt (. - .L698) - 16
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L701:
.L284:
	.ifgt (. - .L701) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L702:
	adrp	x0, :got:camlStress_cae.51
	ldr	x0, [x0, #:got_lo12:camlStress_cae.51]
	.ifgt (. - .L702) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L703:
	bl	camlStress_cae.check_277
.L704:
	.ifgt (. - .L703) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L705:
	adrp	x1, :got:camlStress_cae
	ldr	x1, [x1, #:got_lo12:camlStress_cae]
	.ifgt (. - .L705) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L706:
	ldr	x2, [x1, #16]
	.ifgt (. - .L706) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L707:
	ldr	x3, [x2, #0]
	.ifgt (. - .L707) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L708:
	cmp	x3, #1
	b.ne	.L283
	.ifgt (. - .L708) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L709:
	adrp	x0, :got:camlStress_cae.52
	ldr	x0, [x0, #:got_lo12:camlStress_cae.52]
	.ifgt (. - .L709) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L710:
	bl	camlStdlib.print_endline_369
.L711:
	.ifgt (. - .L710) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L712:
	b	.L282
	.ifgt (. - .L712) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L713:
.L283:
	.ifgt (. - .L713) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L714:
	str	x3, [sp, #0]
	.ifgt (. - .L714) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L715:
	adrp	x1, :got:camlStress_cae.57
	ldr	x1, [x1, #:got_lo12:camlStress_cae.57]
	.ifgt (. - .L715) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L716:
	adrp	x10, :got:camlStdlib
	ldr	x10, [x10, #:got_lo12:camlStdlib]
	.ifgt (. - .L716) - 8
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L717:
	ldr	x0, [x10, #304]
	.ifgt (. - .L717) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L718:
	bl	camlStdlib__Printf.fprintf_433
.L719:
	.ifgt (. - .L718) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L720:
	mov	x1, x0
	.ifgt (. - .L720) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L721:
	ldr	x13, [x1, #0]
	.ifgt (. - .L721) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L722:
	ldr	x0, [sp, #0]
	.ifgt (. - .L722) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L723:
	blr	x13
.L724:
	.ifgt (. - .L723) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L725:
	orr	x0, xzr, #3
	.ifgt (. - .L725) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L726:
	bl	camlStdlib.exit_480
.L727:
	.ifgt (. - .L726) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L728:
.L282:
	.ifgt (. - .L728) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L729:
	orr	x0, xzr, #1
	.ifgt (. - .L729) - 4
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L730:
	.ifgt (. - .L730) - 0
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L731:
	add	sp, sp, #48
	.cfi_adjust_cfa_offset	-48
	ldr	x30, [sp, #-8]
	ret
	.cfi_adjust_cfa_offset	48
	.ifgt (. - .L731) - 12
	.error "Emit.instr_size: instruction length mismatch"
	.endif
	.ifgt (. - .L289) - 2224
	.error "Emit.instr_size: instruction length mismatch"
	.endif
.L700:	bl	caml_call_gc
.L699:	b	.L285
.L673:	bl	caml_ml_array_bound_error
.L674:
	.cfi_endproc
	.type	camlStress_cae.entry, %function
	.size	camlStress_cae.entry, . - camlStress_cae.entry
	.data
	.align	3
	.text
	.globl	camlStress_cae.code_end
camlStress_cae.code_end:
	.data
	.quad	0
	.globl	camlStress_cae.data_end
camlStress_cae.data_end:
	.quad	0
	.align	3
	.globl	camlStress_cae.frametable
camlStress_cae.frametable:
	.quad	60
	.type	.L727, %function
	.quad	.L727
	.short	49
	.short	0
	.align	2
	.long	.L732 - . + 0x0
	.align	3
	.type	.L724, %function
	.quad	.L724
	.short	49
	.short	0
	.align	2
	.long	.L733 - . + 0x0
	.align	3
	.type	.L719, %function
	.quad	.L719
	.short	49
	.short	0
	.align	2
	.long	.L734 - . + 0x0
	.align	3
	.type	.L711, %function
	.quad	.L711
	.short	49
	.short	0
	.align	2
	.long	.L735 - . + 0x0
	.align	3
	.type	.L704, %function
	.quad	.L704
	.short	49
	.short	0
	.align	2
	.long	.L736 - . + 0x0
	.align	3
	.type	.L699, %function
	.quad	.L699
	.short	50
	.short	1
	.short	1
	.byte	0
	.align	3
	.type	.L674, %function
	.quad	.L674
	.short	49
	.short	0
	.align	2
	.long	.L737 - . + 0x0
	.align	3
	.type	.L667, %function
	.quad	.L667
	.short	49
	.short	2
	.short	16
	.short	24
	.align	2
	.long	.L738 - . + 0x0
	.align	3
	.type	.L657, %function
	.quad	.L657
	.short	50
	.short	3
	.short	3
	.short	16
	.short	24
	.byte	1
	.byte	2
	.align	3
	.type	.L654, %function
	.quad	.L654
	.short	49
	.short	2
	.short	16
	.short	24
	.align	2
	.long	.L739 - . + 0x0
	.align	3
	.type	.L646, %function
	.quad	.L646
	.short	50
	.short	4
	.short	0
	.short	1
	.short	16
	.short	24
	.byte	1
	.byte	1
	.align	3
	.type	.L644, %function
	.quad	.L644
	.short	49
	.short	3
	.short	0
	.short	16
	.short	24
	.align	2
	.long	.L740 - . + 0x0
	.align	3
	.type	.L638, %function
	.quad	.L638
	.short	49
	.short	3
	.short	8
	.short	16
	.short	24
	.align	2
	.long	.L741 - . + 0x0
	.align	3
	.type	.L633, %function
	.quad	.L633
	.short	49
	.short	3
	.short	0
	.short	16
	.short	24
	.align	2
	.long	.L742 - . + 0x0
	.align	3
	.type	.L613, %function
	.quad	.L613
	.short	50
	.short	2
	.short	16
	.short	24
	.byte	2
	.byte	2
	.byte	2
	.align	3
	.type	.L610, %function
	.quad	.L610
	.short	49
	.short	1
	.short	16
	.align	2
	.long	.L743 - . + 0x0
	.align	3
	.type	.L601, %function
	.quad	.L601
	.short	50
	.short	0
	.byte	1
	.byte	0
	.align	3
	.type	.L599, %function
	.quad	.L599
	.short	49
	.short	0
	.align	2
	.long	.L734 - . + 0x0
	.align	3
	.type	.L594, %function
	.quad	.L594
	.short	49
	.short	0
	.align	2
	.long	.L744 - . + 0x0
	.align	3
	.type	.L585, %function
	.quad	.L585
	.short	49
	.short	1
	.short	16
	.align	2
	.long	.L745 - . + 0x0
	.align	3
	.type	.L580, %function
	.quad	.L580
	.short	49
	.short	2
	.short	8
	.short	16
	.align	2
	.long	.L746 - . + 0x0
	.align	3
	.type	.L575, %function
	.quad	.L575
	.short	49
	.short	2
	.short	0
	.short	16
	.align	2
	.long	.L747 - . + 0x0
	.align	3
	.type	.L550, %function
	.quad	.L550
	.short	50
	.short	0
	.byte	3
	.byte	2
	.byte	2
	.byte	0
	.align	3
	.type	.L548, %function
	.quad	.L548
	.short	49
	.short	0
	.align	2
	.long	.L748 - . + 0x0
	.align	3
	.type	.L543, %function
	.quad	.L543
	.short	49
	.short	0
	.align	2
	.long	.L734 - . + 0x0
	.align	3
	.type	.L534, %function
	.quad	.L534
	.short	49
	.short	0
	.align	2
	.long	.L749 - . + 0x0
	.align	3
	.type	.L526, %function
	.quad	.L526
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L750 - . + 0x0
	.align	3
	.type	.L523, %function
	.quad	.L523
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L751 - . + 0x0
	.align	3
	.type	.L514, %function
	.quad	.L514
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L752 - . + 0x0
	.align	3
	.type	.L505, %function
	.quad	.L505
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L753 - . + 0x0
	.align	3
	.type	.L492, %function
	.quad	.L492
	.short	50
	.short	0
	.byte	1
	.byte	0
	.align	3
	.type	.L490, %function
	.quad	.L490
	.short	49
	.short	0
	.align	2
	.long	.L734 - . + 0x0
	.align	3
	.type	.L485, %function
	.quad	.L485
	.short	49
	.short	0
	.align	2
	.long	.L754 - . + 0x0
	.align	3
	.type	.L476, %function
	.quad	.L476
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L755 - . + 0x0
	.align	3
	.type	.L463, %function
	.quad	.L463
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L756 - . + 0x0
	.align	3
	.type	.L454, %function
	.quad	.L454
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L757 - . + 0x0
	.align	3
	.type	.L437, %function
	.quad	.L437
	.short	50
	.short	0
	.byte	1
	.byte	0
	.align	3
	.type	.L435, %function
	.quad	.L435
	.short	49
	.short	0
	.align	2
	.long	.L758 - . + 0x0
	.align	3
	.type	.L427, %function
	.quad	.L427
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L759 - . + 0x0
	.align	3
	.type	.L414, %function
	.quad	.L414
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L760 - . + 0x0
	.align	3
	.type	.L397, %function
	.quad	.L397
	.short	50
	.short	0
	.byte	1
	.byte	0
	.align	3
	.type	.L395, %function
	.quad	.L395
	.short	49
	.short	0
	.align	2
	.long	.L761 - . + 0x0
	.align	3
	.type	.L387, %function
	.quad	.L387
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L762 - . + 0x0
	.align	3
	.type	.L377, %function
	.quad	.L377
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L763 - . + 0x0
	.align	3
	.type	.L364, %function
	.quad	.L364
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L764 - . + 0x0
	.align	3
	.type	.L356, %function
	.quad	.L356
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L765 - . + 0x0
	.align	3
	.type	.L343, %function
	.quad	.L343
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L766 - . + 0x0
	.align	3
	.type	.L335, %function
	.quad	.L335
	.short	49
	.short	1
	.short	0
	.align	2
	.long	.L767 - . + 0x0
	.align	3
	.type	.L318, %function
	.quad	.L318
	.short	50
	.short	0
	.byte	1
	.byte	0
	.align	3
	.type	.L316, %function
	.quad	.L316
	.short	49
	.short	0
	.align	2
	.long	.L734 - . + 0x0
	.align	3
	.type	.L300, %function
	.quad	.L300
	.short	50
	.short	0
	.byte	1
	.byte	0
	.align	3
	.type	.L275, %function
	.quad	.L275
	.short	1
	.short	0
	.align	2
	.long	.L768 - . + 0x0
	.align	3
	.type	.L252, %function
	.quad	.L252
	.short	18
	.short	1
	.short	3
	.byte	1
	.byte	3
	.align	3
	.type	.L225, %function
	.quad	.L225
	.short	18
	.short	2
	.short	1
	.short	3
	.byte	1
	.byte	1
	.align	3
	.type	.L182, %function
	.quad	.L182
	.short	18
	.short	1
	.short	3
	.byte	0
	.align	3
	.type	.L165, %function
	.quad	.L165
	.short	33
	.short	1
	.short	0
	.align	2
	.long	.L769 - . + 0x0
	.align	3
	.type	.L151, %function
	.quad	.L151
	.short	34
	.short	1
	.short	0
	.byte	1
	.byte	2
	.align	3
	.type	.L132, %function
	.quad	.L132
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L734 - . + 0x0
	.align	3
	.type	.L116, %function
	.quad	.L116
	.short	17
	.short	1
	.short	0
	.align	2
	.long	.L734 - . + 0x0
	.align	3
	.type	.L107, %function
	.quad	.L107
	.short	18
	.short	1
	.short	1
	.byte	0
	.align	3
	.align	2
.L769:
	.long	.L771 - . + 0x0
	.long	0x1f81858
	.align	2
.L734:
	.long	.L773 - . + 0x0
	.long	0xf84518
	.align	2
.L748:
	.long	.L774 - . + 0x0
	.long	0x1b80a68
	.align	2
.L762:
	.long	.L774 - . + 0x0
	.long	0xd809c0
	.align	2
.L755:
	.long	.L774 - . + 0x0
	.long	0x1280a00
	.align	2
.L752:
	.long	.L774 - . + 0x0
	.long	0x17809b0
	.align	2
.L746:
	.long	.L774 - . + 0x0
	.long	0x2180848
	.align	2
.L745:
	.long	.L774 - . + 0x0
	.long	0x22008d0
	.align	2
.L741:
	.long	.L774 - . + 0x0
	.long	0x2b034b0
	.align	2
.L732:
	.long	.L774 - . + 0x0
	.long	0x320d9e0
	.align	2
.L738:
	.long	.L774 - . + 0x0
	.long	0x2c00998
	.align	2
.L735:
	.long	.L774 - . + 0x0
	.long	0x3186170
	.align	2
.L753:
	.long	.L774 - . + 0x0
	.long	0x17009e8
	.align	2
.L747:
	.long	.L774 - . + 0x0
	.long	0x2102e00
	.align	2
.L760:
	.long	.L774 - . + 0x0
	.long	0xf009e0
	.align	2
.L757:
	.long	.L774 - . + 0x0
	.long	0x11809f0
	.align	2
.L756:
	.long	.L774 - . + 0x0
	.long	0x1200990
	.align	2
.L737:
	.long	.L774 - . + 0x0
	.long	0x2c86560
	.align	2
.L742:
	.long	.L774 - . + 0x18000000
	.long	0x2a12ca9
	.align	2
.L768:
	.long	.L775 - . + 0x0
	.long	0x2c08950
	.align	2
.L767:
	.long	.L774 - . + 0x0
	.long	0xb009e8
	.align	2
.L766:
	.long	.L774 - . + 0x0
	.long	0xb80958
	.align	2
.L764:
	.long	.L774 - . + 0x0
	.long	0xc809b0
	.align	2
.L758:
	.long	.L774 - . + 0x0
	.long	0x1000950
	.align	2
.L744:
	.long	.L774 - . + 0x0
	.long	0x2280a00
	.align	2
.L765:
	.long	.L774 - . + 0x0
	.long	0xc00a28
	.align	2
.L763:
	.long	.L774 - . + 0x0
	.long	0xd009d0
	.align	2
.L759:
	.long	.L774 - . + 0x0
	.long	0xf80a18
	.align	2
.L754:
	.long	.L774 - . + 0x0
	.long	0x1300988
	.align	2
.L749:
	.long	.L774 - . + 0x0
	.long	0x1900980
	.align	2
.L739:
	.long	.L774 - . + 0x0
	.long	0x2b831c8
	.align	2
.L750:
	.long	.L774 - . + 0x0
	.long	0x1880890
	.align	2
.L751:
	.long	.L774 - . + 0x0
	.long	0x1800948
	.align	2
.L743:
	.long	.L774 - . + 0x0
	.long	0x26035a8
	.align	2
.L761:
	.long	.L774 - . + 0x0
	.long	0xe00960
	.align	2
.L740:
	.long	.L774 - . + 0x0
	.long	0x2b885c0
	.align	2
.L736:
	.long	.L774 - . + 0x0
	.long	0x3000978
	.align	2
.L733:
	.long	.L774 - . + 0x0
	.long	0x32035a0
.L770:
	.asciz	"/root/ab/stress_cae.ml"
.L772:
	.asciz	"printf.ml"
	.align	2
.L771:
	.long	.L770 - . + 0x0
	.asciz	"Stress_cae.bump"
	.align	2
.L773:
	.long	.L772 - . + 0x0
	.asciz	"Stdlib__Printf.printf"
	.align	2
.L775:
	.long	.L770 - . + 0x0
	.asciz	"Stress_cae.(fun)"
	.align	2
.L774:
	.long	.L770 - . + 0x0
	.asciz	"Stress_cae"
	.align	3
	.type	camlStress_cae.frametable, %object
	.size	camlStress_cae.frametable, . - camlStress_cae.frametable
	.section .note.GNU-stack,"",%progbits
