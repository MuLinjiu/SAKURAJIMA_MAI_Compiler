	.text

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_parameters:
		li	t0, 1008
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.main:
		li	t0, 0
		sw	t0, -16(s0)
		lw	t0, -16(s0)
		sw	t0, -12(s0)
		li	t0, 4
		sw	t0, -20(s0)
		li	t0, 8
		sw	t0, -24(s0)
		lw	t0, -20(s0)
		lw	t1, -24(s0)
		mul	t2, t0, t1
		sw	t2, -28(s0)
		li	t0, 4
		sw	t0, -32(s0)
		lw	t0, -28(s0)
		lw	t1, -32(s0)
		add	t2, t0, t1
		sw	t2, -36(s0)
		lw	t0, -36(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -40(s0)
		li	t0, 4
		sw	t0, -44(s0)
		lw	t0, -44(s0)
		lw	t1, -40(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -48(s0)
		li	t0, 4
		sw	t0, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		mul	t2, t0, t1
		sw	t2, -56(s0)
		lw	t0, -40(s0)
		lw	t1, -56(s0)
		add	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -60(s0)
		lw	t1, -64(s0)
		sw	t0, my_a, t1
		li	t0, 5
		sw	t0, -68(s0)
		li	t0, 8
		sw	t0, -72(s0)
		lw	t0, -68(s0)
		lw	t1, -72(s0)
		mul	t2, t0, t1
		sw	t2, -76(s0)
		li	t0, 4
		sw	t0, -80(s0)
		lw	t0, -76(s0)
		lw	t1, -80(s0)
		add	t2, t0, t1
		sw	t2, -84(s0)
		lw	t0, -84(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -88(s0)
		li	t0, 5
		sw	t0, -92(s0)
		lw	t0, -92(s0)
		lw	t1, -88(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -96(s0)
		li	t0, 4
		sw	t0, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		mul	t2, t0, t1
		sw	t2, -104(s0)
		lw	t0, -88(s0)
		lw	t1, -104(s0)
		add	t2, t0, t1
		sw	t2, -108(s0)
		lw	t0, -108(s0)
		lw	t1, -112(s0)
		sw	t0, my_b, t1
		li	t0, 0
		sw	t0, -116(s0)
		lw	t0, -116(s0)
		lw	t1, -120(s0)
		sw	t0, my_i, t1
		j	.main_16
.main_16:
		lw	t1, my_i
		sw	t1, -124(s0)
		li	t0, 4
		sw	t0, -128(s0)
		lw	t0, -124(s0)
		lw	t1, -128(s0)
		slt	t2, t0, t1
		sw	t2, -132(s0)
		lw	t0, -132(s0)
		bnez	t0, .main_19
		j	.main_33
.main_19:
		lw	t1, my_a
		sw	t1, -136(s0)
		lw	t1, my_i
		sw	t1, -140(s0)
		li	t0, 8
		sw	t0, -144(s0)
		lw	t0, -140(s0)
		lw	t1, -144(s0)
		mul	t2, t0, t1
		sw	t2, -148(s0)
		lw	t0, -136(s0)
		lw	t1, -148(s0)
		add	t2, t0, t1
		sw	t2, -152(s0)
		li	t0, 11
		sw	t0, -156(s0)
		li	t0, 4
		sw	t0, -160(s0)
		lw	t0, -156(s0)
		lw	t1, -160(s0)
		mul	t2, t0, t1
		sw	t2, -164(s0)
		li	t0, 4
		sw	t0, -168(s0)
		lw	t0, -164(s0)
		lw	t1, -168(s0)
		add	t2, t0, t1
		sw	t2, -172(s0)
		lw	t0, -172(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -176(s0)
		li	t0, 11
		sw	t0, -180(s0)
		lw	t0, -180(s0)
		lw	t1, -176(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -184(s0)
		li	t0, 4
		sw	t0, -188(s0)
		lw	t0, -184(s0)
		lw	t1, -188(s0)
		mul	t2, t0, t1
		sw	t2, -192(s0)
		lw	t0, -176(s0)
		lw	t1, -192(s0)
		add	t2, t0, t1
		sw	t2, -196(s0)
		lw	t0, -196(s0)
		lw	t1, -152(s0)
		sw	t0, 0(t1)
		j	.main_30
.main_30:
		lw	t1, my_i
		sw	t1, -200(s0)
		li	t0, 1
		sw	t0, -204(s0)
		lw	t0, -200(s0)
		lw	t1, -204(s0)
		add	t2, t0, t1
		sw	t2, -208(s0)
		lw	t0, -208(s0)
		lw	t1, -212(s0)
		sw	t0, my_i, t1
		j	.main_16
.main_33:
		li	t0, 0
		sw	t0, -216(s0)
		lw	t0, -216(s0)
		lw	t1, -220(s0)
		sw	t0, my_i, t1
		j	.main_34
.main_34:
		lw	t1, my_i
		sw	t1, -224(s0)
		li	t0, 4
		sw	t0, -228(s0)
		lw	t0, -224(s0)
		lw	t1, -228(s0)
		slt	t2, t0, t1
		sw	t2, -232(s0)
		lw	t0, -232(s0)
		bnez	t0, .main_37
		j	.main_55
.main_37:
		li	t0, 0
		sw	t0, -236(s0)
		lw	t0, -236(s0)
		lw	t1, -240(s0)
		sw	t0, my_j, t1
		j	.main_38
.main_38:
		lw	t1, my_j
		sw	t1, -244(s0)
		li	t0, 10
		sw	t0, -248(s0)
		lw	t0, -244(s0)
		lw	t1, -248(s0)
		slt	t2, t0, t1
		sw	t2, -252(s0)
		lw	t0, -252(s0)
		bnez	t0, .main_41
		j	.main_51
.main_41:
		lw	t1, my_a
		sw	t1, -256(s0)
		lw	t1, my_i
		sw	t1, -260(s0)
		li	t0, 8
		sw	t0, -264(s0)
		lw	t0, -260(s0)
		lw	t1, -264(s0)
		mul	t2, t0, t1
		sw	t2, -268(s0)
		lw	t0, -256(s0)
		lw	t1, -268(s0)
		add	t2, t0, t1
		sw	t2, -272(s0)
		lw	t0, -272(s0)
		lw	t1, 0(t0)
		sw	t1, -276(s0)
		lw	t1, my_j
		sw	t1, -280(s0)
		li	t0, 4
		sw	t0, -284(s0)
		lw	t0, -280(s0)
		lw	t1, -284(s0)
		mul	t2, t0, t1
		sw	t2, -288(s0)
		lw	t0, -276(s0)
		lw	t1, -288(s0)
		add	t2, t0, t1
		sw	t2, -292(s0)
		li	t0, 888
		sw	t0, -296(s0)
		lw	t0, -296(s0)
		lw	t1, -292(s0)
		sw	t0, 0(t1)
		j	.main_48
.main_48:
		lw	t1, my_j
		sw	t1, -300(s0)
		li	t0, 1
		sw	t0, -304(s0)
		lw	t0, -300(s0)
		lw	t1, -304(s0)
		add	t2, t0, t1
		sw	t2, -308(s0)
		lw	t0, -308(s0)
		lw	t1, -312(s0)
		sw	t0, my_j, t1
		j	.main_38
.main_51:
		j	.main_52
.main_52:
		lw	t1, my_i
		sw	t1, -316(s0)
		li	t0, 1
		sw	t0, -320(s0)
		lw	t0, -316(s0)
		lw	t1, -320(s0)
		add	t2, t0, t1
		sw	t2, -324(s0)
		lw	t0, -324(s0)
		lw	t1, -328(s0)
		sw	t0, my_i, t1
		j	.main_34
.main_55:
		li	t0, 0
		sw	t0, -332(s0)
		lw	t0, -332(s0)
		lw	t1, -336(s0)
		sw	t0, my_i, t1
		j	.main_56
.main_56:
		lw	t1, my_i
		sw	t1, -340(s0)
		li	t0, 5
		sw	t0, -344(s0)
		lw	t0, -340(s0)
		lw	t1, -344(s0)
		slt	t2, t0, t1
		sw	t2, -348(s0)
		lw	t0, -348(s0)
		bnez	t0, .main_59
		j	.main_75
.main_59:
		lw	t1, my_b
		sw	t1, -352(s0)
		lw	t1, my_i
		sw	t1, -356(s0)
		li	t0, 8
		sw	t0, -360(s0)
		lw	t0, -356(s0)
		lw	t1, -360(s0)
		mul	t2, t0, t1
		sw	t2, -364(s0)
		lw	t0, -352(s0)
		lw	t1, -364(s0)
		add	t2, t0, t1
		sw	t2, -368(s0)
		li	t0, 8
		sw	t0, -372(s0)
		lw	t0, -372(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -376(s0)
		lw	t0, -376(s0)
		mv	a0, t0
		call	rec
		lw	t0, -376(s0)
		lw	t1, -368(s0)
		sw	t0, 0(t1)
		lw	t1, my_b
		sw	t1, -380(s0)
		lw	t1, my_i
		sw	t1, -384(s0)
		li	t0, 8
		sw	t0, -388(s0)
		lw	t0, -384(s0)
		lw	t1, -388(s0)
		mul	t2, t0, t1
		sw	t2, -392(s0)
		lw	t0, -380(s0)
		lw	t1, -392(s0)
		add	t2, t0, t1
		sw	t2, -396(s0)
		lw	t0, -396(s0)
		lw	t1, 0(t0)
		sw	t1, -400(s0)
		lw	t0, -400(s0)
		addi	t1, t0, 0
		sw	t1, -404(s0)
		li	t0, 0
		sw	t0, -408(s0)
		li	t0, 1
		sw	t0, -412(s0)
		lw	t0, -408(s0)
		lw	t1, -412(s0)
		sub	t2, t0, t1
		sw	t2, -416(s0)
		lw	t0, -416(s0)
		lw	t1, -404(s0)
		sw	t0, 0(t1)
		j	.main_72
.main_72:
		lw	t1, my_i
		sw	t1, -420(s0)
		li	t0, 1
		sw	t0, -424(s0)
		lw	t0, -420(s0)
		lw	t1, -424(s0)
		add	t2, t0, t1
		sw	t2, -428(s0)
		lw	t0, -428(s0)
		lw	t1, -432(s0)
		sw	t0, my_i, t1
		j	.main_56
.main_75:
		lw	t1, my_a
		sw	t1, -436(s0)
		li	t0, 3
		sw	t0, -440(s0)
		li	t0, 8
		sw	t0, -444(s0)
		lw	t0, -440(s0)
		lw	t1, -444(s0)
		mul	t2, t0, t1
		sw	t2, -448(s0)
		lw	t0, -436(s0)
		lw	t1, -448(s0)
		add	t2, t0, t1
		sw	t2, -452(s0)
		lw	t0, -452(s0)
		lw	t1, 0(t0)
		sw	t1, -456(s0)
		li	t0, 9
		sw	t0, -460(s0)
		li	t0, 4
		sw	t0, -464(s0)
		lw	t0, -460(s0)
		lw	t1, -464(s0)
		mul	t2, t0, t1
		sw	t2, -468(s0)
		lw	t0, -456(s0)
		lw	t1, -468(s0)
		add	t2, t0, t1
		sw	t2, -472(s0)
		lw	t0, -472(s0)
		lw	t1, 0(t0)
		sw	t1, -476(s0)
		lw	t0, -476(s0)
		mv	a0, t0
		call	printNum
		li	t0, 0
		sw	t0, -480(s0)
		lw	t0, -480(s0)
		lw	t1, -484(s0)
		sw	t0, my_i, t1
		j	.main_82
.main_82:
		lw	t1, my_i
		sw	t1, -488(s0)
		li	t0, 3
		sw	t0, -492(s0)
		lw	t0, -492(s0)
		lw	t1, -488(s0)
		slt	t2, t0, t1
		sw	t2, -496(s0)
		lw	t0, -496(s0)
		xori	t1, t0, 1
		sw	t1, -496(s0)
		lw	t0, -496(s0)
		bnez	t0, .main_85
		j	.main_107
.main_85:
		li	t0, 0
		sw	t0, -500(s0)
		lw	t0, -500(s0)
		lw	t1, -504(s0)
		sw	t0, my_j, t1
		j	.main_86
.main_86:
		lw	t1, my_j
		sw	t1, -508(s0)
		li	t0, 9
		sw	t0, -512(s0)
		lw	t0, -512(s0)
		lw	t1, -508(s0)
		slt	t2, t0, t1
		sw	t2, -516(s0)
		lw	t0, -516(s0)
		xori	t1, t0, 1
		sw	t1, -516(s0)
		lw	t0, -516(s0)
		bnez	t0, .main_89
		j	.main_103
.main_89:
		lw	t1, my_a
		sw	t1, -520(s0)
		lw	t1, my_i
		sw	t1, -524(s0)
		li	t0, 8
		sw	t0, -528(s0)
		lw	t0, -524(s0)
		lw	t1, -528(s0)
		mul	t2, t0, t1
		sw	t2, -532(s0)
		lw	t0, -520(s0)
		lw	t1, -532(s0)
		add	t2, t0, t1
		sw	t2, -536(s0)
		lw	t0, -536(s0)
		lw	t1, 0(t0)
		sw	t1, -540(s0)
		lw	t1, my_j
		sw	t1, -544(s0)
		li	t0, 4
		sw	t0, -548(s0)
		lw	t0, -544(s0)
		lw	t1, -548(s0)
		mul	t2, t0, t1
		sw	t2, -552(s0)
		lw	t0, -540(s0)
		lw	t1, -552(s0)
		add	t2, t0, t1
		sw	t2, -556(s0)
		lw	t1, my_i
		sw	t1, -560(s0)
		li	t0, 10
		sw	t0, -564(s0)
		lw	t0, -560(s0)
		lw	t1, -564(s0)
		mul	t2, t0, t1
		sw	t2, -568(s0)
		lw	t1, my_j
		sw	t1, -572(s0)
		lw	t0, -568(s0)
		lw	t1, -572(s0)
		add	t2, t0, t1
		sw	t2, -576(s0)
		lw	t0, -576(s0)
		lw	t1, -556(s0)
		sw	t0, 0(t1)
		j	.main_100
.main_100:
		lw	t1, my_j
		sw	t1, -580(s0)
		li	t0, 1
		sw	t0, -584(s0)
		lw	t0, -580(s0)
		lw	t1, -584(s0)
		add	t2, t0, t1
		sw	t2, -588(s0)
		lw	t0, -588(s0)
		lw	t1, -592(s0)
		sw	t0, my_j, t1
		j	.main_86
.main_103:
		j	.main_104
.main_104:
		lw	t1, my_i
		sw	t1, -596(s0)
		li	t0, 1
		sw	t0, -600(s0)
		lw	t0, -596(s0)
		lw	t1, -600(s0)
		add	t2, t0, t1
		sw	t2, -604(s0)
		lw	t0, -604(s0)
		lw	t1, -608(s0)
		sw	t0, my_i, t1
		j	.main_82
.main_107:
		li	t0, 0
		sw	t0, -612(s0)
		lw	t0, -612(s0)
		lw	t1, -616(s0)
		sw	t0, my_i, t1
		j	.main_108
.main_108:
		lw	t1, my_i
		sw	t1, -620(s0)
		li	t0, 3
		sw	t0, -624(s0)
		lw	t0, -624(s0)
		lw	t1, -620(s0)
		slt	t2, t0, t1
		sw	t2, -628(s0)
		lw	t0, -628(s0)
		xori	t1, t0, 1
		sw	t1, -628(s0)
		lw	t0, -628(s0)
		bnez	t0, .main_111
		j	.main_131
.main_111:
		li	t0, 0
		sw	t0, -632(s0)
		lw	t0, -632(s0)
		lw	t1, -636(s0)
		sw	t0, my_j, t1
		j	.main_112
.main_112:
		lw	t1, my_j
		sw	t1, -640(s0)
		li	t0, 9
		sw	t0, -644(s0)
		lw	t0, -644(s0)
		lw	t1, -640(s0)
		slt	t2, t0, t1
		sw	t2, -648(s0)
		lw	t0, -648(s0)
		xori	t1, t0, 1
		sw	t1, -648(s0)
		lw	t0, -648(s0)
		bnez	t0, .main_115
		j	.main_127
.main_115:
		lw	t1, my_a
		sw	t1, -652(s0)
		lw	t1, my_i
		sw	t1, -656(s0)
		li	t0, 8
		sw	t0, -660(s0)
		lw	t0, -656(s0)
		lw	t1, -660(s0)
		mul	t2, t0, t1
		sw	t2, -664(s0)
		lw	t0, -652(s0)
		lw	t1, -664(s0)
		add	t2, t0, t1
		sw	t2, -668(s0)
		lw	t0, -668(s0)
		lw	t1, 0(t0)
		sw	t1, -672(s0)
		lw	t1, my_j
		sw	t1, -676(s0)
		li	t0, 4
		sw	t0, -680(s0)
		lw	t0, -676(s0)
		lw	t1, -680(s0)
		mul	t2, t0, t1
		sw	t2, -684(s0)
		lw	t0, -672(s0)
		lw	t1, -684(s0)
		add	t2, t0, t1
		sw	t2, -688(s0)
		lw	t0, -688(s0)
		lw	t1, 0(t0)
		sw	t1, -692(s0)
		lw	t0, -692(s0)
		mv	a0, t0
		call	printNum
		j	.main_124
.main_124:
		lw	t1, my_j
		sw	t1, -696(s0)
		li	t0, 1
		sw	t0, -700(s0)
		lw	t0, -696(s0)
		lw	t1, -700(s0)
		add	t2, t0, t1
		sw	t2, -704(s0)
		lw	t0, -704(s0)
		lw	t1, -708(s0)
		sw	t0, my_j, t1
		j	.main_112
.main_127:
		j	.main_128
.main_128:
		lw	t1, my_i
		sw	t1, -712(s0)
		li	t0, 1
		sw	t0, -716(s0)
		lw	t0, -712(s0)
		lw	t1, -716(s0)
		add	t2, t0, t1
		sw	t2, -720(s0)
		lw	t0, -720(s0)
		lw	t1, -724(s0)
		sw	t0, my_i, t1
		j	.main_108
.main_131:
		lw	t1, my_a
		sw	t1, -728(s0)
		li	t0, 2
		sw	t0, -732(s0)
		li	t0, 8
		sw	t0, -736(s0)
		lw	t0, -732(s0)
		lw	t1, -736(s0)
		mul	t2, t0, t1
		sw	t2, -740(s0)
		lw	t0, -728(s0)
		lw	t1, -740(s0)
		add	t2, t0, t1
		sw	t2, -744(s0)
		lw	t0, -744(s0)
		lw	t1, 0(t0)
		sw	t1, -748(s0)
		li	t0, 10
		sw	t0, -752(s0)
		li	t0, 4
		sw	t0, -756(s0)
		lw	t0, -752(s0)
		lw	t1, -756(s0)
		mul	t2, t0, t1
		sw	t2, -760(s0)
		lw	t0, -748(s0)
		lw	t1, -760(s0)
		add	t2, t0, t1
		sw	t2, -764(s0)
		li	t0, 0
		sw	t0, -768(s0)
		lw	t0, -768(s0)
		lw	t1, -764(s0)
		sw	t0, 0(t1)
		lw	t1, my_a
		sw	t1, -772(s0)
		li	t0, 2
		sw	t0, -776(s0)
		li	t0, 8
		sw	t0, -780(s0)
		lw	t0, -776(s0)
		lw	t1, -780(s0)
		mul	t2, t0, t1
		sw	t2, -784(s0)
		lw	t0, -772(s0)
		lw	t1, -784(s0)
		add	t2, t0, t1
		sw	t2, -788(s0)
		lw	t0, -788(s0)
		lw	t1, 0(t0)
		sw	t1, -792(s0)
		li	t0, 10
		sw	t0, -796(s0)
		li	t0, 4
		sw	t0, -800(s0)
		lw	t0, -796(s0)
		lw	t1, -800(s0)
		mul	t2, t0, t1
		sw	t2, -804(s0)
		lw	t0, -792(s0)
		lw	t1, -804(s0)
		add	t2, t0, t1
		sw	t2, -808(s0)
		lw	t0, -808(s0)
		lw	t1, 0(t0)
		sw	t1, -812(s0)
		lw	t0, -812(s0)
		mv	a0, t0
		call	printNum
		lw	t1, my_b
		sw	t1, -816(s0)
		li	t0, 0
		sw	t0, -820(s0)
		li	t0, 8
		sw	t0, -824(s0)
		lw	t0, -820(s0)
		lw	t1, -824(s0)
		mul	t2, t0, t1
		sw	t2, -828(s0)
		lw	t0, -816(s0)
		lw	t1, -828(s0)
		add	t2, t0, t1
		sw	t2, -832(s0)
		lw	t0, -832(s0)
		lw	t1, 0(t0)
		sw	t1, -836(s0)
		lw	t0, -836(s0)
		addi	t1, t0, 0
		sw	t1, -840(s0)
		li	t0, 0
		sw	t0, -844(s0)
		li	t0, 2
		sw	t0, -848(s0)
		lw	t0, -844(s0)
		lw	t1, -848(s0)
		sub	t2, t0, t1
		sw	t2, -852(s0)
		lw	t0, -852(s0)
		lw	t1, -840(s0)
		sw	t0, 0(t1)
		lw	t1, my_b
		sw	t1, -856(s0)
		lw	t1, my_a
		sw	t1, -860(s0)
		li	t0, 2
		sw	t0, -864(s0)
		li	t0, 8
		sw	t0, -868(s0)
		lw	t0, -864(s0)
		lw	t1, -868(s0)
		mul	t2, t0, t1
		sw	t2, -872(s0)
		lw	t0, -860(s0)
		lw	t1, -872(s0)
		add	t2, t0, t1
		sw	t2, -876(s0)
		lw	t0, -876(s0)
		lw	t1, 0(t0)
		sw	t1, -880(s0)
		li	t0, 10
		sw	t0, -884(s0)
		li	t0, 4
		sw	t0, -888(s0)
		lw	t0, -884(s0)
		lw	t1, -888(s0)
		mul	t2, t0, t1
		sw	t2, -892(s0)
		lw	t0, -880(s0)
		lw	t1, -892(s0)
		add	t2, t0, t1
		sw	t2, -896(s0)
		lw	t0, -896(s0)
		lw	t1, 0(t0)
		sw	t1, -900(s0)
		li	t0, 8
		sw	t0, -904(s0)
		lw	t0, -900(s0)
		lw	t1, -904(s0)
		mul	t2, t0, t1
		sw	t2, -908(s0)
		lw	t0, -856(s0)
		lw	t1, -908(s0)
		add	t2, t0, t1
		sw	t2, -912(s0)
		lw	t0, -912(s0)
		lw	t1, 0(t0)
		sw	t1, -916(s0)
		lw	t0, -916(s0)
		addi	t1, t0, 0
		sw	t1, -920(s0)
		li	t0, 0
		sw	t0, -924(s0)
		li	t0, 10
		sw	t0, -928(s0)
		lw	t0, -924(s0)
		lw	t1, -928(s0)
		sub	t2, t0, t1
		sw	t2, -932(s0)
		lw	t0, -932(s0)
		lw	t1, -920(s0)
		sw	t0, 0(t1)
		lw	t1, my_b
		sw	t1, -936(s0)
		li	t0, 0
		sw	t0, -940(s0)
		li	t0, 8
		sw	t0, -944(s0)
		lw	t0, -940(s0)
		lw	t1, -944(s0)
		mul	t2, t0, t1
		sw	t2, -948(s0)
		lw	t0, -936(s0)
		lw	t1, -948(s0)
		add	t2, t0, t1
		sw	t2, -952(s0)
		lw	t0, -952(s0)
		lw	t1, 0(t0)
		sw	t1, -956(s0)
		lw	t0, -956(s0)
		addi	t1, t0, 0
		sw	t1, -960(s0)
		lw	t0, -960(s0)
		lw	t1, 0(t0)
		sw	t1, -964(s0)
		lw	t0, -964(s0)
		mv	a0, t0
		call	printNum
		lw	t1, my_b
		sw	t1, -968(s0)
		li	t0, 1
		sw	t0, -972(s0)
		li	t0, 8
		sw	t0, -976(s0)
		lw	t0, -972(s0)
		lw	t1, -976(s0)
		mul	t2, t0, t1
		sw	t2, -980(s0)
		lw	t0, -968(s0)
		lw	t1, -980(s0)
		add	t2, t0, t1
		sw	t2, -984(s0)
		lw	t0, -984(s0)
		lw	t1, 0(t0)
		sw	t1, -988(s0)
		lw	t0, -988(s0)
		addi	t1, t0, 0
		sw	t1, -992(s0)
		lw	t0, -992(s0)
		lw	t1, 0(t0)
		sw	t1, -996(s0)
		lw	t0, -996(s0)
		mv	a0, t0
		call	printNum
		li	t0, 0
		sw	t0, -1000(s0)
		lw	t0, -1000(s0)
		sw	t0, -12(s0)
		j	.mainreturn_block
.mainreturn_block:
		lw	t1, -12(s0)
		sw	t1, -1004(s0)
		lw	t0, -1004(s0)
		mv	a0, t0
		li	t0, 1008
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	rec
	.p2align	2
	.type	rec,@function
rec:
.rec_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -16(s0)
.rec:
		lw	t0, -16(s0)
		sw	t0, -12(s0)
		j	.recreturn_block
.recreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	printNum
	.p2align	2
	.type	printNum,@function
printNum:
.printNum_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -16(s0)
.printNum:
		lw	t0, -16(s0)
		sw	t0, -12(s0)
		lw	t1, -12(s0)
		sw	t1, -20(s0)
		lw	t0, -20(s0)
		mv	a0, t0
		call	toString
		mv	t1, a0
		sw	t1, -24(s0)
		lw	t0, -24(s0)
		mv	a0, t0
		call	println
		j	.printNumreturn_block
.printNumreturn_block:
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.section	.sbss
	.type	my_a,@object
	.globl	my_a
	.p2align	2
my_a:
	.word	0
	.size	my_a, 8

	.section	.sbss
	.type	my_i,@object
	.globl	my_i
	.p2align	2
my_i:
	.word	0
	.size	my_i, 8

	.section	.sbss
	.type	my_j,@object
	.globl	my_j
	.p2align	2
my_j:
	.word	0
	.size	my_j, 8

	.section	.sbss
	.type	my_num,@object
	.globl	my_num
	.p2align	2
my_num:
	.word	0
	.size	my_num, 8

	.section	.sbss
	.type	my_c,@object
	.globl	my_c
	.p2align	2
my_c:
	.word	0
	.size	my_c, 8

	.section	.sbss
	.type	my_b,@object
	.globl	my_b
	.p2align	2
my_b:
	.word	0
	.size	my_b, 8


