	.file	""
	.section ".data"
	.align	8
	.globl	camlCas_test.data_begin
	.type	camlCas_test.data_begin, @object
camlCas_test.data_begin:
	.text
	.globl	camlCas_test.code_begin
	.type	camlCas_test.code_begin, @object
camlCas_test.code_begin:
	.section ".data"
	.align	8
	.section ".data"
	.align	8
	.quad	4087
camlCas_test.29:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlCas_test.check_279
	.section ".data"
	.align	8
	.quad	1792
	.globl	camlCas_test
	.type	camlCas_test, @object
camlCas_test:
	.quad	1
	.section ".data"
	.align	8
	.globl	camlCas_test.gc_roots
	.type	camlCas_test.gc_roots, @object
camlCas_test.gc_roots:
	.quad	camlCas_test
	.quad	0
	.globl	camlCas_test.check_279
	.type	camlCas_test.check_279, @function
	.text
	.align	8
camlCas_test.check_279:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	lay	%r1, -328(%r15)
	clg	%r1, 40(%r10)
	brcl	4, .L102
.L103:
	lay	%r15, -16(%r15)
	.cfi_def_cfa_offset	16
	.cfi_escape 0x14, 15, 0
	stg	%r14, 8(%r15)
	.cfi_offset 14, -8
.L101:
	cgfi	%r3, 1
	brcl	8, .L100
	lghi	%r2, 1
	lg	%r14, 8(%r15)
	la	%r15, 16(%r15)
	br	%r14
.L100:
	stg	%r2, 0(%r15)
	lgrl	%r3, camlCas_test.6@GOT
	lgrl	%r6, camlStdlib@GOT
	lg	%r2, 304(%r6)
	brasl	%r14, camlStdlib__Printf.fprintf_433@PLT
.L104:
	lgr	%r3, %r2
	lg	%r9, 0(%r3)
	lg	%r2, 0(%r15)
	basr	%r14, %r9
.L105:
	lghi	%r2, 3
	lg	%r14, 8(%r15)
	la	%r15, 16(%r15)
	brcl	15, camlStdlib.exit_480@PLT
.L102:
	lay	%r15, -8(%r15)
	.cfi_def_cfa_offset	8
	.cfi_escape 0x14, 15, 0
	stg	%r14, 0(%r15)
	.cfi_offset 14, -8
	lgfi	%r12, 34
	lgrl	%r1, caml_call_realloc_stack@GOT
	basr	%r14, %r1
	lg	%r14, 0(%r15)
	la	%r15, 8(%r15)
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	brcl	15, .L103
	.cfi_endproc
	.size	camlCas_test.check_279, . - camlCas_test.check_279
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.9:
	.byte	99,97,115,45,111,107,45,114,101,115,117,108,116
	.space	2
	.byte	2
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.8:
	.byte	99,97,115,45,102,97,105,108,45,118,97,108,117,101
	.space	1
	.byte	1
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.7:
	.byte	99,97,115,45,102,97,105,108,45,114,101,115,117,108,116
	.byte	0
	.section ".data"
	.align	8
	.quad	2816
camlCas_test.6:
	.quad	camlCas_test.4
	.quad	camlCas_test.5
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.5:
	.byte	70,65,73,76,32,37,115,10
	.space	7
	.byte	7
	.section ".data"
	.align	8
	.quad	2827
camlCas_test.4:
	.quad	camlCas_test.1
	.quad	camlCas_test.3
	.section ".data"
	.align	8
	.quad	2818
camlCas_test.3:
	.quad	1
	.quad	camlCas_test.2
	.section ".data"
	.align	8
	.quad	2044
camlCas_test.28:
	.byte	97,108,108,32,111,107
	.space	1
	.byte	1
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.27:
	.byte	99,97,115,45,108,111,111,112
	.space	7
	.byte	7
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.26:
	.byte	99,97,115,45,98,114,97,110,99,104
	.space	5
	.byte	5
	.section ".data"
	.align	8
	.quad	2044
camlCas_test.25:
	.byte	110,111
	.space	5
	.byte	5
	.section ".data"
	.align	8
	.quad	2044
camlCas_test.24:
	.byte	121,101,115
	.space	4
	.byte	4
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.23:
	.byte	99,97,115,45,98,111,111,108,45,102,97,105,108
	.space	2
	.byte	2
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.22:
	.byte	99,97,115,45,98,111,111,108,45,118,97,108,117,101
	.space	1
	.byte	1
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.21:
	.byte	99,97,115,45,98,111,111,108
	.space	7
	.byte	7
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.20:
	.byte	101,120,99,104,45,110,101,119,50
	.space	6
	.byte	6
	.section ".data"
	.align	8
	.quad	2828
camlCas_test.2:
	.quad	21
	.quad	1
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.19:
	.byte	101,120,99,104,45,111,108,100,50
	.space	6
	.byte	6
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.18:
	.byte	101,120,99,104,45,110,101,119
	.space	7
	.byte	7
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.17:
	.byte	101,120,99,104,45,111,108,100
	.space	7
	.byte	7
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.16:
	.byte	99,97,115,45,115,97,109,101,45,118,97,108,117,101
	.space	1
	.byte	1
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.15:
	.byte	99,97,115,45,115,97,109,101
	.space	7
	.byte	7
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.14:
	.byte	99,97,115,45,122,101,114,111,45,118,97,108,117,101
	.space	1
	.byte	1
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.13:
	.byte	99,97,115,45,122,101,114,111
	.space	7
	.byte	7
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.12:
	.byte	99,97,115,45,110,101,103,45,118,97,108,117,101
	.space	2
	.byte	2
	.section ".data"
	.align	8
	.quad	2044
camlCas_test.11:
	.byte	99,97,115,45,110,101,103
	.byte	0
	.section ".data"
	.align	8
	.quad	3068
camlCas_test.10:
	.byte	99,97,115,45,111,107,45,118,97,108,117,101
	.space	3
	.byte	3
	.section ".data"
	.align	8
	.quad	2044
camlCas_test.1:
	.byte	70,65,73,76,32
	.space	2
	.byte	2
	.globl	camlCas_test.entry
	.type	camlCas_test.entry, @function
	.text
	.align	8
camlCas_test.entry:
	.cfi_startproc
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	lay	%r1, -328(%r15)
	clg	%r1, 40(%r10)
	brcl	4, .L112
.L113:
	lay	%r15, -16(%r15)
	.cfi_def_cfa_offset	16
	.cfi_escape 0x14, 15, 0
	stg	%r14, 8(%r15)
	.cfi_offset 14, -8
.L111:
	lgrl	%r3, camlCas_test.29@GOT
	lgrl	%r2, camlCas_test@GOT
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_initialize@PLT
	lgr	%r15, %r12
	.cfi_restore_state
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L114:
	la	%r5, 8(%r11)
	stg	%r5, 0(%r15)
	lghi	%r6, 1024
	stg	%r6, -8(%r5)
	lghi	%r7, 21
	stg	%r7, 0(%r5)
	lghi	%r8, 85
	lghi	%r9, 199
	lgr	%r12, %r9
	csg	%r12, %r8, 0(%r5)
	lghi	%r12, 1
	brc	8, .L115
	lghi	%r12, 0
.L115:
	sllg	%r2, %r12,1(%r0)
	la	%r3, 1(%r2)
	cgfi	%r3, 1
	lghi	%r4, 1
	brc	8, .L116
	lghi	%r4, 0
.L116:
	sllg	%r5, %r4,1(%r0)
	la	%r3, 1(%r5)
	lgrl	%r2, camlCas_test.7@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L117:
	lg	%r3, 0(%r15)
	lg	%r8, 0(%r3)
	cgfi	%r8, 21
	lghi	%r9, 1
	brc	8, .L118
	lghi	%r9, 0
.L118:
	sllg	%r12, %r9,1(%r0)
	la	%r3, 1(%r12)
	lgrl	%r2, camlCas_test.8@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L119:
	lghi	%r4, 85
	lghi	%r5, 21
	lg	%r7, 0(%r15)
	lgr	%r6, %r5
	csg	%r6, %r4, 0(%r7)
	lghi	%r6, 1
	brc	8, .L120
	lghi	%r6, 0
.L120:
	sllg	%r7, %r6,1(%r0)
	la	%r8, 1(%r7)
	cgfi	%r8, 3
	lghi	%r9, 1
	brc	8, .L121
	lghi	%r9, 0
.L121:
	sllg	%r12, %r9,1(%r0)
	la	%r3, 1(%r12)
	lgrl	%r2, camlCas_test.9@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L122:
	lg	%r5, 0(%r15)
	lg	%r4, 0(%r5)
	cgfi	%r4, 85
	lghi	%r5, 1
	brc	8, .L123
	lghi	%r5, 0
.L123:
	sllg	%r6, %r5,1(%r0)
	la	%r3, 1(%r6)
	lgrl	%r2, camlCas_test.10@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L124:
	lghi	%r9, -13
	lghi	%r12, 85
	lg	%r6, 0(%r15)
	lgr	%r2, %r12
	csg	%r2, %r9, 0(%r6)
	lghi	%r2, 1
	brc	8, .L125
	lghi	%r2, 0
.L125:
	sllg	%r3, %r2,1(%r0)
	la	%r4, 1(%r3)
	cgfi	%r4, 3
	lghi	%r5, 1
	brc	8, .L126
	lghi	%r5, 0
.L126:
	sllg	%r6, %r5,1(%r0)
	la	%r3, 1(%r6)
	lgrl	%r2, camlCas_test.11@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L127:
	lg	%r7, 0(%r15)
	lg	%r9, 0(%r7)
	cgfi	%r9, -13
	lghi	%r12, 1
	brc	8, .L128
	lghi	%r12, 0
.L128:
	sllg	%r2, %r12,1(%r0)
	la	%r3, 1(%r2)
	lgrl	%r2, camlCas_test.12@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L129:
	lghi	%r5, 1
	lghi	%r6, -13
	lg	%r8, 0(%r15)
	lgr	%r7, %r6
	csg	%r7, %r5, 0(%r8)
	lghi	%r7, 1
	brc	8, .L130
	lghi	%r7, 0
.L130:
	sllg	%r8, %r7,1(%r0)
	la	%r9, 1(%r8)
	cgfi	%r9, 3
	lghi	%r12, 1
	brc	8, .L131
	lghi	%r12, 0
.L131:
	sllg	%r2, %r12,1(%r0)
	la	%r3, 1(%r2)
	lgrl	%r2, camlCas_test.13@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L132:
	lg	%r9, 0(%r15)
	lg	%r5, 0(%r9)
	cgfi	%r5, 1
	lghi	%r6, 1
	brc	8, .L133
	lghi	%r6, 0
.L133:
	sllg	%r7, %r6,1(%r0)
	la	%r3, 1(%r7)
	lgrl	%r2, camlCas_test.14@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L134:
	lghi	%r12, 1
	lghi	%r2, 1
	lg	%r4, 0(%r15)
	lgr	%r3, %r2
	csg	%r3, %r12, 0(%r4)
	lghi	%r3, 1
	brc	8, .L135
	lghi	%r3, 0
.L135:
	sllg	%r4, %r3,1(%r0)
	la	%r5, 1(%r4)
	cgfi	%r5, 3
	lghi	%r6, 1
	brc	8, .L136
	lghi	%r6, 0
.L136:
	sllg	%r7, %r6,1(%r0)
	la	%r3, 1(%r7)
	lgrl	%r2, camlCas_test.15@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L137:
	lg	%r2, 0(%r15)
	lg	%r12, 0(%r2)
	cgfi	%r12, 1
	lghi	%r2, 1
	brc	8, .L138
	lghi	%r2, 0
.L138:
	sllg	%r3, %r2,1(%r0)
	la	%r3, 1(%r3)
	lgrl	%r2, camlCas_test.16@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L139:
	lghi	%r6, 11
	lg	%r3, 0(%r15)
	lg	%r7, 0(%r3)
.L140:
	csg	%r7, %r6, 0(%r3)
	brc	4, .L140
	cgfi	%r7, 1
	lghi	%r8, 1
	brc	8, .L141
	lghi	%r8, 0
.L141:
	sllg	%r9, %r8,1(%r0)
	la	%r3, 1(%r9)
	lgrl	%r2, camlCas_test.17@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L142:
	lg	%r4, 0(%r15)
	lg	%r3, 0(%r4)
	cgfi	%r3, 11
	lghi	%r4, 1
	brc	8, .L143
	lghi	%r4, 0
.L143:
	sllg	%r5, %r4,1(%r0)
	la	%r3, 1(%r5)
	lgrl	%r2, camlCas_test.18@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L144:
	lghi	%r8, -1
	lg	%r5, 0(%r15)
	lg	%r9, 0(%r5)
.L145:
	csg	%r9, %r8, 0(%r5)
	brc	4, .L145
	cgfi	%r9, 11
	lghi	%r12, 1
	brc	8, .L146
	lghi	%r12, 0
.L146:
	sllg	%r2, %r12,1(%r0)
	la	%r3, 1(%r2)
	lgrl	%r2, camlCas_test.19@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L147:
	lg	%r6, 0(%r15)
	lg	%r5, 0(%r6)
	cgfi	%r5, -1
	lghi	%r6, 1
	brc	8, .L148
	lghi	%r6, 0
.L148:
	sllg	%r7, %r6,1(%r0)
	la	%r3, 1(%r7)
	lgrl	%r2, camlCas_test.20@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L149:
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L150:
	la	%r12, 8(%r11)
	stg	%r12, 0(%r15)
	lghi	%r2, 1024
	stg	%r2, -8(%r12)
	lghi	%r3, 3
	stg	%r3, 0(%r12)
	lghi	%r4, 1
	lghi	%r5, 3
	lgr	%r6, %r5
	csg	%r6, %r4, 0(%r12)
	lghi	%r6, 1
	brc	8, .L151
	lghi	%r6, 0
.L151:
	sllg	%r7, %r6,1(%r0)
	la	%r8, 1(%r7)
	cgfi	%r8, 3
	lghi	%r9, 1
	brc	8, .L152
	lghi	%r9, 0
.L152:
	sllg	%r12, %r9,1(%r0)
	la	%r3, 1(%r12)
	lgrl	%r2, camlCas_test.21@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L153:
	lg	%r7, 0(%r15)
	lg	%r4, 0(%r7)
	cgfi	%r4, 1
	lghi	%r5, 1
	brc	8, .L154
	lghi	%r5, 0
.L154:
	sllg	%r6, %r5,1(%r0)
	la	%r3, 1(%r6)
	lgrl	%r2, camlCas_test.22@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L155:
	lghi	%r9, 1
	lghi	%r12, 3
	lg	%r8, 0(%r15)
	lgr	%r2, %r12
	csg	%r2, %r9, 0(%r8)
	lghi	%r2, 1
	brc	8, .L156
	lghi	%r2, 0
.L156:
	sllg	%r3, %r2,1(%r0)
	la	%r4, 1(%r3)
	cgfi	%r4, 1
	lghi	%r5, 1
	brc	8, .L157
	lghi	%r5, 0
.L157:
	sllg	%r6, %r5,1(%r0)
	la	%r3, 1(%r6)
	lgrl	%r2, camlCas_test.23@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L158:
		lgrl	%r1, caml_alloc1@GOT
	basr	%r14, %r1

.L159:
	la	%r9, 8(%r11)
	stg	%r9, 0(%r15)
	lghi	%r12, 1024
	stg	%r12, -8(%r9)
	lghi	%r2, 3
	stg	%r2, 0(%r9)
	lghi	%r3, 5
	lghi	%r4, 3
	lgr	%r5, %r4
	csg	%r5, %r3, 0(%r9)
	lghi	%r5, 1
	brc	8, .L160
	lghi	%r5, 0
.L160:
	cgfi	%r5, 0
	brcl	8, .L110
	lgrl	%r2, camlCas_test.24@GOT
	brcl	15,.L109
.L110:
	lgrl	%r2, camlCas_test.25@GOT
.L109:
	lgrl	%r3, camlCas_test.24@GOT
	lgr	%r12, %r15
	.cfi_remember_state
	.cfi_def_cfa_register 12
	lg	%r15, 64(%r10)
	brasl	%r14, caml_string_equal@PLT
	lgr	%r15, %r12
	.cfi_restore_state
	lgr	%r3, %r2
	lgrl	%r2, camlCas_test.26@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L161:
	lghi	%r2, 1
	lghi	%r3, 3
	cgfi	%r3, 2001
	brcl	2, .L106
.L107:
	lghi	%r5, 5
	lghi	%r6, 5
	lg	%r9, 0(%r15)
	lgr	%r7, %r6
	csg	%r7, %r5, 0(%r9)
	lghi	%r7, 1
	brc	8, .L162
	lghi	%r7, 0
.L162:
	cgfi	%r7, 0
	brcl	8, .L108
	la	%r2, 2(%r2)
.L108:
	lgr	%r12, %r3
	la	%r3, 2(%r3)
	cgfi	%r12, 2001
	brcl	8, .L106
	clg	%r11, 0(%r10)
	brcl	10, .L107
	brcl	15, .L163
.L106:
	cgfi	%r2, 2001
	lghi	%r5, 1
	brc	8, .L165
	lghi	%r5, 0
.L165:
	sllg	%r6, %r5,1(%r0)
	la	%r3, 1(%r6)
	lgrl	%r2, camlCas_test.27@GOT
	brasl	%r14, camlCas_test.check_279@PLT
.L166:
	lgrl	%r2, camlCas_test.28@GOT
	brasl	%r14, camlStdlib.print_endline_369@PLT
.L167:
	lghi	%r2, 1
	lg	%r14, 8(%r15)
	la	%r15, 16(%r15)
	br	%r14
.L163:	lgrl	%r1, caml_call_gc@GOT
	basr	%r14, %r1
.L164:	brcl	15, .L107
.L112:
	lay	%r15, -8(%r15)
	.cfi_def_cfa_offset	8
	.cfi_escape 0x14, 15, 0
	stg	%r14, 0(%r15)
	.cfi_offset 14, -8
	lgfi	%r12, 34
	lgrl	%r1, caml_call_realloc_stack@GOT
	basr	%r14, %r1
	lg	%r14, 0(%r15)
	la	%r15, 8(%r15)
	.cfi_def_cfa_offset	0
	.cfi_escape 0x14, 15, 0
	brcl	15, .L113
	.cfi_endproc
	.size	camlCas_test.entry, . - camlCas_test.entry
	.section ".data"
	.align	8
	.text
	.globl	camlCas_test.code_end
	.type	camlCas_test.code_end, @object
camlCas_test.code_end:
	.long	0
	.section ".data"
	.align	8
	.globl	camlCas_test.data_end
	.type	camlCas_test.data_end, @object
	.quad	0
camlCas_test.data_end:
	.quad	0
	.section ".data"
	.align	8
	.globl	camlCas_test.frametable
	.type	camlCas_test.frametable, @object
camlCas_test.frametable:
	.quad	26
	.quad	.L167
	.short	17
	.short	0
	.align	4
	.long	(.L168 - .) + 0x0
	.align	8
	.quad	.L166
	.short	17
	.short	0
	.align	4
	.long	(.L169 - .) + 0x0
	.align	8
	.quad	.L164
	.short	18
	.short	1
	.short	0
	.byte	0
	.align	8
	.quad	.L161
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L170 - .) + 0x0
	.align	8
	.quad	.L159
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L158
	.short	17
	.short	0
	.align	4
	.long	(.L171 - .) + 0x0
	.align	8
	.quad	.L155
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L172 - .) + 0x0
	.align	8
	.quad	.L153
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L173 - .) + 0x0
	.align	8
	.quad	.L150
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L149
	.short	17
	.short	0
	.align	4
	.long	(.L174 - .) + 0x0
	.align	8
	.quad	.L147
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L175 - .) + 0x0
	.align	8
	.quad	.L144
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L176 - .) + 0x0
	.align	8
	.quad	.L142
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L177 - .) + 0x0
	.align	8
	.quad	.L139
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L178 - .) + 0x0
	.align	8
	.quad	.L137
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L179 - .) + 0x0
	.align	8
	.quad	.L134
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L180 - .) + 0x0
	.align	8
	.quad	.L132
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L181 - .) + 0x0
	.align	8
	.quad	.L129
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L182 - .) + 0x0
	.align	8
	.quad	.L127
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L183 - .) + 0x0
	.align	8
	.quad	.L124
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L184 - .) + 0x0
	.align	8
	.quad	.L122
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L185 - .) + 0x0
	.align	8
	.quad	.L119
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L186 - .) + 0x0
	.align	8
	.quad	.L117
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L187 - .) + 0x0
	.align	8
	.quad	.L114
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	8
	.quad	.L105
	.short	17
	.short	0
	.align	4
	.long	(.L188 - .) + 0x0
	.align	8
	.quad	.L104
	.short	17
	.short	1
	.short	0
	.align	4
	.long	(.L189 - .) + 0x0
	.align	8
	.align	4
.L189:
	.long	(.L191 - .) + 0x0
	.long	0xf84518
	.align	4
.L182:
	.long	(.L193 - .) + 0x0
	.long	0xa00938
	.align	4
.L175:
	.long	(.L193 - .) + 0x0
	.long	0xe80940
	.align	4
.L186:
	.long	(.L193 - .) + 0x0
	.long	0x700940
	.align	4
.L185:
	.long	(.L193 - .) + 0x0
	.long	0x800978
	.align	4
.L176:
	.long	(.L193 - .) + 0x0
	.long	0xe00908
	.align	4
.L187:
	.long	(.L193 - .) + 0x0
	.long	0x680990
	.align	4
.L179:
	.long	(.L193 - .) + 0x0
	.long	0xc00940
	.align	4
.L183:
	.long	(.L193 - .) + 0x0
	.long	0x980958
	.align	4
.L174:
	.long	(.L193 - .) + 0x0
	.long	0xf00918
	.align	4
.L169:
	.long	(.L193 - .) + 0x0
	.long	0x16008f0
	.align	4
.L168:
	.long	(.L193 - .) + 0x0
	.long	0x16808c0
	.align	4
.L181:
	.long	(.L193 - .) + 0x0
	.long	0xa80958
	.align	4
.L180:
	.long	(.L193 - .) + 0x0
	.long	0xb00938
	.align	4
.L172:
	.long	(.L193 - .) + 0x0
	.long	0x1100958
	.align	4
.L184:
	.long	(.L193 - .) + 0x0
	.long	0x880930
	.align	4
.L178:
	.long	(.L193 - .) + 0x0
	.long	0xc80938
	.align	4
.L188:
	.long	(.L194 - .) + 0x0
	.long	0x408a00
	.align	4
.L173:
	.long	(.L193 - .) + 0x0
	.long	0x1080978
	.align	4
.L177:
	.long	(.L193 - .) + 0x0
	.long	0xd80920
	.align	4
.L171:
	.long	(.L193 - .) + 0x0
	.long	0x11809a8
	.align	4
.L170:
	.long	(.L193 - .) + 0x0
	.long	0x1380920
.L192:
	.byte	99,97,115,95,116,101,115,116,46,109,108,0
.L190:
	.byte	112,114,105,110,116,102,46,109,108,0
	.align	4
.L194:
	.long	(.L192 - .) + 0x0
	.byte	67,97,115,95,116,101,115,116,46,99,104,101,99,107,0
	.align	4
.L191:
	.long	(.L190 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.align	4
.L193:
	.long	(.L192 - .) + 0x0
	.byte	67,97,115,95,116,101,115,116,0
	.align	8
	.size	camlCas_test.frametable, . - camlCas_test.frametable
	.section .note.GNU-stack,"",%progbits
