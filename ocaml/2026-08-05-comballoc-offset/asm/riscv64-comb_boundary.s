	.option pic
	.file ""
	.section .data
	.globl	camlComb_boundary.data_begin
	.type	camlComb_boundary.data_begin, @object
camlComb_boundary.data_begin:
	.text
	.globl	camlComb_boundary.code_begin
	.type	camlComb_boundary.code_begin, @object
camlComb_boundary.code_begin:
	.section .data
	.section .data
	.quad	4087
camlComb_boundary.23:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlComb_boundary.check_275
	.section .data
	.quad	3063
camlComb_boundary.22:
	.quad	camlComb_boundary.mk_323
	.quad	72057594037927941
	.section .data
	.quad	3840
	.globl	camlComb_boundary
	.type	camlComb_boundary, @object
camlComb_boundary:
	.quad	1
	.quad	1
	.quad	1
	.section .data
	.globl	camlComb_boundary.gc_roots
	.type	camlComb_boundary.gc_roots, @object
camlComb_boundary.gc_roots:
	.quad	camlComb_boundary
	.quad	0
	.globl	camlComb_boundary.check_275
	.type	camlComb_boundary.check_275, @function
	.text
	.align	2
camlComb_boundary.check_275:
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
	bltu	s10, t1, .L106
.L105:
	li	a2, 1
	beq	a1, a2, .L100
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	ret
.L100:
	la	a3, camlComb_boundary
	ld	a4, 0(a3)
	ld	a5, 0(a4)
	addi	a6, a5, 2
	fence	r, w
	sd	a6, 0(a4)
	sd	a0, 0(sp)
	la	a1, camlComb_boundary.6
	la	s3, camlStdlib
	ld	a0, 304(s3)
	call	camlStdlib__Printf.fprintf_433@plt
.L107:
	mv	a1, a0
	ld	s6, 0(a1)
	ld	a0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	jr	s6
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
	.size	camlComb_boundary.check_275, . - camlComb_boundary.check_275
	.globl	camlComb_boundary.mk_323
	.type	camlComb_boundary.mk_323, @function
	.text
	.align	2
camlComb_boundary.mk_323:
	.cfi_startproc
	addi	sp, sp, -8
	.cfi_adjust_cfa_offset	8
	sd	ra, 0(sp)
	.cfi_offset 1, -8
.L108:
	li	t0, -2056
	add	s10, s10, t0
	ld	t1, 0(s11)
	bltu	s10, t1, .L111
.L110:
	li	t0, 2048
	add	a2, s10, t0
	li	a3, 1024
	sd	a3, -8(a2)
	sd	a0, 0(a2)
	addi	a1, a2, -2040
	li	a4, 260096
	sd	a4, -8(a1)
	sd	a0, 0(a1)
	addi	a5, a0, 2
	sd	a5, 8(a1)
	addi	a6, a0, 4
	sd	a6, 16(a1)
	addi	a7, a0, 6
	sd	a7, 24(a1)
	addi	s2, a0, 8
	sd	s2, 32(a1)
	addi	s3, a0, 10
	sd	s3, 40(a1)
	addi	s4, a0, 12
	sd	s4, 48(a1)
	addi	s5, a0, 14
	sd	s5, 56(a1)
	addi	s6, a0, 16
	sd	s6, 64(a1)
	addi	s7, a0, 18
	sd	s7, 72(a1)
	addi	s8, a0, 20
	sd	s8, 80(a1)
	addi	s9, a0, 22
	sd	s9, 88(a1)
	addi	t2, a0, 24
	sd	t2, 96(a1)
	addi	t3, a0, 26
	sd	t3, 104(a1)
	addi	t4, a0, 28
	sd	t4, 112(a1)
	addi	t5, a0, 30
	sd	t5, 120(a1)
	addi	t6, a0, 32
	sd	t6, 128(a1)
	addi	s0, a0, 34
	sd	s0, 136(a1)
	addi	a3, a0, 36
	sd	a3, 144(a1)
	addi	a3, a0, 38
	sd	a3, 152(a1)
	addi	a3, a0, 40
	sd	a3, 160(a1)
	addi	a3, a0, 42
	sd	a3, 168(a1)
	addi	a4, a0, 44
	sd	a4, 176(a1)
	addi	a5, a0, 46
	sd	a5, 184(a1)
	addi	a6, a0, 48
	sd	a6, 192(a1)
	addi	a7, a0, 50
	sd	a7, 200(a1)
	addi	s2, a0, 52
	sd	s2, 208(a1)
	addi	s3, a0, 54
	sd	s3, 216(a1)
	addi	s4, a0, 56
	sd	s4, 224(a1)
	addi	s5, a0, 58
	sd	s5, 232(a1)
	addi	s6, a0, 60
	sd	s6, 240(a1)
	addi	s7, a0, 62
	sd	s7, 248(a1)
	addi	s8, a0, 64
	sd	s8, 256(a1)
	addi	s9, a0, 66
	sd	s9, 264(a1)
	addi	t2, a0, 68
	sd	t2, 272(a1)
	addi	t3, a0, 70
	sd	t3, 280(a1)
	addi	t4, a0, 72
	sd	t4, 288(a1)
	addi	t5, a0, 74
	sd	t5, 296(a1)
	addi	t6, a0, 76
	sd	t6, 304(a1)
	addi	s0, a0, 78
	sd	s0, 312(a1)
	addi	a3, a0, 80
	sd	a3, 320(a1)
	addi	a3, a0, 82
	sd	a3, 328(a1)
	addi	a3, a0, 84
	sd	a3, 336(a1)
	addi	a3, a0, 86
	sd	a3, 344(a1)
	addi	a4, a0, 88
	sd	a4, 352(a1)
	addi	a5, a0, 90
	sd	a5, 360(a1)
	addi	a6, a0, 92
	sd	a6, 368(a1)
	addi	a7, a0, 94
	sd	a7, 376(a1)
	addi	s2, a0, 96
	sd	s2, 384(a1)
	addi	s3, a0, 98
	sd	s3, 392(a1)
	addi	s4, a0, 100
	sd	s4, 400(a1)
	addi	s5, a0, 102
	sd	s5, 408(a1)
	addi	s6, a0, 104
	sd	s6, 416(a1)
	addi	s7, a0, 106
	sd	s7, 424(a1)
	addi	s8, a0, 108
	sd	s8, 432(a1)
	addi	s9, a0, 110
	sd	s9, 440(a1)
	addi	t2, a0, 112
	sd	t2, 448(a1)
	addi	t3, a0, 114
	sd	t3, 456(a1)
	addi	t4, a0, 116
	sd	t4, 464(a1)
	addi	t5, a0, 118
	sd	t5, 472(a1)
	addi	t6, a0, 120
	sd	t6, 480(a1)
	addi	s0, a0, 122
	sd	s0, 488(a1)
	addi	a3, a0, 124
	sd	a3, 496(a1)
	addi	a3, a0, 126
	sd	a3, 504(a1)
	addi	a3, a0, 128
	sd	a3, 512(a1)
	addi	a3, a0, 130
	sd	a3, 520(a1)
	addi	a4, a0, 132
	sd	a4, 528(a1)
	addi	a5, a0, 134
	sd	a5, 536(a1)
	addi	a6, a0, 136
	sd	a6, 544(a1)
	addi	a7, a0, 138
	sd	a7, 552(a1)
	addi	s2, a0, 140
	sd	s2, 560(a1)
	addi	s3, a0, 142
	sd	s3, 568(a1)
	addi	s4, a0, 144
	sd	s4, 576(a1)
	addi	s5, a0, 146
	sd	s5, 584(a1)
	addi	s6, a0, 148
	sd	s6, 592(a1)
	addi	s7, a0, 150
	sd	s7, 600(a1)
	addi	s8, a0, 152
	sd	s8, 608(a1)
	addi	s9, a0, 154
	sd	s9, 616(a1)
	addi	t2, a0, 156
	sd	t2, 624(a1)
	addi	t3, a0, 158
	sd	t3, 632(a1)
	addi	t4, a0, 160
	sd	t4, 640(a1)
	addi	t5, a0, 162
	sd	t5, 648(a1)
	addi	t6, a0, 164
	sd	t6, 656(a1)
	addi	s0, a0, 166
	sd	s0, 664(a1)
	addi	a3, a0, 168
	sd	a3, 672(a1)
	addi	a3, a0, 170
	sd	a3, 680(a1)
	addi	a3, a0, 172
	sd	a3, 688(a1)
	addi	a3, a0, 174
	sd	a3, 696(a1)
	addi	a4, a0, 176
	sd	a4, 704(a1)
	addi	a5, a0, 178
	sd	a5, 712(a1)
	addi	a6, a0, 180
	sd	a6, 720(a1)
	addi	a7, a0, 182
	sd	a7, 728(a1)
	addi	s2, a0, 184
	sd	s2, 736(a1)
	addi	s3, a0, 186
	sd	s3, 744(a1)
	addi	s4, a0, 188
	sd	s4, 752(a1)
	addi	s5, a0, 190
	sd	s5, 760(a1)
	addi	s6, a0, 192
	sd	s6, 768(a1)
	addi	s7, a0, 194
	sd	s7, 776(a1)
	addi	s8, a0, 196
	sd	s8, 784(a1)
	addi	s9, a0, 198
	sd	s9, 792(a1)
	addi	t2, a0, 200
	sd	t2, 800(a1)
	addi	t3, a0, 202
	sd	t3, 808(a1)
	addi	t4, a0, 204
	sd	t4, 816(a1)
	addi	t5, a0, 206
	sd	t5, 824(a1)
	addi	t6, a0, 208
	sd	t6, 832(a1)
	addi	s0, a0, 210
	sd	s0, 840(a1)
	addi	a3, a0, 212
	sd	a3, 848(a1)
	addi	a3, a0, 214
	sd	a3, 856(a1)
	addi	a3, a0, 216
	sd	a3, 864(a1)
	addi	a3, a0, 218
	sd	a3, 872(a1)
	addi	a4, a0, 220
	sd	a4, 880(a1)
	addi	a5, a0, 222
	sd	a5, 888(a1)
	addi	a6, a0, 224
	sd	a6, 896(a1)
	addi	a7, a0, 226
	sd	a7, 904(a1)
	addi	s2, a0, 228
	sd	s2, 912(a1)
	addi	s3, a0, 230
	sd	s3, 920(a1)
	addi	s4, a0, 232
	sd	s4, 928(a1)
	addi	s5, a0, 234
	sd	s5, 936(a1)
	addi	s6, a0, 236
	sd	s6, 944(a1)
	addi	s7, a0, 238
	sd	s7, 952(a1)
	addi	s8, a0, 240
	sd	s8, 960(a1)
	addi	s9, a0, 242
	sd	s9, 968(a1)
	addi	t2, a0, 244
	sd	t2, 976(a1)
	addi	t3, a0, 246
	sd	t3, 984(a1)
	addi	t4, a0, 248
	sd	t4, 992(a1)
	addi	t5, a0, 250
	sd	t5, 1000(a1)
	addi	t6, a0, 252
	sd	t6, 1008(a1)
	addi	s0, a0, 254
	sd	s0, 1016(a1)
	addi	a3, a0, 256
	sd	a3, 1024(a1)
	addi	a3, a0, 258
	sd	a3, 1032(a1)
	addi	a3, a0, 260
	sd	a3, 1040(a1)
	addi	a3, a0, 262
	sd	a3, 1048(a1)
	addi	a4, a0, 264
	sd	a4, 1056(a1)
	addi	a5, a0, 266
	sd	a5, 1064(a1)
	addi	a6, a0, 268
	sd	a6, 1072(a1)
	addi	a7, a0, 270
	sd	a7, 1080(a1)
	addi	s2, a0, 272
	sd	s2, 1088(a1)
	addi	s3, a0, 274
	sd	s3, 1096(a1)
	addi	s4, a0, 276
	sd	s4, 1104(a1)
	addi	s5, a0, 278
	sd	s5, 1112(a1)
	addi	s6, a0, 280
	sd	s6, 1120(a1)
	addi	s7, a0, 282
	sd	s7, 1128(a1)
	addi	s8, a0, 284
	sd	s8, 1136(a1)
	addi	s9, a0, 286
	sd	s9, 1144(a1)
	addi	t2, a0, 288
	sd	t2, 1152(a1)
	addi	t3, a0, 290
	sd	t3, 1160(a1)
	addi	t4, a0, 292
	sd	t4, 1168(a1)
	addi	t5, a0, 294
	sd	t5, 1176(a1)
	addi	t6, a0, 296
	sd	t6, 1184(a1)
	addi	s0, a0, 298
	sd	s0, 1192(a1)
	addi	a3, a0, 300
	sd	a3, 1200(a1)
	addi	a3, a0, 302
	sd	a3, 1208(a1)
	addi	a3, a0, 304
	sd	a3, 1216(a1)
	addi	a3, a0, 306
	sd	a3, 1224(a1)
	addi	a4, a0, 308
	sd	a4, 1232(a1)
	addi	a5, a0, 310
	sd	a5, 1240(a1)
	addi	a6, a0, 312
	sd	a6, 1248(a1)
	addi	a7, a0, 314
	sd	a7, 1256(a1)
	addi	s2, a0, 316
	sd	s2, 1264(a1)
	addi	s3, a0, 318
	sd	s3, 1272(a1)
	addi	s4, a0, 320
	sd	s4, 1280(a1)
	addi	s5, a0, 322
	sd	s5, 1288(a1)
	addi	s6, a0, 324
	sd	s6, 1296(a1)
	addi	s7, a0, 326
	sd	s7, 1304(a1)
	addi	s8, a0, 328
	sd	s8, 1312(a1)
	addi	s9, a0, 330
	sd	s9, 1320(a1)
	addi	t2, a0, 332
	sd	t2, 1328(a1)
	addi	t3, a0, 334
	sd	t3, 1336(a1)
	addi	t4, a0, 336
	sd	t4, 1344(a1)
	addi	t5, a0, 338
	sd	t5, 1352(a1)
	addi	t6, a0, 340
	sd	t6, 1360(a1)
	addi	s0, a0, 342
	sd	s0, 1368(a1)
	addi	a3, a0, 344
	sd	a3, 1376(a1)
	addi	a3, a0, 346
	sd	a3, 1384(a1)
	addi	a3, a0, 348
	sd	a3, 1392(a1)
	addi	a3, a0, 350
	sd	a3, 1400(a1)
	addi	a4, a0, 352
	sd	a4, 1408(a1)
	addi	a5, a0, 354
	sd	a5, 1416(a1)
	addi	a6, a0, 356
	sd	a6, 1424(a1)
	addi	a7, a0, 358
	sd	a7, 1432(a1)
	addi	s2, a0, 360
	sd	s2, 1440(a1)
	addi	s3, a0, 362
	sd	s3, 1448(a1)
	addi	s4, a0, 364
	sd	s4, 1456(a1)
	addi	s5, a0, 366
	sd	s5, 1464(a1)
	addi	s6, a0, 368
	sd	s6, 1472(a1)
	addi	s7, a0, 370
	sd	s7, 1480(a1)
	addi	s8, a0, 372
	sd	s8, 1488(a1)
	addi	s9, a0, 374
	sd	s9, 1496(a1)
	addi	t2, a0, 376
	sd	t2, 1504(a1)
	addi	t3, a0, 378
	sd	t3, 1512(a1)
	addi	t4, a0, 380
	sd	t4, 1520(a1)
	addi	t5, a0, 382
	sd	t5, 1528(a1)
	addi	t6, a0, 384
	sd	t6, 1536(a1)
	addi	s0, a0, 386
	sd	s0, 1544(a1)
	addi	a3, a0, 388
	sd	a3, 1552(a1)
	addi	a3, a0, 390
	sd	a3, 1560(a1)
	addi	a3, a0, 392
	sd	a3, 1568(a1)
	addi	a3, a0, 394
	sd	a3, 1576(a1)
	addi	a4, a0, 396
	sd	a4, 1584(a1)
	addi	a5, a0, 398
	sd	a5, 1592(a1)
	addi	a6, a0, 400
	sd	a6, 1600(a1)
	addi	a7, a0, 402
	sd	a7, 1608(a1)
	addi	s2, a0, 404
	sd	s2, 1616(a1)
	addi	s3, a0, 406
	sd	s3, 1624(a1)
	addi	s4, a0, 408
	sd	s4, 1632(a1)
	addi	s5, a0, 410
	sd	s5, 1640(a1)
	addi	s6, a0, 412
	sd	s6, 1648(a1)
	addi	s7, a0, 414
	sd	s7, 1656(a1)
	addi	s8, a0, 416
	sd	s8, 1664(a1)
	addi	s9, a0, 418
	sd	s9, 1672(a1)
	addi	t2, a0, 420
	sd	t2, 1680(a1)
	addi	t3, a0, 422
	sd	t3, 1688(a1)
	addi	t4, a0, 424
	sd	t4, 1696(a1)
	addi	t5, a0, 426
	sd	t5, 1704(a1)
	addi	t6, a0, 428
	sd	t6, 1712(a1)
	addi	s0, a0, 430
	sd	s0, 1720(a1)
	addi	a3, a0, 432
	sd	a3, 1728(a1)
	addi	a3, a0, 434
	sd	a3, 1736(a1)
	addi	a3, a0, 436
	sd	a3, 1744(a1)
	addi	a3, a0, 438
	sd	a3, 1752(a1)
	addi	a4, a0, 440
	sd	a4, 1760(a1)
	addi	a5, a0, 442
	sd	a5, 1768(a1)
	addi	a6, a0, 444
	sd	a6, 1776(a1)
	addi	a7, a0, 446
	sd	a7, 1784(a1)
	addi	s2, a0, 448
	sd	s2, 1792(a1)
	addi	s3, a0, 450
	sd	s3, 1800(a1)
	addi	s4, a0, 452
	sd	s4, 1808(a1)
	addi	s5, a0, 454
	sd	s5, 1816(a1)
	addi	s6, a0, 456
	sd	s6, 1824(a1)
	addi	s7, a0, 458
	sd	s7, 1832(a1)
	addi	s8, a0, 460
	sd	s8, 1840(a1)
	addi	s9, a0, 462
	sd	s9, 1848(a1)
	addi	t2, a0, 464
	sd	t2, 1856(a1)
	addi	t3, a0, 466
	sd	t3, 1864(a1)
	addi	t4, a0, 468
	sd	t4, 1872(a1)
	addi	t5, a0, 470
	sd	t5, 1880(a1)
	addi	t6, a0, 472
	sd	t6, 1888(a1)
	addi	s0, a0, 474
	sd	s0, 1896(a1)
	addi	a3, a0, 476
	sd	a3, 1904(a1)
	addi	a3, a0, 478
	sd	a3, 1912(a1)
	addi	a3, a0, 480
	sd	a3, 1920(a1)
	addi	a3, a0, 482
	sd	a3, 1928(a1)
	addi	a4, a0, 484
	sd	a4, 1936(a1)
	addi	a5, a0, 486
	sd	a5, 1944(a1)
	addi	a6, a0, 488
	sd	a6, 1952(a1)
	addi	a7, a0, 490
	sd	a7, 1960(a1)
	addi	s2, a0, 492
	sd	s2, 1968(a1)
	addi	s3, a0, 494
	sd	s3, 1976(a1)
	addi	s4, a0, 496
	sd	s4, 1984(a1)
	addi	s5, a0, 498
	sd	s5, 1992(a1)
	addi	s6, a0, 500
	sd	s6, 2000(a1)
	addi	s7, a0, 502
	sd	s7, 2008(a1)
	addi	s8, a0, 504
	sd	s8, 2016(a1)
	addi	s9, a0, 506
	sd	s9, 2024(a1)
	addi	s10, s10, -24
	ld	t1, 0(s11)
	bltu	s10, t1, .L114
.L113:
	addi	a0, s10, 8
	li	t3, 2048
	sd	t3, -8(a0)
	sd	a2, 0(a0)
	sd	a1, 8(a0)
	ld	ra, 0(sp)
	addi	sp, sp, 8
	.cfi_adjust_cfa_offset	-8
	ret
.L114:
	call	caml_call_gc@plt
.L112:
	j	.L113
.L111:
	call	caml_call_gc@plt
.L109:
	j	.L110
	.cfi_endproc
	.size	camlComb_boundary.mk_323, . - camlComb_boundary.mk_323
	.section .data
	.quad	2044
camlComb_boundary.9:
	.byte	98,32,108,97,115,116
	.space	1
	.byte	1
	.section .data
	.quad	2044
camlComb_boundary.8:
	.byte	98,32,102,105,114,115,116
	.byte	0
	.section .data
	.quad	2044
camlComb_boundary.7:
	.byte	97
	.space	6
	.byte	6
	.section .data
	.quad	2816
camlComb_boundary.6:
	.quad	camlComb_boundary.4
	.quad	camlComb_boundary.5
	.section .data
	.quad	3068
camlComb_boundary.5:
	.byte	70,65,73,76,32,37,115,10
	.space	7
	.byte	7
	.section .data
	.quad	2827
camlComb_boundary.4:
	.quad	camlComb_boundary.1
	.quad	camlComb_boundary.3
	.section .data
	.quad	2818
camlComb_boundary.3:
	.quad	1
	.quad	camlComb_boundary.2
	.section .data
	.quad	2816
camlComb_boundary.21:
	.quad	camlComb_boundary.19
	.quad	camlComb_boundary.20
	.section .data
	.quad	5116
camlComb_boundary.20:
	.byte	99,111,109,98,95,98,111,117,110,100,97,114,121,58,32,37
	.byte	100,32,102,97,105,108,117,114,101,115,10
	.space	4
	.byte	4
	.section .data
	.quad	2828
camlComb_boundary.2:
	.quad	21
	.quad	1
	.section .data
	.quad	2827
camlComb_boundary.19:
	.quad	camlComb_boundary.15
	.quad	camlComb_boundary.18
	.section .data
	.quad	4868
camlComb_boundary.18:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlComb_boundary.17
	.section .data
	.quad	2827
camlComb_boundary.17:
	.quad	camlComb_boundary.16
	.quad	1
	.section .data
	.quad	3068
camlComb_boundary.16:
	.byte	32,102,97,105,108,117,114,101,115,10
	.space	5
	.byte	5
	.section .data
	.quad	3068
camlComb_boundary.15:
	.byte	99,111,109,98,95,98,111,117,110,100,97,114,121,58,32
	.byte	0
	.section .data
	.quad	4092
camlComb_boundary.14:
	.byte	99,111,109,98,95,98,111,117,110,100,97,114,121,58,32,111
	.byte	107
	.space	6
	.byte	6
	.section .data
	.quad	3068
camlComb_boundary.13:
	.byte	98,32,108,101,110,103,116,104
	.space	7
	.byte	7
	.section .data
	.quad	3068
camlComb_boundary.12:
	.byte	97,32,108,101,110,103,116,104
	.space	7
	.byte	7
	.section .data
	.quad	3068
camlComb_boundary.11:
	.byte	98,32,117,110,100,105,115,116,117,114,98,101,100
	.space	2
	.byte	2
	.section .data
	.quad	3068
camlComb_boundary.10:
	.byte	97,32,97,102,116,101,114,32,119,114,105,116,101
	.space	2
	.byte	2
	.section .data
	.quad	2044
camlComb_boundary.1:
	.byte	70,65,73,76,32
	.space	2
	.byte	2
	.globl	camlComb_boundary.entry
	.type	camlComb_boundary.entry, @function
	.text
	.align	2
camlComb_boundary.entry:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 344
	bltu	sp, t1, .L123
.L124:
	addi	sp, sp, -32
	.cfi_adjust_cfa_offset	32
	sd	ra, 24(sp)
	.cfi_offset 1, -8
.L122:
	call	caml_alloc1@plt
.L125:
	addi	a1, s10, 8
	li	a2, 1024
	sd	a2, -8(a1)
	li	a2, 1
	sd	a2, 0(a1)
	la	a0, camlComb_boundary
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlComb_boundary.23
	la	a5, camlComb_boundary
	addi	a0, a5, 8
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a1, camlComb_boundary.22
	la	s2, camlComb_boundary
	addi	a0, s2, 16
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 8
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	li	a0, 1
	li	s7, 1000001
	bgt	a0, s7, .L117
	sd	a0, 8(sp)
.L118:
	call	camlComb_boundary.mk_323@plt
.L126:
	ld	t2, 8(a0)
	sd	t2, 16(sp)
	ld	t3, 0(a0)
	sd	t3, 0(sp)
	ld	t4, 8(sp)
	li	t5, 1023
	ld	t6, -8(t3)
	bleu	t6, t5, .L127
	ld	s0, 0(t3)
	sub	a0, s0, t4
	seqz	a0, a0
	slli	a1, a0, 1
	addi	a1, a1, 1
	la	a0, camlComb_boundary.7
	call	camlComb_boundary.check_275@plt
.L129:
	ld	a4, 8(sp)
	li	a5, 1023
	ld	a2, 16(sp)
	ld	a6, -8(a2)
	bleu	a6, a5, .L127
	ld	a7, 0(a2)
	sub	s2, a7, a4
	seqz	s2, s2
	slli	s3, s2, 1
	addi	a1, s3, 1
	la	a0, camlComb_boundary.8
	call	camlComb_boundary.check_275@plt
.L130:
	ld	s6, 8(sp)
	addi	s7, s6, 506
	li	s8, 260095
	ld	a4, 16(sp)
	ld	s9, -8(a4)
	bleu	s9, s8, .L127
	ld	t2, 2024(a4)
	sub	t3, t2, s7
	seqz	t3, t3
	slli	t4, t3, 1
	addi	a1, t4, 1
	la	a0, camlComb_boundary.9
	call	camlComb_boundary.check_275@plt
.L131:
	li	s0, 1023
	ld	a5, 0(sp)
	ld	a0, -8(a5)
	bleu	a0, s0, .L127
	li	a1, 46261
	fence	r, w
	sd	a1, 0(a5)
	li	a2, 46261
	ld	a5, 0(a5)
	sub	a6, a5, a2
	seqz	a6, a6
	slli	a7, a6, 1
	addi	a1, a7, 1
	la	a0, camlComb_boundary.10
	call	camlComb_boundary.check_275@plt
.L132:
	ld	s4, 8(sp)
	li	s5, 1023
	ld	a7, 16(sp)
	ld	s6, -8(a7)
	bleu	s6, s5, .L127
	ld	s7, 0(a7)
	bne	s7, s4, .L121
	addi	s9, s4, 506
	li	t2, 260095
	bleu	s6, t2, .L127
	ld	t4, 2024(a7)
	sub	t5, t4, s9
	seqz	t5, t5
	slli	t6, t5, 1
	addi	a1, t6, 1
	j	.L120
.L121:
	li	a1, 1
.L120:
	la	a0, camlComb_boundary.11
	call	camlComb_boundary.check_275@plt
.L133:
	li	a3, 3
	ld	s2, 0(sp)
	ld	a4, -8(s2)
	srli	a5, a4, 9
	ori	a6, a5, 1
	sub	a7, a6, a3
	seqz	a7, a7
	slli	s2, a7, 1
	addi	a1, s2, 1
	la	a0, camlComb_boundary.12
	call	camlComb_boundary.check_275@plt
.L134:
	li	s5, 509
	ld	s3, 16(sp)
	ld	s6, -8(s3)
	srli	s7, s6, 9
	ori	s8, s7, 1
	sub	s9, s8, s5
	seqz	s9, s9
	slli	t2, s9, 1
	addi	a1, t2, 1
	la	a0, camlComb_boundary.13
	call	camlComb_boundary.check_275@plt
.L135:
	ld	t5, 8(sp)
	andi	t6, t5, 2047
	li	s0, 1
	bne	t6, s0, .L119
	li	a0, 1
	la	t2, caml_gc_minor
	call	caml_c_call@plt
.L136:
.L119:
	ld	a0, 8(sp)
	mv	a1, a0
	addi	a0, a0, 2
	sd	a0, 8(sp)
	li	a4, 1000001
	beq	a1, a4, .L117
	ld	t1, 0(s11)
	bgeu	s10, t1, .L118
	j	.L138
.L117:
	li	a0, 1
	la	t2, caml_gc_full_major
	call	caml_c_call@plt
.L139:
	li	a6, 1
	la	a7, camlComb_boundary
	ld	s2, 0(a7)
	ld	s3, 0(s2)
	bne	s3, a6, .L116
	la	a0, camlComb_boundary.14
	call	camlStdlib.print_endline_369@plt
.L140:
	j	.L115
.L116:
	sd	s3, 0(sp)
	la	a1, camlComb_boundary.21
	la	t2, camlStdlib
	ld	a0, 304(t2)
	call	camlStdlib__Printf.fprintf_433@plt
.L141:
	mv	a1, a0
	ld	t5, 0(a1)
	ld	a0, 0(sp)
	jalr	t5
.L142:
.L115:
	li	a0, 1
	ld	ra, 24(sp)
	addi	sp, sp, 32
	.cfi_adjust_cfa_offset	-32
	ret
.L138:
	call	caml_call_gc@plt
.L137:
	j	.L118
.L127:
	call	caml_ml_array_bound_error@plt
.L128:
.L123:
	li	t1, 36
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L124
	.cfi_endproc
	.size	camlComb_boundary.entry, . - camlComb_boundary.entry
	.section .data
	.text
	.globl	camlComb_boundary.code_end
	.type	camlComb_boundary.code_end, @object
camlComb_boundary.code_end:
	.long	0
	.section .data
	.globl	camlComb_boundary.data_end
	.type	camlComb_boundary.data_end, @object
	.quad	0
camlComb_boundary.data_end:
	.quad	0
	.section .data
	.globl	camlComb_boundary.frametable
	.type	camlComb_boundary.frametable, @object
camlComb_boundary.frametable:
	.quad	20
	.quad	.L142
	.short	33
	.short	0
	.align	2
	.long	(.L143 - .) + 0x0
	.align	3
	.quad	.L141
	.short	33
	.short	0
	.align	2
	.long	(.L144 - .) + 0x0
	.align	3
	.quad	.L140
	.short	33
	.short	0
	.align	2
	.long	(.L145 - .) + 0x0
	.align	3
	.quad	.L139
	.short	33
	.short	0
	.align	2
	.long	(.L146 - .) + 0x0
	.align	3
	.quad	.L137
	.short	34
	.short	0
	.byte	0
	.align	3
	.quad	.L136
	.short	33
	.short	0
	.align	2
	.long	(.L147 - .) + 0x0
	.align	3
	.quad	.L135
	.short	33
	.short	0
	.align	2
	.long	(.L148 - .) + 0x0
	.align	3
	.quad	.L134
	.short	33
	.short	1
	.short	16
	.align	2
	.long	(.L149 - .) + 0x0
	.align	3
	.quad	.L133
	.short	33
	.short	2
	.short	0
	.short	16
	.align	2
	.long	(.L150 - .) + 0x0
	.align	3
	.quad	.L132
	.short	33
	.short	2
	.short	0
	.short	16
	.align	2
	.long	(.L151 - .) + 0x0
	.align	3
	.quad	.L131
	.short	33
	.short	2
	.short	0
	.short	16
	.align	2
	.long	(.L152 - .) + 0x0
	.align	3
	.quad	.L130
	.short	33
	.short	2
	.short	0
	.short	16
	.align	2
	.long	(.L153 - .) + 0x0
	.align	3
	.quad	.L129
	.short	33
	.short	2
	.short	0
	.short	16
	.align	2
	.long	(.L154 - .) + 0x0
	.align	3
	.quad	.L128
	.short	33
	.short	0
	.align	2
	.long	(.L155 - .) + 0x0
	.align	3
	.quad	.L126
	.short	33
	.short	0
	.align	2
	.long	(.L156 - .) + 0x0
	.align	3
	.quad	.L125
	.short	34
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L112
	.short	10
	.short	2
	.short	3
	.short	5
	.byte	1
	.byte	1
	.align	3
	.quad	.L109
	.short	10
	.short	0
	.byte	2
	.byte	253
	.byte	0
	.align	3
	.quad	.L107
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L144 - .) + 0x0
	.align	3
	.quad	.L104
	.short	18
	.short	1
	.short	1
	.byte	0
	.align	3
	.align	2
.L156:
	.long	(.L158 - .) + 0x0
	.long	0xc044a8
	.align	2
.L144:
	.long	(.L160 - .) + 0x0
	.long	0xf84518
	.align	2
.L148:
	.long	(.L158 - .) + 0x0
	.long	0x1081158
	.align	2
.L152:
	.long	(.L158 - .) + 0x0
	.long	0xd81130
	.align	2
.L143:
	.long	(.L158 - .) + 0x0
	.long	0x1301de8
	.align	2
.L151:
	.long	(.L158 - .) + 0x0
	.long	0xf01150
	.align	2
.L149:
	.long	(.L158 - .) + 0x0
	.long	0x1001148
	.align	2
.L147:
	.long	(.L158 - .) + 0x0
	.long	0x1107540
	.align	2
.L155:
	.long	(.L158 - .) + 0x0
	.long	0xc83ca0
	.align	2
.L154:
	.long	(.L158 - .) + 0x0
	.long	0xc810c8
	.align	2
.L150:
	.long	(.L158 - .) + 0x0
	.long	0xf811d0
	.align	2
.L153:
	.long	(.L158 - .) + 0x0
	.long	0xd010f8
	.align	2
.L146:
	.long	(.L158 - .) + 0x0
	.long	0x1200890
	.align	2
.L145:
	.long	(.L158 - .) + 0x0
	.long	0x12861c8
.L159:
	.byte	112,114,105,110,116,102,46,109,108,0
.L157:
	.byte	99,111,109,98,95,98,111,117,110,100,97,114,121,46,109,108
	.byte	0
	.align	2
.L160:
	.long	(.L159 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.align	2
.L158:
	.long	(.L157 - .) + 0x0
	.byte	67,111,109,98,95,98,111,117,110,100,97,114,121,0
	.align	3
	.size	camlComb_boundary.frametable, . - camlComb_boundary.frametable
	.section .note.GNU-stack,"",%progbits
