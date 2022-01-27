	.text

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_parameters:
		li	t0, 768
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.main:
		li	t0, 500005
		sw	t0, -24(s0)
		li	t0, 4
		sw	t0, -28(s0)
		lw	t0, -24(s0)
		lw	t1, -28(s0)
		mul	t2, t0, t1
		sw	t2, -32(s0)
		li	t0, 4
		sw	t0, -36(s0)
		lw	t0, -32(s0)
		lw	t1, -36(s0)
		add	t2, t0, t1
		sw	t2, -40(s0)
		lw	t0, -40(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -44(s0)
		li	t0, 500005
		sw	t0, -48(s0)
		lw	t0, -48(s0)
		lw	t1, -44(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -52(s0)
		li	t0, 4
		sw	t0, -56(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		mul	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -44(s0)
		lw	t1, -60(s0)
		add	t2, t0, t1
		sw	t2, -64(s0)
		lw	t0, -64(s0)
		lw	t1, -68(s0)
		sw	t0, my_b, t1
		li	t0, 500005
		sw	t0, -72(s0)
		li	t0, 4
		sw	t0, -76(s0)
		lw	t0, -72(s0)
		lw	t1, -76(s0)
		mul	t2, t0, t1
		sw	t2, -80(s0)
		li	t0, 4
		sw	t0, -84(s0)
		lw	t0, -80(s0)
		lw	t1, -84(s0)
		add	t2, t0, t1
		sw	t2, -88(s0)
		lw	t0, -88(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -92(s0)
		li	t0, 500005
		sw	t0, -96(s0)
		lw	t0, -96(s0)
		lw	t1, -92(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -100(s0)
		li	t0, 4
		sw	t0, -104(s0)
		lw	t0, -100(s0)
		lw	t1, -104(s0)
		mul	t2, t0, t1
		sw	t2, -108(s0)
		lw	t0, -92(s0)
		lw	t1, -108(s0)
		add	t2, t0, t1
		sw	t2, -112(s0)
		lw	t0, -112(s0)
		lw	t1, -116(s0)
		sw	t0, my_now, t1
		li	t0, 500005
		sw	t0, -120(s0)
		li	t0, 4
		sw	t0, -124(s0)
		lw	t0, -120(s0)
		lw	t1, -124(s0)
		mul	t2, t0, t1
		sw	t2, -128(s0)
		li	t0, 4
		sw	t0, -132(s0)
		lw	t0, -128(s0)
		lw	t1, -132(s0)
		add	t2, t0, t1
		sw	t2, -136(s0)
		lw	t0, -136(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -140(s0)
		li	t0, 500005
		sw	t0, -144(s0)
		lw	t0, -144(s0)
		lw	t1, -140(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -148(s0)
		li	t0, 4
		sw	t0, -152(s0)
		lw	t0, -148(s0)
		lw	t1, -152(s0)
		mul	t2, t0, t1
		sw	t2, -156(s0)
		lw	t0, -140(s0)
		lw	t1, -156(s0)
		add	t2, t0, t1
		sw	t2, -160(s0)
		lw	t0, -160(s0)
		lw	t1, -164(s0)
		sw	t0, my_t, t1
		li	t0, 200005
		sw	t0, -168(s0)
		li	t0, 4
		sw	t0, -172(s0)
		lw	t0, -168(s0)
		lw	t1, -172(s0)
		mul	t2, t0, t1
		sw	t2, -176(s0)
		li	t0, 4
		sw	t0, -180(s0)
		lw	t0, -176(s0)
		lw	t1, -180(s0)
		add	t2, t0, t1
		sw	t2, -184(s0)
		lw	t0, -184(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -188(s0)
		li	t0, 200005
		sw	t0, -192(s0)
		lw	t0, -192(s0)
		lw	t1, -188(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -196(s0)
		li	t0, 4
		sw	t0, -200(s0)
		lw	t0, -196(s0)
		lw	t1, -200(s0)
		mul	t2, t0, t1
		sw	t2, -204(s0)
		lw	t0, -188(s0)
		lw	t1, -204(s0)
		add	t2, t0, t1
		sw	t2, -208(s0)
		lw	t0, -208(s0)
		lw	t1, -212(s0)
		sw	t0, my_a, t1
		li	t0, 500005
		sw	t0, -216(s0)
		li	t0, 4
		sw	t0, -220(s0)
		lw	t0, -216(s0)
		lw	t1, -220(s0)
		mul	t2, t0, t1
		sw	t2, -224(s0)
		li	t0, 4
		sw	t0, -228(s0)
		lw	t0, -224(s0)
		lw	t1, -228(s0)
		add	t2, t0, t1
		sw	t2, -232(s0)
		lw	t0, -232(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -236(s0)
		li	t0, 500005
		sw	t0, -240(s0)
		lw	t0, -240(s0)
		lw	t1, -236(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -244(s0)
		li	t0, 4
		sw	t0, -248(s0)
		lw	t0, -244(s0)
		lw	t1, -248(s0)
		mul	t2, t0, t1
		sw	t2, -252(s0)
		lw	t0, -236(s0)
		lw	t1, -252(s0)
		add	t2, t0, t1
		sw	t2, -256(s0)
		lw	t0, -256(s0)
		lw	t1, -260(s0)
		sw	t0, my_flag, t1
		li	t0, 500005
		sw	t0, -264(s0)
		li	t0, 8
		sw	t0, -268(s0)
		lw	t0, -264(s0)
		lw	t1, -268(s0)
		mul	t2, t0, t1
		sw	t2, -272(s0)
		li	t0, 4
		sw	t0, -276(s0)
		lw	t0, -272(s0)
		lw	t1, -276(s0)
		add	t2, t0, t1
		sw	t2, -280(s0)
		lw	t0, -280(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -284(s0)
		li	t0, 500005
		sw	t0, -288(s0)
		lw	t0, -288(s0)
		lw	t1, -284(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -292(s0)
		li	t0, 4
		sw	t0, -296(s0)
		lw	t0, -292(s0)
		lw	t1, -296(s0)
		mul	t2, t0, t1
		sw	t2, -300(s0)
		lw	t0, -284(s0)
		lw	t1, -300(s0)
		add	t2, t0, t1
		sw	t2, -304(s0)
		li	t0, 0
		sw	t0, -308(s0)
		lw	t0, -308(s0)
		sw	t0, -16(s0)
		j	.main_my_42_for_condition
.main_my_42_for_condition:
		lw	t1, -16(s0)
		sw	t1, -312(s0)
		li	t0, 500005
		sw	t0, -316(s0)
		lw	t0, -312(s0)
		lw	t1, -316(s0)
		slt	t2, t0, t1
		sw	t2, -320(s0)
		lw	t0, -320(s0)
		bnez	t0, .main_my_42_for_suite
		j	.main_my_42_for_out
.main_my_42_for_suite:
		lw	t1, -16(s0)
		sw	t1, -324(s0)
		li	t0, 8
		sw	t0, -328(s0)
		lw	t0, -324(s0)
		lw	t1, -328(s0)
		mul	t2, t0, t1
		sw	t2, -332(s0)
		lw	t0, -304(s0)
		lw	t1, -332(s0)
		add	t2, t0, t1
		sw	t2, -336(s0)
		li	t0, 80
		sw	t0, -340(s0)
		li	t0, 4
		sw	t0, -344(s0)
		lw	t0, -340(s0)
		lw	t1, -344(s0)
		mul	t2, t0, t1
		sw	t2, -348(s0)
		li	t0, 4
		sw	t0, -352(s0)
		lw	t0, -348(s0)
		lw	t1, -352(s0)
		add	t2, t0, t1
		sw	t2, -356(s0)
		lw	t0, -356(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -360(s0)
		li	t0, 80
		sw	t0, -364(s0)
		lw	t0, -364(s0)
		lw	t1, -360(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -368(s0)
		li	t0, 4
		sw	t0, -372(s0)
		lw	t0, -368(s0)
		lw	t1, -372(s0)
		mul	t2, t0, t1
		sw	t2, -376(s0)
		lw	t0, -360(s0)
		lw	t1, -376(s0)
		add	t2, t0, t1
		sw	t2, -380(s0)
		lw	t0, -380(s0)
		lw	t1, -336(s0)
		sw	t0, 0(t1)
		j	.main_my_42_for_finish
.main_my_42_for_finish:
		lw	t1, -16(s0)
		sw	t1, -384(s0)
		li	t0, 1
		sw	t0, -388(s0)
		lw	t0, -384(s0)
		lw	t1, -388(s0)
		add	t2, t0, t1
		sw	t2, -392(s0)
		lw	t0, -392(s0)
		sw	t0, -16(s0)
		j	.main_my_42_for_condition
.main_my_42_for_out:
		li	t0, 0
		sw	t0, -396(s0)
		lw	t0, -396(s0)
		sw	t0, -20(s0)
		lw	t0, -304(s0)
		lw	t1, -400(s0)
		sw	t0, my_s, t1
		li	t0, 500005
		sw	t0, -404(s0)
		li	t0, 4
		sw	t0, -408(s0)
		lw	t0, -404(s0)
		lw	t1, -408(s0)
		mul	t2, t0, t1
		sw	t2, -412(s0)
		li	t0, 4
		sw	t0, -416(s0)
		lw	t0, -412(s0)
		lw	t1, -416(s0)
		add	t2, t0, t1
		sw	t2, -420(s0)
		lw	t0, -420(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -424(s0)
		li	t0, 500005
		sw	t0, -428(s0)
		lw	t0, -428(s0)
		lw	t1, -424(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -432(s0)
		li	t0, 4
		sw	t0, -436(s0)
		lw	t0, -432(s0)
		lw	t1, -436(s0)
		mul	t2, t0, t1
		sw	t2, -440(s0)
		lw	t0, -424(s0)
		lw	t1, -440(s0)
		add	t2, t0, t1
		sw	t2, -444(s0)
		lw	t0, -444(s0)
		lw	t1, -448(s0)
		sw	t0, my_sum, t1
		li	t0, 2
		sw	t0, -452(s0)
		li	t0, 14
		sw	t0, -456(s0)
		lw	t0, -452(s0)
		lw	t1, -456(s0)
		sll	t2, t0, t1
		sw	t2, -460(s0)
		li	t0, 7
		sw	t0, -464(s0)
		lw	t0, -460(s0)
		lw	t1, -464(s0)
		sub	t2, t0, t1
		sw	t2, -468(s0)
		lw	t0, -468(s0)
		lw	t1, -472(s0)
		sw	t0, my_MOD, t1
		call	getInt
		mv	t1, a0
		sw	t1, -476(s0)
		lw	t0, -476(s0)
		lw	t1, -480(s0)
		sw	t0, my_n, t1
		call	getInt
		mv	t1, a0
		sw	t1, -484(s0)
		lw	t0, -484(s0)
		lw	t1, -488(s0)
		sw	t0, my_m, t1
		call	getInt
		mv	t1, a0
		sw	t1, -492(s0)
		lw	t0, -492(s0)
		lw	t1, -496(s0)
		sw	t0, my_p, t1
		li	t0, 1
		sw	t0, -500(s0)
		lw	t0, -500(s0)
		sw	t0, -12(s0)
		li	t0, 1
		sw	t0, -504(s0)
		lw	t0, -504(s0)
		sw	t0, -12(s0)
		j	.main_70
.main_70:
		lw	t1, -12(s0)
		sw	t1, -508(s0)
		lw	t1, my_n
		sw	t1, -512(s0)
		lw	t0, -512(s0)
		lw	t1, -508(s0)
		slt	t2, t0, t1
		sw	t2, -516(s0)
		lw	t0, -516(s0)
		xori	t1, t0, 1
		sw	t1, -516(s0)
		lw	t0, -516(s0)
		bnez	t0, .main_74
		j	.main_83
.main_74:
		lw	t1, my_a
		sw	t1, -520(s0)
		lw	t1, -12(s0)
		sw	t1, -524(s0)
		li	t0, 4
		sw	t0, -528(s0)
		lw	t0, -524(s0)
		lw	t1, -528(s0)
		mul	t2, t0, t1
		sw	t2, -532(s0)
		lw	t0, -520(s0)
		lw	t1, -532(s0)
		add	t2, t0, t1
		sw	t2, -536(s0)
		lw	t1, my_p
		sw	t1, -540(s0)
		li	t0, 0
		sw	t0, -544(s0)
		lw	t0, -544(s0)
		mv	a0, t0
		lw	t0, -540(s0)
		mv	a1, t0
		call	RandRange
		mv	t1, a0
		sw	t1, -548(s0)
		lw	t0, -548(s0)
		lw	t1, -536(s0)
		sw	t0, 0(t1)
		j	.main_80
.main_80:
		lw	t1, -12(s0)
		sw	t1, -552(s0)
		li	t0, 1
		sw	t0, -556(s0)
		lw	t0, -552(s0)
		lw	t1, -556(s0)
		add	t2, t0, t1
		sw	t2, -560(s0)
		lw	t0, -560(s0)
		sw	t0, -12(s0)
		j	.main_70
.main_83:
		call	init
		lw	t1, my_n
		sw	t1, -564(s0)
		li	t0, 1
		sw	t0, -568(s0)
		lw	t0, -568(s0)
		mv	a0, t0
		li	t0, 1
		sw	t0, -572(s0)
		lw	t0, -572(s0)
		mv	a1, t0
		lw	t0, -564(s0)
		mv	a2, t0
		call	build
		j	.main_87
.main_87:
		lw	t1, my_m
		sw	t1, -576(s0)
		li	t0, 0
		sw	t0, -580(s0)
		lw	t0, -580(s0)
		lw	t1, -576(s0)
		slt	t2, t0, t1
		sw	t2, -584(s0)
		lw	t0, -584(s0)
		bnez	t0, .main_90
		j	.main_123
.main_90:
		call	Rand
		mv	t1, a0
		sw	t1, -588(s0)
		li	t0, 2
		sw	t0, -592(s0)
		lw	t0, -588(s0)
		lw	t1, -592(s0)
		rem	t2, t0, t1
		sw	t2, -596(s0)
		lw	t0, -596(s0)
		lw	t1, -600(s0)
		sw	t0, my_op, t1
		lw	t1, my_n
		sw	t1, -604(s0)
		li	t0, 1
		sw	t0, -608(s0)
		lw	t0, -608(s0)
		mv	a0, t0
		lw	t0, -604(s0)
		mv	a1, t0
		call	RandRange
		mv	t1, a0
		sw	t1, -612(s0)
		lw	t0, -612(s0)
		lw	t1, -616(s0)
		sw	t0, my_pl, t1
		lw	t1, my_n
		sw	t1, -620(s0)
		li	t0, 1
		sw	t0, -624(s0)
		lw	t0, -624(s0)
		mv	a0, t0
		lw	t0, -620(s0)
		mv	a1, t0
		call	RandRange
		mv	t1, a0
		sw	t1, -628(s0)
		lw	t0, -628(s0)
		lw	t1, -632(s0)
		sw	t0, my_pr, t1
		j	.main_97
.main_97:
		lw	t1, my_pr
		sw	t1, -636(s0)
		lw	t1, my_pl
		sw	t1, -640(s0)
		lw	t0, -640(s0)
		lw	t1, -636(s0)
		slt	t2, t0, t1
		sw	t2, -644(s0)
		lw	t0, -644(s0)
		xori	t1, t0, 1
		sw	t1, -644(s0)
		lw	t0, -644(s0)
		bnez	t0, .main_101
		j	.main_104
.main_101:
		lw	t1, my_n
		sw	t1, -648(s0)
		li	t0, 1
		sw	t0, -652(s0)
		lw	t0, -652(s0)
		mv	a0, t0
		lw	t0, -648(s0)
		mv	a1, t0
		call	RandRange
		mv	t1, a0
		sw	t1, -656(s0)
		lw	t0, -656(s0)
		lw	t1, -660(s0)
		sw	t0, my_pr, t1
		j	.main_97
.main_104:
		lw	t1, my_op
		sw	t1, -664(s0)
		li	t0, 0
		sw	t0, -668(s0)
		lw	t0, -664(s0)
		lw	t1, -668(s0)
		xor	t2, t0, t1
		sw	t2, -672(s0)
		lw	t0, -672(s0)
		sltiu	t1, t0, 1
		sw	t1, -672(s0)
		lw	t0, -672(s0)
		bnez	t0, .main_107
		j	.main_110
.main_107:
		lw	t1, my_n
		sw	t1, -676(s0)
		li	t0, 1
		sw	t0, -680(s0)
		lw	t0, -680(s0)
		mv	a0, t0
		li	t0, 1
		sw	t0, -684(s0)
		lw	t0, -684(s0)
		mv	a1, t0
		lw	t0, -676(s0)
		mv	a2, t0
		call	update
		j	.main_110
.main_110:
		lw	t1, my_op
		sw	t1, -688(s0)
		li	t0, 1
		sw	t0, -692(s0)
		lw	t0, -688(s0)
		lw	t1, -692(s0)
		xor	t2, t0, t1
		sw	t2, -696(s0)
		lw	t0, -696(s0)
		sltiu	t1, t0, 1
		sw	t1, -696(s0)
		lw	t0, -696(s0)
		bnez	t0, .main_113
		j	.main_120
.main_113:
		lw	t1, my_ans
		sw	t1, -700(s0)
		lw	t1, my_n
		sw	t1, -704(s0)
		li	t0, 1
		sw	t0, -708(s0)
		lw	t0, -708(s0)
		mv	a0, t0
		li	t0, 1
		sw	t0, -712(s0)
		lw	t0, -712(s0)
		mv	a1, t0
		lw	t0, -704(s0)
		mv	a2, t0
		call	query
		mv	t1, a0
		sw	t1, -716(s0)
		lw	t0, -700(s0)
		lw	t1, -716(s0)
		add	t2, t0, t1
		sw	t2, -720(s0)
		lw	t1, my_MOD
		sw	t1, -724(s0)
		lw	t0, -720(s0)
		lw	t1, -724(s0)
		rem	t2, t0, t1
		sw	t2, -728(s0)
		lw	t0, -728(s0)
		lw	t1, -732(s0)
		sw	t0, my_ans, t1
		j	.main_120
.main_120:
		lw	t1, my_m
		sw	t1, -736(s0)
		li	t0, -1
		sw	t0, -740(s0)
		lw	t0, -736(s0)
		lw	t1, -740(s0)
		add	t2, t0, t1
		sw	t2, -744(s0)
		lw	t0, -744(s0)
		lw	t1, -748(s0)
		sw	t0, my_m, t1
		j	.main_87
.main_123:
		lw	t1, my_ans
		sw	t1, -752(s0)
		lw	t0, -752(s0)
		mv	a0, t0
		call	toString
		mv	t1, a0
		sw	t1, -756(s0)
		lw	t0, -756(s0)
		mv	a0, t0
		call	print
		li	t0, 0
		sw	t0, -760(s0)
		lw	t0, -760(s0)
		sw	t0, -20(s0)
		j	.mainreturn_block
.mainreturn_block:
		lw	t1, -20(s0)
		sw	t1, -764(s0)
		lw	t0, -764(s0)
		mv	a0, t0
		li	t0, 768
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	square
	.p2align	2
	.type	square,@function
square:
.square_parameters:
		li	t0, 64
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
.square:
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -24(s0)
		lw	t1, my_p
		sw	t1, -28(s0)
		lw	t0, -24(s0)
		lw	t1, -28(s0)
		rem	t2, t0, t1
		sw	t2, -32(s0)
		lw	t1, -16(s0)
		sw	t1, -36(s0)
		lw	t1, my_p
		sw	t1, -40(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		rem	t2, t0, t1
		sw	t2, -44(s0)
		lw	t0, -32(s0)
		lw	t1, -44(s0)
		mul	t2, t0, t1
		sw	t2, -48(s0)
		lw	t0, -48(s0)
		sw	t0, -12(s0)
		j	.squarereturn_block
.squarereturn_block:
		lw	t1, -12(s0)
		sw	t1, -52(s0)
		lw	t0, -52(s0)
		mv	a0, t0
		li	t0, 64
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	gcd
	.p2align	2
	.type	gcd,@function
gcd:
.gcd_parameters:
		li	t0, 96
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -24(s0)
		mv	t1, a1
		sw	t1, -28(s0)
.gcd:
		lw	t0, -24(s0)
		sw	t0, -16(s0)
		lw	t0, -28(s0)
		sw	t0, -20(s0)
		lw	t1, -20(s0)
		sw	t1, -32(s0)
		li	t0, 0
		sw	t0, -36(s0)
		lw	t0, -32(s0)
		lw	t1, -36(s0)
		xor	t2, t0, t1
		sw	t2, -40(s0)
		lw	t0, -40(s0)
		sltiu	t1, t0, 1
		sw	t1, -40(s0)
		lw	t0, -40(s0)
		bnez	t0, .gcd_8
		j	.gcd_10
.gcd_8:
		lw	t1, -16(s0)
		sw	t1, -44(s0)
		lw	t0, -44(s0)
		sw	t0, -12(s0)
		j	.gcdreturn_block
.gcd_10:
		lw	t1, -16(s0)
		sw	t1, -48(s0)
		lw	t1, -20(s0)
		sw	t1, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		slt	t2, t0, t1
		sw	t2, -56(s0)
		lw	t0, -56(s0)
		bnez	t0, .gcd_14
		j	.gcd_18
.gcd_14:
		lw	t1, -20(s0)
		sw	t1, -60(s0)
		lw	t1, -16(s0)
		sw	t1, -64(s0)
		lw	t0, -60(s0)
		mv	a0, t0
		lw	t0, -64(s0)
		mv	a1, t0
		call	gcd
		mv	t1, a0
		sw	t1, -68(s0)
		lw	t0, -68(s0)
		sw	t0, -12(s0)
		j	.gcdreturn_block
.gcd_18:
		lw	t1, -20(s0)
		sw	t1, -72(s0)
		lw	t1, -16(s0)
		sw	t1, -76(s0)
		lw	t1, -20(s0)
		sw	t1, -80(s0)
		lw	t0, -76(s0)
		lw	t1, -80(s0)
		rem	t2, t0, t1
		sw	t2, -84(s0)
		lw	t0, -72(s0)
		mv	a0, t0
		lw	t0, -84(s0)
		mv	a1, t0
		call	gcd
		mv	t1, a0
		sw	t1, -88(s0)
		lw	t0, -88(s0)
		sw	t0, -12(s0)
		j	.gcdreturn_block
.gcd_24:
		j	.gcdreturn_block
.gcdreturn_block:
		lw	t1, -12(s0)
		sw	t1, -92(s0)
		lw	t0, -92(s0)
		mv	a0, t0
		li	t0, 96
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	lcm
	.p2align	2
	.type	lcm,@function
lcm:
.lcm_parameters:
		li	t0, 64
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -24(s0)
		mv	t1, a1
		sw	t1, -28(s0)
.lcm:
		lw	t0, -24(s0)
		sw	t0, -16(s0)
		lw	t0, -28(s0)
		sw	t0, -20(s0)
		lw	t1, -16(s0)
		sw	t1, -32(s0)
		lw	t1, -16(s0)
		sw	t1, -36(s0)
		lw	t1, -20(s0)
		sw	t1, -40(s0)
		lw	t0, -36(s0)
		mv	a0, t0
		lw	t0, -40(s0)
		mv	a1, t0
		call	gcd
		mv	t1, a0
		sw	t1, -44(s0)
		lw	t0, -32(s0)
		lw	t1, -44(s0)
		div	t2, t0, t1
		sw	t2, -48(s0)
		lw	t1, -20(s0)
		sw	t1, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		mul	t2, t0, t1
		sw	t2, -56(s0)
		lw	t0, -56(s0)
		sw	t0, -12(s0)
		j	.lcmreturn_block
.lcmreturn_block:
		lw	t1, -12(s0)
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		mv	a0, t0
		li	t0, 64
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	Rand
	.p2align	2
	.type	Rand,@function
Rand:
.Rand_parameters:
		li	t0, 128
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.Rand:
		li	t0, 1
		sw	t0, -20(s0)
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		li	t0, 1
		sw	t0, -24(s0)
		lw	t0, -24(s0)
		sw	t0, -16(s0)
		j	.Rand_3
.Rand_3:
		lw	t1, -16(s0)
		sw	t1, -28(s0)
		li	t0, 3
		sw	t0, -32(s0)
		lw	t0, -28(s0)
		lw	t1, -32(s0)
		slt	t2, t0, t1
		sw	t2, -36(s0)
		lw	t0, -36(s0)
		bnez	t0, .Rand_6
		j	.Rand_17
.Rand_6:
		lw	t1, my_no
		sw	t1, -40(s0)
		lw	t1, my_aa
		sw	t1, -44(s0)
		lw	t0, -40(s0)
		lw	t1, -44(s0)
		mul	t2, t0, t1
		sw	t2, -48(s0)
		lw	t1, my_bb
		sw	t1, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		add	t2, t0, t1
		sw	t2, -56(s0)
		lw	t1, my_MOD
		sw	t1, -60(s0)
		lw	t0, -56(s0)
		lw	t1, -60(s0)
		rem	t2, t0, t1
		sw	t2, -64(s0)
		lw	t0, -64(s0)
		lw	t1, -68(s0)
		sw	t0, my_no, t1
		j	.Rand_14
.Rand_14:
		lw	t1, -16(s0)
		sw	t1, -72(s0)
		li	t0, 1
		sw	t0, -76(s0)
		lw	t0, -72(s0)
		lw	t1, -76(s0)
		add	t2, t0, t1
		sw	t2, -80(s0)
		lw	t0, -80(s0)
		sw	t0, -16(s0)
		j	.Rand_3
.Rand_17:
		lw	t1, my_no
		sw	t1, -84(s0)
		li	t0, 0
		sw	t0, -88(s0)
		lw	t0, -84(s0)
		lw	t1, -88(s0)
		slt	t2, t0, t1
		sw	t2, -92(s0)
		lw	t0, -92(s0)
		bnez	t0, .Rand_20
		j	.Rand_23
.Rand_20:
		lw	t1, my_no
		sw	t1, -96(s0)
		li	t0, 0
		sw	t0, -100(s0)
		lw	t0, -100(s0)
		lw	t1, -96(s0)
		sub	t2, t0, t1
		sw	t2, -104(s0)
		lw	t0, -104(s0)
		lw	t1, -108(s0)
		sw	t0, my_no, t1
		j	.Rand_23
.Rand_23:
		lw	t1, my_no
		sw	t1, -112(s0)
		lw	t0, -112(s0)
		sw	t0, -12(s0)
		j	.Randreturn_block
.Randreturn_block:
		lw	t1, -12(s0)
		sw	t1, -116(s0)
		lw	t0, -116(s0)
		mv	a0, t0
		li	t0, 128
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	RandRange
	.p2align	2
	.type	RandRange,@function
RandRange:
.RandRange_parameters:
		li	t0, 80
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -24(s0)
		mv	t1, a1
		sw	t1, -28(s0)
.RandRange:
		lw	t0, -24(s0)
		sw	t0, -16(s0)
		lw	t0, -28(s0)
		sw	t0, -20(s0)
		lw	t1, -16(s0)
		sw	t1, -32(s0)
		call	Rand
		mv	t1, a0
		sw	t1, -36(s0)
		lw	t1, -20(s0)
		sw	t1, -40(s0)
		lw	t1, -16(s0)
		sw	t1, -44(s0)
		lw	t0, -40(s0)
		lw	t1, -44(s0)
		sub	t2, t0, t1
		sw	t2, -48(s0)
		li	t0, 1
		sw	t0, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		add	t2, t0, t1
		sw	t2, -56(s0)
		lw	t0, -36(s0)
		lw	t1, -56(s0)
		rem	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -32(s0)
		lw	t1, -60(s0)
		add	t2, t0, t1
		sw	t2, -64(s0)
		li	t0, 1
		sw	t0, -68(s0)
		lw	t0, -64(s0)
		lw	t1, -68(s0)
		add	t2, t0, t1
		sw	t2, -72(s0)
		lw	t0, -72(s0)
		sw	t0, -12(s0)
		j	.RandRangereturn_block
.RandRangereturn_block:
		lw	t1, -12(s0)
		sw	t1, -76(s0)
		lw	t0, -76(s0)
		mv	a0, t0
		li	t0, 80
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	init
	.p2align	2
	.type	init,@function
init:
.init_parameters:
		li	t0, 448
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.init:
		li	t0, 140005
		sw	t0, -32(s0)
		li	t0, 4
		sw	t0, -36(s0)
		lw	t0, -32(s0)
		lw	t1, -36(s0)
		mul	t2, t0, t1
		sw	t2, -40(s0)
		li	t0, 4
		sw	t0, -44(s0)
		lw	t0, -40(s0)
		lw	t1, -44(s0)
		add	t2, t0, t1
		sw	t2, -48(s0)
		lw	t0, -48(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -52(s0)
		li	t0, 140005
		sw	t0, -56(s0)
		lw	t0, -56(s0)
		lw	t1, -52(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -60(s0)
		li	t0, 4
		sw	t0, -64(s0)
		lw	t0, -60(s0)
		lw	t1, -64(s0)
		mul	t2, t0, t1
		sw	t2, -68(s0)
		lw	t0, -52(s0)
		lw	t1, -68(s0)
		add	t2, t0, t1
		sw	t2, -72(s0)
		lw	t0, -72(s0)
		sw	t0, -12(s0)
		li	t0, 0
		sw	t0, -76(s0)
		lw	t0, -76(s0)
		sw	t0, -16(s0)
		li	t0, 0
		sw	t0, -80(s0)
		lw	t0, -80(s0)
		sw	t0, -20(s0)
		li	t0, 2
		sw	t0, -84(s0)
		lw	t0, -84(s0)
		sw	t0, -16(s0)
		j	.init_11
.init_11:
		lw	t1, -16(s0)
		sw	t1, -88(s0)
		lw	t1, my_p
		sw	t1, -92(s0)
		lw	t0, -88(s0)
		lw	t1, -92(s0)
		slt	t2, t0, t1
		sw	t2, -96(s0)
		lw	t0, -96(s0)
		bnez	t0, .init_15
		j	.init_23
.init_15:
		lw	t1, -12(s0)
		sw	t1, -100(s0)
		lw	t1, -16(s0)
		sw	t1, -104(s0)
		li	t0, 4
		sw	t0, -108(s0)
		lw	t0, -104(s0)
		lw	t1, -108(s0)
		mul	t2, t0, t1
		sw	t2, -112(s0)
		lw	t0, -100(s0)
		lw	t1, -112(s0)
		add	t2, t0, t1
		sw	t2, -116(s0)
		lw	t1, -16(s0)
		sw	t1, -120(s0)
		lw	t0, -120(s0)
		lw	t1, -116(s0)
		sw	t0, 0(t1)
		j	.init_20
.init_20:
		lw	t1, -16(s0)
		sw	t1, -124(s0)
		li	t0, 1
		sw	t0, -128(s0)
		lw	t0, -124(s0)
		lw	t1, -128(s0)
		add	t2, t0, t1
		sw	t2, -132(s0)
		lw	t0, -132(s0)
		sw	t0, -16(s0)
		j	.init_11
.init_23:
		li	t0, 2
		sw	t0, -136(s0)
		lw	t0, -136(s0)
		sw	t0, -16(s0)
		j	.init_24
.init_24:
		lw	t1, -16(s0)
		sw	t1, -140(s0)
		lw	t1, my_p
		sw	t1, -144(s0)
		lw	t0, -140(s0)
		lw	t1, -144(s0)
		slt	t2, t0, t1
		sw	t2, -148(s0)
		lw	t0, -148(s0)
		bnez	t0, .init_28
		j	.init_50
.init_28:
		li	t0, 1
		sw	t0, -152(s0)
		lw	t0, -152(s0)
		sw	t0, -20(s0)
		j	.init_29
.init_29:
		lw	t1, -20(s0)
		sw	t1, -156(s0)
		li	t0, 15
		sw	t0, -160(s0)
		lw	t0, -160(s0)
		lw	t1, -156(s0)
		slt	t2, t0, t1
		sw	t2, -164(s0)
		lw	t0, -164(s0)
		xori	t1, t0, 1
		sw	t1, -164(s0)
		lw	t0, -164(s0)
		bnez	t0, .init_32
		j	.init_46
.init_32:
		lw	t1, -12(s0)
		sw	t1, -168(s0)
		lw	t1, -16(s0)
		sw	t1, -172(s0)
		li	t0, 4
		sw	t0, -176(s0)
		lw	t0, -172(s0)
		lw	t1, -176(s0)
		mul	t2, t0, t1
		sw	t2, -180(s0)
		lw	t0, -168(s0)
		lw	t1, -180(s0)
		add	t2, t0, t1
		sw	t2, -184(s0)
		lw	t1, -12(s0)
		sw	t1, -188(s0)
		lw	t1, -16(s0)
		sw	t1, -192(s0)
		li	t0, 4
		sw	t0, -196(s0)
		lw	t0, -192(s0)
		lw	t1, -196(s0)
		mul	t2, t0, t1
		sw	t2, -200(s0)
		lw	t0, -188(s0)
		lw	t1, -200(s0)
		add	t2, t0, t1
		sw	t2, -204(s0)
		lw	t0, -204(s0)
		lw	t1, 0(t0)
		sw	t1, -208(s0)
		lw	t0, -208(s0)
		mv	a0, t0
		call	square
		mv	t1, a0
		sw	t1, -212(s0)
		lw	t1, my_p
		sw	t1, -216(s0)
		lw	t0, -212(s0)
		lw	t1, -216(s0)
		rem	t2, t0, t1
		sw	t2, -220(s0)
		lw	t0, -220(s0)
		lw	t1, -184(s0)
		sw	t0, 0(t1)
		j	.init_43
.init_43:
		lw	t1, -20(s0)
		sw	t1, -224(s0)
		li	t0, 1
		sw	t0, -228(s0)
		lw	t0, -224(s0)
		lw	t1, -228(s0)
		add	t2, t0, t1
		sw	t2, -232(s0)
		lw	t0, -232(s0)
		sw	t0, -20(s0)
		j	.init_29
.init_46:
		j	.init_47
.init_47:
		lw	t1, -16(s0)
		sw	t1, -236(s0)
		li	t0, 1
		sw	t0, -240(s0)
		lw	t0, -236(s0)
		lw	t1, -240(s0)
		add	t2, t0, t1
		sw	t2, -244(s0)
		lw	t0, -244(s0)
		sw	t0, -16(s0)
		j	.init_24
.init_50:
		li	t0, 2
		sw	t0, -248(s0)
		lw	t0, -248(s0)
		sw	t0, -16(s0)
		j	.init_51
.init_51:
		lw	t1, -16(s0)
		sw	t1, -252(s0)
		lw	t1, my_p
		sw	t1, -256(s0)
		lw	t0, -252(s0)
		lw	t1, -256(s0)
		slt	t2, t0, t1
		sw	t2, -260(s0)
		lw	t0, -260(s0)
		bnez	t0, .init_55
		j	.init_89
.init_55:
		lw	t1, -12(s0)
		sw	t1, -264(s0)
		lw	t1, -16(s0)
		sw	t1, -268(s0)
		li	t0, 4
		sw	t0, -272(s0)
		lw	t0, -268(s0)
		lw	t1, -272(s0)
		mul	t2, t0, t1
		sw	t2, -276(s0)
		lw	t0, -264(s0)
		lw	t1, -276(s0)
		add	t2, t0, t1
		sw	t2, -280(s0)
		lw	t0, -280(s0)
		lw	t1, 0(t0)
		sw	t1, -284(s0)
		lw	t0, -284(s0)
		sw	t0, -28(s0)
		li	t0, 1
		sw	t0, -288(s0)
		lw	t0, -288(s0)
		sw	t0, -24(s0)
		j	.init_62
.init_62:
		j	.init_63
.init_63:
		lw	t1, -28(s0)
		sw	t1, -292(s0)
		lw	t0, -292(s0)
		mv	a0, t0
		call	square
		mv	t1, a0
		sw	t1, -296(s0)
		lw	t1, my_p
		sw	t1, -300(s0)
		lw	t0, -296(s0)
		lw	t1, -300(s0)
		rem	t2, t0, t1
		sw	t2, -304(s0)
		lw	t0, -304(s0)
		sw	t0, -28(s0)
		lw	t1, my_b
		sw	t1, -308(s0)
		lw	t1, -28(s0)
		sw	t1, -312(s0)
		li	t0, 4
		sw	t0, -316(s0)
		lw	t0, -312(s0)
		lw	t1, -316(s0)
		mul	t2, t0, t1
		sw	t2, -320(s0)
		lw	t0, -308(s0)
		lw	t1, -320(s0)
		add	t2, t0, t1
		sw	t2, -324(s0)
		li	t0, 1
		sw	t0, -328(s0)
		lw	t0, -328(s0)
		lw	t1, -324(s0)
		sw	t0, 0(t1)
		lw	t1, -28(s0)
		sw	t1, -332(s0)
		lw	t1, -12(s0)
		sw	t1, -336(s0)
		lw	t1, -16(s0)
		sw	t1, -340(s0)
		li	t0, 4
		sw	t0, -344(s0)
		lw	t0, -340(s0)
		lw	t1, -344(s0)
		mul	t2, t0, t1
		sw	t2, -348(s0)
		lw	t0, -336(s0)
		lw	t1, -348(s0)
		add	t2, t0, t1
		sw	t2, -352(s0)
		lw	t0, -352(s0)
		lw	t1, 0(t0)
		sw	t1, -356(s0)
		lw	t0, -332(s0)
		lw	t1, -356(s0)
		xor	t2, t0, t1
		sw	t2, -360(s0)
		lw	t0, -360(s0)
		sltiu	t1, t0, 1
		sw	t1, -360(s0)
		lw	t0, -360(s0)
		bnez	t0, .init_77
		j	.init_78
.init_77:
		j	.init_82
.init_78:
		j	.init_79
.init_79:
		lw	t1, -24(s0)
		sw	t1, -364(s0)
		li	t0, 1
		sw	t0, -368(s0)
		lw	t0, -364(s0)
		lw	t1, -368(s0)
		add	t2, t0, t1
		sw	t2, -372(s0)
		lw	t0, -372(s0)
		sw	t0, -24(s0)
		j	.init_62
.init_82:
		lw	t1, my_L
		sw	t1, -376(s0)
		lw	t1, -24(s0)
		sw	t1, -380(s0)
		lw	t0, -376(s0)
		mv	a0, t0
		lw	t0, -380(s0)
		mv	a1, t0
		call	lcm
		mv	t1, a0
		sw	t1, -384(s0)
		lw	t0, -384(s0)
		lw	t1, -388(s0)
		sw	t0, my_L, t1
		j	.init_86
.init_86:
		lw	t1, -16(s0)
		sw	t1, -392(s0)
		li	t0, 1
		sw	t0, -396(s0)
		lw	t0, -392(s0)
		lw	t1, -396(s0)
		add	t2, t0, t1
		sw	t2, -400(s0)
		lw	t0, -400(s0)
		sw	t0, -16(s0)
		j	.init_51
.init_89:
		lw	t1, my_b
		sw	t1, -404(s0)
		li	t0, 0
		sw	t0, -408(s0)
		li	t0, 4
		sw	t0, -412(s0)
		lw	t0, -408(s0)
		lw	t1, -412(s0)
		mul	t2, t0, t1
		sw	t2, -416(s0)
		lw	t0, -404(s0)
		lw	t1, -416(s0)
		add	t2, t0, t1
		sw	t2, -420(s0)
		li	t0, 1
		sw	t0, -424(s0)
		lw	t0, -424(s0)
		lw	t1, -420(s0)
		sw	t0, 0(t1)
		lw	t1, my_b
		sw	t1, -428(s0)
		li	t0, 1
		sw	t0, -432(s0)
		li	t0, 4
		sw	t0, -436(s0)
		lw	t0, -432(s0)
		lw	t1, -436(s0)
		mul	t2, t0, t1
		sw	t2, -440(s0)
		lw	t0, -428(s0)
		lw	t1, -440(s0)
		add	t2, t0, t1
		sw	t2, -444(s0)
		li	t0, 1
		sw	t0, -448(s0)
		lw	t0, -448(s0)
		lw	t1, -444(s0)
		sw	t0, 0(t1)
		j	.initreturn_block
.initreturn_block:
		li	t0, 448
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	build
	.p2align	2
	.type	build,@function
build:
.build_parameters:
		li	t0, 944
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -40(s0)
		mv	t1, a1
		sw	t1, -44(s0)
		mv	t1, a2
		sw	t1, -48(s0)
.build:
		lw	t0, -40(s0)
		sw	t0, -12(s0)
		lw	t0, -44(s0)
		sw	t0, -16(s0)
		lw	t0, -48(s0)
		sw	t0, -20(s0)
		li	t0, 0
		sw	t0, -52(s0)
		lw	t0, -52(s0)
		sw	t0, -24(s0)
		lw	t1, -16(s0)
		sw	t1, -56(s0)
		lw	t1, -20(s0)
		sw	t1, -60(s0)
		lw	t0, -56(s0)
		lw	t1, -60(s0)
		xor	t2, t0, t1
		sw	t2, -64(s0)
		lw	t0, -64(s0)
		sltiu	t1, t0, 1
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		bnez	t0, .build_11
		j	.build_85
.build_11:
		lw	t1, my_sum
		sw	t1, -68(s0)
		lw	t1, -12(s0)
		sw	t1, -72(s0)
		li	t0, 4
		sw	t0, -76(s0)
		lw	t0, -72(s0)
		lw	t1, -76(s0)
		mul	t2, t0, t1
		sw	t2, -80(s0)
		lw	t0, -68(s0)
		lw	t1, -80(s0)
		add	t2, t0, t1
		sw	t2, -84(s0)
		lw	t1, my_a
		sw	t1, -88(s0)
		lw	t1, -16(s0)
		sw	t1, -92(s0)
		li	t0, 4
		sw	t0, -96(s0)
		lw	t0, -92(s0)
		lw	t1, -96(s0)
		mul	t2, t0, t1
		sw	t2, -100(s0)
		lw	t0, -88(s0)
		lw	t1, -100(s0)
		add	t2, t0, t1
		sw	t2, -104(s0)
		lw	t0, -104(s0)
		lw	t1, 0(t0)
		sw	t1, -108(s0)
		lw	t0, -108(s0)
		lw	t1, -84(s0)
		sw	t0, 0(t1)
		lw	t1, my_a
		sw	t1, -112(s0)
		lw	t1, -16(s0)
		sw	t1, -116(s0)
		li	t0, 4
		sw	t0, -120(s0)
		lw	t0, -116(s0)
		lw	t1, -120(s0)
		mul	t2, t0, t1
		sw	t2, -124(s0)
		lw	t0, -112(s0)
		lw	t1, -124(s0)
		add	t2, t0, t1
		sw	t2, -128(s0)
		lw	t0, -128(s0)
		lw	t1, 0(t0)
		sw	t1, -132(s0)
		lw	t1, my_p
		sw	t1, -136(s0)
		lw	t0, -132(s0)
		lw	t1, -136(s0)
		slt	t2, t0, t1
		sw	t2, -140(s0)
		li	t0, 0
		sw	t0, -144(s0)
		lw	t0, -144(s0)
		mv	t1, t0
		sw	t1, -148(s0)
		lw	t0, -140(s0)
		bnez	t0, .build_24AND_AND_TRUE
		lw	t0, -144(s0)
		mv	t1, t0
		sw	t1, -148(s0)
		j	.build_24AND_AND_OUT
.build_24AND_AND_TRUE:
		lw	t1, my_a
		sw	t1, -152(s0)
		lw	t1, -16(s0)
		sw	t1, -156(s0)
		li	t0, 4
		sw	t0, -160(s0)
		lw	t0, -156(s0)
		lw	t1, -160(s0)
		mul	t2, t0, t1
		sw	t2, -164(s0)
		lw	t0, -152(s0)
		lw	t1, -164(s0)
		add	t2, t0, t1
		sw	t2, -168(s0)
		lw	t0, -168(s0)
		lw	t1, 0(t0)
		sw	t1, -172(s0)
		li	t0, 0
		sw	t0, -176(s0)
		lw	t0, -172(s0)
		lw	t1, -176(s0)
		slt	t2, t0, t1
		sw	t2, -180(s0)
		lw	t0, -180(s0)
		xori	t1, t0, 1
		sw	t1, -180(s0)
		lw	t0, -180(s0)
		mv	t1, t0
		sw	t1, -148(s0)
		j	.build_24AND_AND_OUT
.build_24AND_AND_OUT:
		li	t0, 0
		sw	t0, -184(s0)
		lw	t0, -184(s0)
		mv	t1, t0
		sw	t1, -188(s0)
		lw	t0, -148(s0)
		bnez	t0, .build_30AND_AND_TRUE
		lw	t0, -184(s0)
		mv	t1, t0
		sw	t1, -188(s0)
		j	.build_30AND_AND_OUT
.build_30AND_AND_TRUE:
		lw	t1, my_b
		sw	t1, -192(s0)
		lw	t1, my_a
		sw	t1, -196(s0)
		lw	t1, -16(s0)
		sw	t1, -200(s0)
		li	t0, 4
		sw	t0, -204(s0)
		lw	t0, -200(s0)
		lw	t1, -204(s0)
		mul	t2, t0, t1
		sw	t2, -208(s0)
		lw	t0, -196(s0)
		lw	t1, -208(s0)
		add	t2, t0, t1
		sw	t2, -212(s0)
		lw	t0, -212(s0)
		lw	t1, 0(t0)
		sw	t1, -216(s0)
		lw	t1, my_p
		sw	t1, -220(s0)
		lw	t0, -216(s0)
		lw	t1, -220(s0)
		rem	t2, t0, t1
		sw	t2, -224(s0)
		li	t0, 4
		sw	t0, -228(s0)
		lw	t0, -224(s0)
		lw	t1, -228(s0)
		mul	t2, t0, t1
		sw	t2, -232(s0)
		lw	t0, -192(s0)
		lw	t1, -232(s0)
		add	t2, t0, t1
		sw	t2, -236(s0)
		lw	t0, -236(s0)
		lw	t1, 0(t0)
		sw	t1, -240(s0)
		li	t0, 0
		sw	t0, -244(s0)
		lw	t0, -244(s0)
		lw	t1, -240(s0)
		slt	t2, t0, t1
		sw	t2, -248(s0)
		lw	t0, -248(s0)
		mv	t1, t0
		sw	t1, -188(s0)
		j	.build_30AND_AND_OUT
.build_30AND_AND_OUT:
		lw	t0, -188(s0)
		bnez	t0, .build_42
		j	.build_81
.build_42:
		lw	t1, my_flag
		sw	t1, -252(s0)
		lw	t1, -12(s0)
		sw	t1, -256(s0)
		li	t0, 4
		sw	t0, -260(s0)
		lw	t0, -256(s0)
		lw	t1, -260(s0)
		mul	t2, t0, t1
		sw	t2, -264(s0)
		lw	t0, -252(s0)
		lw	t1, -264(s0)
		add	t2, t0, t1
		sw	t2, -268(s0)
		li	t0, 1
		sw	t0, -272(s0)
		lw	t0, -272(s0)
		lw	t1, -268(s0)
		sw	t0, 0(t1)
		lw	t1, my_s
		sw	t1, -276(s0)
		lw	t1, -12(s0)
		sw	t1, -280(s0)
		li	t0, 8
		sw	t0, -284(s0)
		lw	t0, -280(s0)
		lw	t1, -284(s0)
		mul	t2, t0, t1
		sw	t2, -288(s0)
		lw	t0, -276(s0)
		lw	t1, -288(s0)
		add	t2, t0, t1
		sw	t2, -292(s0)
		lw	t0, -292(s0)
		lw	t1, 0(t0)
		sw	t1, -296(s0)
		li	t0, 0
		sw	t0, -300(s0)
		li	t0, 4
		sw	t0, -304(s0)
		lw	t0, -300(s0)
		lw	t1, -304(s0)
		mul	t2, t0, t1
		sw	t2, -308(s0)
		lw	t0, -296(s0)
		lw	t1, -308(s0)
		add	t2, t0, t1
		sw	t2, -312(s0)
		lw	t1, my_a
		sw	t1, -316(s0)
		lw	t1, -16(s0)
		sw	t1, -320(s0)
		li	t0, 4
		sw	t0, -324(s0)
		lw	t0, -320(s0)
		lw	t1, -324(s0)
		mul	t2, t0, t1
		sw	t2, -328(s0)
		lw	t0, -316(s0)
		lw	t1, -328(s0)
		add	t2, t0, t1
		sw	t2, -332(s0)
		lw	t0, -332(s0)
		lw	t1, 0(t0)
		sw	t1, -336(s0)
		lw	t0, -336(s0)
		lw	t1, -312(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -340(s0)
		lw	t0, -340(s0)
		sw	t0, -24(s0)
		j	.build_55
.build_55:
		lw	t1, -24(s0)
		sw	t1, -344(s0)
		lw	t1, my_L
		sw	t1, -348(s0)
		lw	t0, -344(s0)
		lw	t1, -348(s0)
		slt	t2, t0, t1
		sw	t2, -352(s0)
		lw	t0, -352(s0)
		bnez	t0, .build_59
		j	.build_80
.build_59:
		lw	t1, my_s
		sw	t1, -356(s0)
		lw	t1, -12(s0)
		sw	t1, -360(s0)
		li	t0, 8
		sw	t0, -364(s0)
		lw	t0, -360(s0)
		lw	t1, -364(s0)
		mul	t2, t0, t1
		sw	t2, -368(s0)
		lw	t0, -356(s0)
		lw	t1, -368(s0)
		add	t2, t0, t1
		sw	t2, -372(s0)
		lw	t0, -372(s0)
		lw	t1, 0(t0)
		sw	t1, -376(s0)
		lw	t1, -24(s0)
		sw	t1, -380(s0)
		li	t0, 4
		sw	t0, -384(s0)
		lw	t0, -380(s0)
		lw	t1, -384(s0)
		mul	t2, t0, t1
		sw	t2, -388(s0)
		lw	t0, -376(s0)
		lw	t1, -388(s0)
		add	t2, t0, t1
		sw	t2, -392(s0)
		lw	t1, my_s
		sw	t1, -396(s0)
		lw	t1, -12(s0)
		sw	t1, -400(s0)
		li	t0, 8
		sw	t0, -404(s0)
		lw	t0, -400(s0)
		lw	t1, -404(s0)
		mul	t2, t0, t1
		sw	t2, -408(s0)
		lw	t0, -396(s0)
		lw	t1, -408(s0)
		add	t2, t0, t1
		sw	t2, -412(s0)
		lw	t0, -412(s0)
		lw	t1, 0(t0)
		sw	t1, -416(s0)
		lw	t1, -24(s0)
		sw	t1, -420(s0)
		li	t0, 1
		sw	t0, -424(s0)
		lw	t0, -420(s0)
		lw	t1, -424(s0)
		sub	t2, t0, t1
		sw	t2, -428(s0)
		li	t0, 4
		sw	t0, -432(s0)
		lw	t0, -428(s0)
		lw	t1, -432(s0)
		mul	t2, t0, t1
		sw	t2, -436(s0)
		lw	t0, -416(s0)
		lw	t1, -436(s0)
		add	t2, t0, t1
		sw	t2, -440(s0)
		lw	t0, -440(s0)
		lw	t1, 0(t0)
		sw	t1, -444(s0)
		lw	t0, -444(s0)
		mv	a0, t0
		call	square
		mv	t1, a0
		sw	t1, -448(s0)
		lw	t1, my_p
		sw	t1, -452(s0)
		lw	t0, -448(s0)
		lw	t1, -452(s0)
		rem	t2, t0, t1
		sw	t2, -456(s0)
		lw	t0, -456(s0)
		lw	t1, -392(s0)
		sw	t0, 0(t1)
		j	.build_77
.build_77:
		lw	t1, -24(s0)
		sw	t1, -460(s0)
		li	t0, 1
		sw	t0, -464(s0)
		lw	t0, -460(s0)
		lw	t1, -464(s0)
		add	t2, t0, t1
		sw	t2, -468(s0)
		lw	t0, -468(s0)
		sw	t0, -24(s0)
		j	.build_55
.build_80:
		j	.build_81
.build_81:
		lw	t1, my_now
		sw	t1, -472(s0)
		lw	t1, -12(s0)
		sw	t1, -476(s0)
		li	t0, 4
		sw	t0, -480(s0)
		lw	t0, -476(s0)
		lw	t1, -480(s0)
		mul	t2, t0, t1
		sw	t2, -484(s0)
		lw	t0, -472(s0)
		lw	t1, -484(s0)
		add	t2, t0, t1
		sw	t2, -488(s0)
		li	t0, 0
		sw	t0, -492(s0)
		lw	t0, -492(s0)
		lw	t1, -488(s0)
		sw	t0, 0(t1)
		j	.build_170
.build_85:
		lw	t1, -12(s0)
		sw	t1, -496(s0)
		li	t0, 2
		sw	t0, -500(s0)
		lw	t0, -496(s0)
		lw	t1, -500(s0)
		mul	t2, t0, t1
		sw	t2, -504(s0)
		lw	t0, -504(s0)
		sw	t0, -28(s0)
		lw	t1, -12(s0)
		sw	t1, -508(s0)
		li	t0, 2
		sw	t0, -512(s0)
		lw	t0, -508(s0)
		lw	t1, -512(s0)
		mul	t2, t0, t1
		sw	t2, -516(s0)
		li	t0, 1
		sw	t0, -520(s0)
		lw	t0, -516(s0)
		lw	t1, -520(s0)
		add	t2, t0, t1
		sw	t2, -524(s0)
		lw	t0, -524(s0)
		sw	t0, -32(s0)
		lw	t1, -16(s0)
		sw	t1, -528(s0)
		lw	t1, -20(s0)
		sw	t1, -532(s0)
		lw	t0, -528(s0)
		lw	t1, -532(s0)
		add	t2, t0, t1
		sw	t2, -536(s0)
		li	t0, 2
		sw	t0, -540(s0)
		lw	t0, -536(s0)
		lw	t1, -540(s0)
		div	t2, t0, t1
		sw	t2, -544(s0)
		lw	t0, -544(s0)
		sw	t0, -36(s0)
		lw	t1, -28(s0)
		sw	t1, -548(s0)
		lw	t1, -16(s0)
		sw	t1, -552(s0)
		lw	t1, -36(s0)
		sw	t1, -556(s0)
		lw	t0, -548(s0)
		mv	a0, t0
		lw	t0, -552(s0)
		mv	a1, t0
		lw	t0, -556(s0)
		mv	a2, t0
		call	build
		lw	t1, -32(s0)
		sw	t1, -560(s0)
		lw	t1, -36(s0)
		sw	t1, -564(s0)
		li	t0, 1
		sw	t0, -568(s0)
		lw	t0, -564(s0)
		lw	t1, -568(s0)
		add	t2, t0, t1
		sw	t2, -572(s0)
		lw	t1, -20(s0)
		sw	t1, -576(s0)
		lw	t0, -560(s0)
		mv	a0, t0
		lw	t0, -572(s0)
		mv	a1, t0
		lw	t0, -576(s0)
		mv	a2, t0
		call	build
		lw	t1, my_sum
		sw	t1, -580(s0)
		lw	t1, -12(s0)
		sw	t1, -584(s0)
		li	t0, 4
		sw	t0, -588(s0)
		lw	t0, -584(s0)
		lw	t1, -588(s0)
		mul	t2, t0, t1
		sw	t2, -592(s0)
		lw	t0, -580(s0)
		lw	t1, -592(s0)
		add	t2, t0, t1
		sw	t2, -596(s0)
		lw	t1, my_sum
		sw	t1, -600(s0)
		lw	t1, -28(s0)
		sw	t1, -604(s0)
		li	t0, 4
		sw	t0, -608(s0)
		lw	t0, -604(s0)
		lw	t1, -608(s0)
		mul	t2, t0, t1
		sw	t2, -612(s0)
		lw	t0, -600(s0)
		lw	t1, -612(s0)
		add	t2, t0, t1
		sw	t2, -616(s0)
		lw	t0, -616(s0)
		lw	t1, 0(t0)
		sw	t1, -620(s0)
		lw	t1, my_sum
		sw	t1, -624(s0)
		lw	t1, -32(s0)
		sw	t1, -628(s0)
		li	t0, 4
		sw	t0, -632(s0)
		lw	t0, -628(s0)
		lw	t1, -632(s0)
		mul	t2, t0, t1
		sw	t2, -636(s0)
		lw	t0, -624(s0)
		lw	t1, -636(s0)
		add	t2, t0, t1
		sw	t2, -640(s0)
		lw	t0, -640(s0)
		lw	t1, 0(t0)
		sw	t1, -644(s0)
		lw	t0, -620(s0)
		lw	t1, -644(s0)
		add	t2, t0, t1
		sw	t2, -648(s0)
		lw	t0, -648(s0)
		lw	t1, -596(s0)
		sw	t0, 0(t1)
		lw	t1, my_flag
		sw	t1, -652(s0)
		lw	t1, -12(s0)
		sw	t1, -656(s0)
		li	t0, 4
		sw	t0, -660(s0)
		lw	t0, -656(s0)
		lw	t1, -660(s0)
		mul	t2, t0, t1
		sw	t2, -664(s0)
		lw	t0, -652(s0)
		lw	t1, -664(s0)
		add	t2, t0, t1
		sw	t2, -668(s0)
		lw	t1, my_flag
		sw	t1, -672(s0)
		lw	t1, -28(s0)
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
		lw	t1, my_flag
		sw	t1, -696(s0)
		lw	t1, -32(s0)
		sw	t1, -700(s0)
		li	t0, 4
		sw	t0, -704(s0)
		lw	t0, -700(s0)
		lw	t1, -704(s0)
		mul	t2, t0, t1
		sw	t2, -708(s0)
		lw	t0, -696(s0)
		lw	t1, -708(s0)
		add	t2, t0, t1
		sw	t2, -712(s0)
		lw	t0, -712(s0)
		lw	t1, 0(t0)
		sw	t1, -716(s0)
		lw	t0, -692(s0)
		lw	t1, -716(s0)
		and	t2, t0, t1
		sw	t2, -720(s0)
		lw	t0, -720(s0)
		lw	t1, -668(s0)
		sw	t0, 0(t1)
		lw	t1, my_flag
		sw	t1, -724(s0)
		lw	t1, -12(s0)
		sw	t1, -728(s0)
		li	t0, 4
		sw	t0, -732(s0)
		lw	t0, -728(s0)
		lw	t1, -732(s0)
		mul	t2, t0, t1
		sw	t2, -736(s0)
		lw	t0, -724(s0)
		lw	t1, -736(s0)
		add	t2, t0, t1
		sw	t2, -740(s0)
		lw	t0, -740(s0)
		lw	t1, 0(t0)
		sw	t1, -744(s0)
		li	t0, 0
		sw	t0, -748(s0)
		lw	t0, -748(s0)
		lw	t1, -744(s0)
		slt	t2, t0, t1
		sw	t2, -752(s0)
		lw	t0, -752(s0)
		bnez	t0, .build_136
		j	.build_169
.build_136:
		li	t0, 0
		sw	t0, -756(s0)
		lw	t0, -756(s0)
		sw	t0, -24(s0)
		j	.build_137
.build_137:
		lw	t1, -24(s0)
		sw	t1, -760(s0)
		lw	t1, my_L
		sw	t1, -764(s0)
		lw	t0, -760(s0)
		lw	t1, -764(s0)
		slt	t2, t0, t1
		sw	t2, -768(s0)
		lw	t0, -768(s0)
		bnez	t0, .build_141
		j	.build_166
.build_141:
		lw	t1, my_s
		sw	t1, -772(s0)
		lw	t1, -12(s0)
		sw	t1, -776(s0)
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
		lw	t1, -24(s0)
		sw	t1, -796(s0)
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
		lw	t1, my_s
		sw	t1, -812(s0)
		lw	t1, -28(s0)
		sw	t1, -816(s0)
		li	t0, 8
		sw	t0, -820(s0)
		lw	t0, -816(s0)
		lw	t1, -820(s0)
		mul	t2, t0, t1
		sw	t2, -824(s0)
		lw	t0, -812(s0)
		lw	t1, -824(s0)
		add	t2, t0, t1
		sw	t2, -828(s0)
		lw	t0, -828(s0)
		lw	t1, 0(t0)
		sw	t1, -832(s0)
		lw	t1, -24(s0)
		sw	t1, -836(s0)
		li	t0, 4
		sw	t0, -840(s0)
		lw	t0, -836(s0)
		lw	t1, -840(s0)
		mul	t2, t0, t1
		sw	t2, -844(s0)
		lw	t0, -832(s0)
		lw	t1, -844(s0)
		add	t2, t0, t1
		sw	t2, -848(s0)
		lw	t0, -848(s0)
		lw	t1, 0(t0)
		sw	t1, -852(s0)
		lw	t1, my_s
		sw	t1, -856(s0)
		lw	t1, -32(s0)
		sw	t1, -860(s0)
		li	t0, 8
		sw	t0, -864(s0)
		lw	t0, -860(s0)
		lw	t1, -864(s0)
		mul	t2, t0, t1
		sw	t2, -868(s0)
		lw	t0, -856(s0)
		lw	t1, -868(s0)
		add	t2, t0, t1
		sw	t2, -872(s0)
		lw	t0, -872(s0)
		lw	t1, 0(t0)
		sw	t1, -876(s0)
		lw	t1, -24(s0)
		sw	t1, -880(s0)
		li	t0, 4
		sw	t0, -884(s0)
		lw	t0, -880(s0)
		lw	t1, -884(s0)
		mul	t2, t0, t1
		sw	t2, -888(s0)
		lw	t0, -876(s0)
		lw	t1, -888(s0)
		add	t2, t0, t1
		sw	t2, -892(s0)
		lw	t0, -892(s0)
		lw	t1, 0(t0)
		sw	t1, -896(s0)
		lw	t0, -852(s0)
		lw	t1, -896(s0)
		add	t2, t0, t1
		sw	t2, -900(s0)
		lw	t0, -900(s0)
		lw	t1, -808(s0)
		sw	t0, 0(t1)
		j	.build_163
.build_163:
		lw	t1, -24(s0)
		sw	t1, -904(s0)
		li	t0, 1
		sw	t0, -908(s0)
		lw	t0, -904(s0)
		lw	t1, -908(s0)
		add	t2, t0, t1
		sw	t2, -912(s0)
		lw	t0, -912(s0)
		sw	t0, -24(s0)
		j	.build_137
.build_166:
		lw	t1, my_now
		sw	t1, -916(s0)
		li	t0, 0
		sw	t0, -920(s0)
		li	t0, 4
		sw	t0, -924(s0)
		lw	t0, -920(s0)
		lw	t1, -924(s0)
		mul	t2, t0, t1
		sw	t2, -928(s0)
		lw	t0, -916(s0)
		lw	t1, -928(s0)
		add	t2, t0, t1
		sw	t2, -932(s0)
		li	t0, 0
		sw	t0, -936(s0)
		lw	t0, -936(s0)
		lw	t1, -932(s0)
		sw	t0, 0(t1)
		j	.build_169
.build_169:
		j	.build_170
.build_170:
		j	.buildreturn_block
.buildreturn_block:
		li	t0, 944
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	pushdown
	.p2align	2
	.type	pushdown,@function
pushdown:
.pushdown_parameters:
		li	t0, 608
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -24(s0)
.pushdown:
		lw	t0, -24(s0)
		sw	t0, -12(s0)
		lw	t1, my_t
		sw	t1, -28(s0)
		lw	t1, -12(s0)
		sw	t1, -32(s0)
		li	t0, 4
		sw	t0, -36(s0)
		lw	t0, -32(s0)
		lw	t1, -36(s0)
		mul	t2, t0, t1
		sw	t2, -40(s0)
		lw	t0, -28(s0)
		lw	t1, -40(s0)
		add	t2, t0, t1
		sw	t2, -44(s0)
		lw	t0, -44(s0)
		lw	t1, 0(t0)
		sw	t1, -48(s0)
		li	t0, 0
		sw	t0, -52(s0)
		lw	t0, -52(s0)
		lw	t1, -48(s0)
		slt	t2, t0, t1
		sw	t2, -56(s0)
		lw	t0, -56(s0)
		bnez	t0, .pushdown_8
		j	.pushdown_101
.pushdown_8:
		lw	t1, -12(s0)
		sw	t1, -60(s0)
		li	t0, 2
		sw	t0, -64(s0)
		lw	t0, -60(s0)
		lw	t1, -64(s0)
		mul	t2, t0, t1
		sw	t2, -68(s0)
		lw	t0, -68(s0)
		sw	t0, -16(s0)
		lw	t1, -12(s0)
		sw	t1, -72(s0)
		li	t0, 2
		sw	t0, -76(s0)
		lw	t0, -72(s0)
		lw	t1, -76(s0)
		mul	t2, t0, t1
		sw	t2, -80(s0)
		li	t0, 1
		sw	t0, -84(s0)
		lw	t0, -80(s0)
		lw	t1, -84(s0)
		add	t2, t0, t1
		sw	t2, -88(s0)
		lw	t0, -88(s0)
		sw	t0, -20(s0)
		lw	t1, my_now
		sw	t1, -92(s0)
		lw	t1, -16(s0)
		sw	t1, -96(s0)
		li	t0, 4
		sw	t0, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		mul	t2, t0, t1
		sw	t2, -104(s0)
		lw	t0, -92(s0)
		lw	t1, -104(s0)
		add	t2, t0, t1
		sw	t2, -108(s0)
		lw	t1, my_now
		sw	t1, -112(s0)
		lw	t1, -16(s0)
		sw	t1, -116(s0)
		li	t0, 4
		sw	t0, -120(s0)
		lw	t0, -116(s0)
		lw	t1, -120(s0)
		mul	t2, t0, t1
		sw	t2, -124(s0)
		lw	t0, -112(s0)
		lw	t1, -124(s0)
		add	t2, t0, t1
		sw	t2, -128(s0)
		lw	t0, -128(s0)
		lw	t1, 0(t0)
		sw	t1, -132(s0)
		lw	t1, my_t
		sw	t1, -136(s0)
		lw	t1, -12(s0)
		sw	t1, -140(s0)
		li	t0, 4
		sw	t0, -144(s0)
		lw	t0, -140(s0)
		lw	t1, -144(s0)
		mul	t2, t0, t1
		sw	t2, -148(s0)
		lw	t0, -136(s0)
		lw	t1, -148(s0)
		add	t2, t0, t1
		sw	t2, -152(s0)
		lw	t0, -152(s0)
		lw	t1, 0(t0)
		sw	t1, -156(s0)
		lw	t0, -132(s0)
		lw	t1, -156(s0)
		add	t2, t0, t1
		sw	t2, -160(s0)
		lw	t1, my_L
		sw	t1, -164(s0)
		lw	t0, -160(s0)
		lw	t1, -164(s0)
		rem	t2, t0, t1
		sw	t2, -168(s0)
		lw	t0, -168(s0)
		lw	t1, -108(s0)
		sw	t0, 0(t1)
		lw	t1, my_sum
		sw	t1, -172(s0)
		lw	t1, -16(s0)
		sw	t1, -176(s0)
		li	t0, 4
		sw	t0, -180(s0)
		lw	t0, -176(s0)
		lw	t1, -180(s0)
		mul	t2, t0, t1
		sw	t2, -184(s0)
		lw	t0, -172(s0)
		lw	t1, -184(s0)
		add	t2, t0, t1
		sw	t2, -188(s0)
		lw	t1, my_s
		sw	t1, -192(s0)
		lw	t1, -16(s0)
		sw	t1, -196(s0)
		li	t0, 8
		sw	t0, -200(s0)
		lw	t0, -196(s0)
		lw	t1, -200(s0)
		mul	t2, t0, t1
		sw	t2, -204(s0)
		lw	t0, -192(s0)
		lw	t1, -204(s0)
		add	t2, t0, t1
		sw	t2, -208(s0)
		lw	t0, -208(s0)
		lw	t1, 0(t0)
		sw	t1, -212(s0)
		lw	t1, my_now
		sw	t1, -216(s0)
		lw	t1, -16(s0)
		sw	t1, -220(s0)
		li	t0, 4
		sw	t0, -224(s0)
		lw	t0, -220(s0)
		lw	t1, -224(s0)
		mul	t2, t0, t1
		sw	t2, -228(s0)
		lw	t0, -216(s0)
		lw	t1, -228(s0)
		add	t2, t0, t1
		sw	t2, -232(s0)
		lw	t0, -232(s0)
		lw	t1, 0(t0)
		sw	t1, -236(s0)
		li	t0, 4
		sw	t0, -240(s0)
		lw	t0, -236(s0)
		lw	t1, -240(s0)
		mul	t2, t0, t1
		sw	t2, -244(s0)
		lw	t0, -212(s0)
		lw	t1, -244(s0)
		add	t2, t0, t1
		sw	t2, -248(s0)
		lw	t0, -248(s0)
		lw	t1, 0(t0)
		sw	t1, -252(s0)
		lw	t0, -252(s0)
		lw	t1, -188(s0)
		sw	t0, 0(t1)
		lw	t1, my_t
		sw	t1, -256(s0)
		lw	t1, -16(s0)
		sw	t1, -260(s0)
		li	t0, 4
		sw	t0, -264(s0)
		lw	t0, -260(s0)
		lw	t1, -264(s0)
		mul	t2, t0, t1
		sw	t2, -268(s0)
		lw	t0, -256(s0)
		lw	t1, -268(s0)
		add	t2, t0, t1
		sw	t2, -272(s0)
		lw	t1, my_t
		sw	t1, -276(s0)
		lw	t1, -16(s0)
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
		lw	t0, -292(s0)
		lw	t1, 0(t0)
		sw	t1, -296(s0)
		lw	t1, my_t
		sw	t1, -300(s0)
		lw	t1, -12(s0)
		sw	t1, -304(s0)
		li	t0, 4
		sw	t0, -308(s0)
		lw	t0, -304(s0)
		lw	t1, -308(s0)
		mul	t2, t0, t1
		sw	t2, -312(s0)
		lw	t0, -300(s0)
		lw	t1, -312(s0)
		add	t2, t0, t1
		sw	t2, -316(s0)
		lw	t0, -316(s0)
		lw	t1, 0(t0)
		sw	t1, -320(s0)
		lw	t0, -296(s0)
		lw	t1, -320(s0)
		add	t2, t0, t1
		sw	t2, -324(s0)
		lw	t1, my_L
		sw	t1, -328(s0)
		lw	t0, -324(s0)
		lw	t1, -328(s0)
		rem	t2, t0, t1
		sw	t2, -332(s0)
		lw	t0, -332(s0)
		lw	t1, -272(s0)
		sw	t0, 0(t1)
		lw	t1, my_now
		sw	t1, -336(s0)
		lw	t1, -20(s0)
		sw	t1, -340(s0)
		li	t0, 4
		sw	t0, -344(s0)
		lw	t0, -340(s0)
		lw	t1, -344(s0)
		mul	t2, t0, t1
		sw	t2, -348(s0)
		lw	t0, -336(s0)
		lw	t1, -348(s0)
		add	t2, t0, t1
		sw	t2, -352(s0)
		lw	t1, my_now
		sw	t1, -356(s0)
		lw	t1, -20(s0)
		sw	t1, -360(s0)
		li	t0, 4
		sw	t0, -364(s0)
		lw	t0, -360(s0)
		lw	t1, -364(s0)
		mul	t2, t0, t1
		sw	t2, -368(s0)
		lw	t0, -356(s0)
		lw	t1, -368(s0)
		add	t2, t0, t1
		sw	t2, -372(s0)
		lw	t0, -372(s0)
		lw	t1, 0(t0)
		sw	t1, -376(s0)
		lw	t1, my_t
		sw	t1, -380(s0)
		lw	t1, -12(s0)
		sw	t1, -384(s0)
		li	t0, 4
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
		lw	t0, -376(s0)
		lw	t1, -400(s0)
		add	t2, t0, t1
		sw	t2, -404(s0)
		lw	t1, my_L
		sw	t1, -408(s0)
		lw	t0, -404(s0)
		lw	t1, -408(s0)
		rem	t2, t0, t1
		sw	t2, -412(s0)
		lw	t0, -412(s0)
		lw	t1, -352(s0)
		sw	t0, 0(t1)
		lw	t1, my_sum
		sw	t1, -416(s0)
		lw	t1, -20(s0)
		sw	t1, -420(s0)
		li	t0, 4
		sw	t0, -424(s0)
		lw	t0, -420(s0)
		lw	t1, -424(s0)
		mul	t2, t0, t1
		sw	t2, -428(s0)
		lw	t0, -416(s0)
		lw	t1, -428(s0)
		add	t2, t0, t1
		sw	t2, -432(s0)
		lw	t1, my_s
		sw	t1, -436(s0)
		lw	t1, -20(s0)
		sw	t1, -440(s0)
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
		lw	t1, my_now
		sw	t1, -460(s0)
		lw	t1, -20(s0)
		sw	t1, -464(s0)
		li	t0, 4
		sw	t0, -468(s0)
		lw	t0, -464(s0)
		lw	t1, -468(s0)
		mul	t2, t0, t1
		sw	t2, -472(s0)
		lw	t0, -460(s0)
		lw	t1, -472(s0)
		add	t2, t0, t1
		sw	t2, -476(s0)
		lw	t0, -476(s0)
		lw	t1, 0(t0)
		sw	t1, -480(s0)
		li	t0, 4
		sw	t0, -484(s0)
		lw	t0, -480(s0)
		lw	t1, -484(s0)
		mul	t2, t0, t1
		sw	t2, -488(s0)
		lw	t0, -456(s0)
		lw	t1, -488(s0)
		add	t2, t0, t1
		sw	t2, -492(s0)
		lw	t0, -492(s0)
		lw	t1, 0(t0)
		sw	t1, -496(s0)
		lw	t0, -496(s0)
		lw	t1, -432(s0)
		sw	t0, 0(t1)
		lw	t1, my_t
		sw	t1, -500(s0)
		lw	t1, -20(s0)
		sw	t1, -504(s0)
		li	t0, 4
		sw	t0, -508(s0)
		lw	t0, -504(s0)
		lw	t1, -508(s0)
		mul	t2, t0, t1
		sw	t2, -512(s0)
		lw	t0, -500(s0)
		lw	t1, -512(s0)
		add	t2, t0, t1
		sw	t2, -516(s0)
		lw	t1, my_t
		sw	t1, -520(s0)
		lw	t1, -20(s0)
		sw	t1, -524(s0)
		li	t0, 4
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
		lw	t1, my_t
		sw	t1, -544(s0)
		lw	t1, -12(s0)
		sw	t1, -548(s0)
		li	t0, 4
		sw	t0, -552(s0)
		lw	t0, -548(s0)
		lw	t1, -552(s0)
		mul	t2, t0, t1
		sw	t2, -556(s0)
		lw	t0, -544(s0)
		lw	t1, -556(s0)
		add	t2, t0, t1
		sw	t2, -560(s0)
		lw	t0, -560(s0)
		lw	t1, 0(t0)
		sw	t1, -564(s0)
		lw	t0, -540(s0)
		lw	t1, -564(s0)
		add	t2, t0, t1
		sw	t2, -568(s0)
		lw	t1, my_L
		sw	t1, -572(s0)
		lw	t0, -568(s0)
		lw	t1, -572(s0)
		rem	t2, t0, t1
		sw	t2, -576(s0)
		lw	t0, -576(s0)
		lw	t1, -516(s0)
		sw	t0, 0(t1)
		lw	t1, my_t
		sw	t1, -580(s0)
		lw	t1, -12(s0)
		sw	t1, -584(s0)
		li	t0, 4
		sw	t0, -588(s0)
		lw	t0, -584(s0)
		lw	t1, -588(s0)
		mul	t2, t0, t1
		sw	t2, -592(s0)
		lw	t0, -580(s0)
		lw	t1, -592(s0)
		add	t2, t0, t1
		sw	t2, -596(s0)
		li	t0, 0
		sw	t0, -600(s0)
		lw	t0, -600(s0)
		lw	t1, -596(s0)
		sw	t0, 0(t1)
		j	.pushdown_101
.pushdown_101:
		j	.pushdownreturn_block
.pushdownreturn_block:
		li	t0, 608
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	update
	.p2align	2
	.type	update,@function
update:
.update_parameters:
		li	t0, 1264
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -44(s0)
		mv	t1, a1
		sw	t1, -48(s0)
		mv	t1, a2
		sw	t1, -52(s0)
.update:
		lw	t0, -44(s0)
		sw	t0, -12(s0)
		lw	t0, -48(s0)
		sw	t0, -16(s0)
		lw	t0, -52(s0)
		sw	t0, -20(s0)
		lw	t1, my_pl
		sw	t1, -56(s0)
		lw	t1, -16(s0)
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		lw	t1, -56(s0)
		slt	t2, t0, t1
		sw	t2, -64(s0)
		lw	t0, -64(s0)
		xori	t1, t0, 1
		sw	t1, -64(s0)
		li	t0, 0
		sw	t0, -68(s0)
		lw	t0, -68(s0)
		mv	t1, t0
		sw	t1, -72(s0)
		lw	t0, -64(s0)
		bnez	t0, .update_9AND_AND_TRUE
		lw	t0, -68(s0)
		mv	t1, t0
		sw	t1, -72(s0)
		j	.update_9AND_AND_OUT
.update_9AND_AND_TRUE:
		lw	t1, my_pr
		sw	t1, -76(s0)
		lw	t1, -20(s0)
		sw	t1, -80(s0)
		lw	t0, -76(s0)
		lw	t1, -80(s0)
		slt	t2, t0, t1
		sw	t2, -84(s0)
		lw	t0, -84(s0)
		xori	t1, t0, 1
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		mv	t1, t0
		sw	t1, -72(s0)
		j	.update_9AND_AND_OUT
.update_9AND_AND_OUT:
		li	t0, 0
		sw	t0, -88(s0)
		lw	t0, -88(s0)
		mv	t1, t0
		sw	t1, -92(s0)
		lw	t0, -72(s0)
		bnez	t0, .update_13AND_AND_TRUE
		lw	t0, -88(s0)
		mv	t1, t0
		sw	t1, -92(s0)
		j	.update_13AND_AND_OUT
.update_13AND_AND_TRUE:
		lw	t1, my_flag
		sw	t1, -96(s0)
		lw	t1, -12(s0)
		sw	t1, -100(s0)
		li	t0, 4
		sw	t0, -104(s0)
		lw	t0, -100(s0)
		lw	t1, -104(s0)
		mul	t2, t0, t1
		sw	t2, -108(s0)
		lw	t0, -96(s0)
		lw	t1, -108(s0)
		add	t2, t0, t1
		sw	t2, -112(s0)
		lw	t0, -112(s0)
		lw	t1, 0(t0)
		sw	t1, -116(s0)
		li	t0, 0
		sw	t0, -120(s0)
		lw	t0, -120(s0)
		lw	t1, -116(s0)
		slt	t2, t0, t1
		sw	t2, -124(s0)
		lw	t0, -124(s0)
		mv	t1, t0
		sw	t1, -92(s0)
		j	.update_13AND_AND_OUT
.update_13AND_AND_OUT:
		lw	t0, -92(s0)
		bnez	t0, .update_20
		j	.update_54
.update_20:
		lw	t1, my_now
		sw	t1, -128(s0)
		lw	t1, -12(s0)
		sw	t1, -132(s0)
		li	t0, 4
		sw	t0, -136(s0)
		lw	t0, -132(s0)
		lw	t1, -136(s0)
		mul	t2, t0, t1
		sw	t2, -140(s0)
		lw	t0, -128(s0)
		lw	t1, -140(s0)
		add	t2, t0, t1
		sw	t2, -144(s0)
		lw	t1, my_now
		sw	t1, -148(s0)
		lw	t1, -12(s0)
		sw	t1, -152(s0)
		li	t0, 4
		sw	t0, -156(s0)
		lw	t0, -152(s0)
		lw	t1, -156(s0)
		mul	t2, t0, t1
		sw	t2, -160(s0)
		lw	t0, -148(s0)
		lw	t1, -160(s0)
		add	t2, t0, t1
		sw	t2, -164(s0)
		lw	t0, -164(s0)
		lw	t1, 0(t0)
		sw	t1, -168(s0)
		li	t0, 1
		sw	t0, -172(s0)
		lw	t0, -168(s0)
		lw	t1, -172(s0)
		add	t2, t0, t1
		sw	t2, -176(s0)
		lw	t1, my_L
		sw	t1, -180(s0)
		lw	t0, -176(s0)
		lw	t1, -180(s0)
		rem	t2, t0, t1
		sw	t2, -184(s0)
		lw	t0, -184(s0)
		lw	t1, -144(s0)
		sw	t0, 0(t1)
		lw	t1, my_sum
		sw	t1, -188(s0)
		lw	t1, -12(s0)
		sw	t1, -192(s0)
		li	t0, 4
		sw	t0, -196(s0)
		lw	t0, -192(s0)
		lw	t1, -196(s0)
		mul	t2, t0, t1
		sw	t2, -200(s0)
		lw	t0, -188(s0)
		lw	t1, -200(s0)
		add	t2, t0, t1
		sw	t2, -204(s0)
		lw	t1, my_s
		sw	t1, -208(s0)
		lw	t1, -12(s0)
		sw	t1, -212(s0)
		li	t0, 8
		sw	t0, -216(s0)
		lw	t0, -212(s0)
		lw	t1, -216(s0)
		mul	t2, t0, t1
		sw	t2, -220(s0)
		lw	t0, -208(s0)
		lw	t1, -220(s0)
		add	t2, t0, t1
		sw	t2, -224(s0)
		lw	t0, -224(s0)
		lw	t1, 0(t0)
		sw	t1, -228(s0)
		lw	t1, my_now
		sw	t1, -232(s0)
		lw	t1, -12(s0)
		sw	t1, -236(s0)
		li	t0, 4
		sw	t0, -240(s0)
		lw	t0, -236(s0)
		lw	t1, -240(s0)
		mul	t2, t0, t1
		sw	t2, -244(s0)
		lw	t0, -232(s0)
		lw	t1, -244(s0)
		add	t2, t0, t1
		sw	t2, -248(s0)
		lw	t0, -248(s0)
		lw	t1, 0(t0)
		sw	t1, -252(s0)
		li	t0, 4
		sw	t0, -256(s0)
		lw	t0, -252(s0)
		lw	t1, -256(s0)
		mul	t2, t0, t1
		sw	t2, -260(s0)
		lw	t0, -228(s0)
		lw	t1, -260(s0)
		add	t2, t0, t1
		sw	t2, -264(s0)
		lw	t0, -264(s0)
		lw	t1, 0(t0)
		sw	t1, -268(s0)
		lw	t0, -268(s0)
		lw	t1, -204(s0)
		sw	t0, 0(t1)
		lw	t1, my_t
		sw	t1, -272(s0)
		lw	t1, -12(s0)
		sw	t1, -276(s0)
		li	t0, 4
		sw	t0, -280(s0)
		lw	t0, -276(s0)
		lw	t1, -280(s0)
		mul	t2, t0, t1
		sw	t2, -284(s0)
		lw	t0, -272(s0)
		lw	t1, -284(s0)
		add	t2, t0, t1
		sw	t2, -288(s0)
		lw	t1, my_t
		sw	t1, -292(s0)
		lw	t1, -12(s0)
		sw	t1, -296(s0)
		li	t0, 4
		sw	t0, -300(s0)
		lw	t0, -296(s0)
		lw	t1, -300(s0)
		mul	t2, t0, t1
		sw	t2, -304(s0)
		lw	t0, -292(s0)
		lw	t1, -304(s0)
		add	t2, t0, t1
		sw	t2, -308(s0)
		lw	t0, -308(s0)
		lw	t1, 0(t0)
		sw	t1, -312(s0)
		li	t0, 1
		sw	t0, -316(s0)
		lw	t0, -312(s0)
		lw	t1, -316(s0)
		add	t2, t0, t1
		sw	t2, -320(s0)
		lw	t1, my_L
		sw	t1, -324(s0)
		lw	t0, -320(s0)
		lw	t1, -324(s0)
		rem	t2, t0, t1
		sw	t2, -328(s0)
		lw	t0, -328(s0)
		lw	t1, -288(s0)
		sw	t0, 0(t1)
		j	.updatereturn_block
.update_54:
		lw	t1, -16(s0)
		sw	t1, -332(s0)
		lw	t1, -20(s0)
		sw	t1, -336(s0)
		lw	t0, -332(s0)
		lw	t1, -336(s0)
		xor	t2, t0, t1
		sw	t2, -340(s0)
		lw	t0, -340(s0)
		sltiu	t1, t0, 1
		sw	t1, -340(s0)
		lw	t0, -340(s0)
		bnez	t0, .update_58
		j	.update_118
.update_58:
		lw	t1, my_sum
		sw	t1, -344(s0)
		lw	t1, -12(s0)
		sw	t1, -348(s0)
		li	t0, 4
		sw	t0, -352(s0)
		lw	t0, -348(s0)
		lw	t1, -352(s0)
		mul	t2, t0, t1
		sw	t2, -356(s0)
		lw	t0, -344(s0)
		lw	t1, -356(s0)
		add	t2, t0, t1
		sw	t2, -360(s0)
		lw	t1, my_sum
		sw	t1, -364(s0)
		lw	t1, -12(s0)
		sw	t1, -368(s0)
		li	t0, 4
		sw	t0, -372(s0)
		lw	t0, -368(s0)
		lw	t1, -372(s0)
		mul	t2, t0, t1
		sw	t2, -376(s0)
		lw	t0, -364(s0)
		lw	t1, -376(s0)
		add	t2, t0, t1
		sw	t2, -380(s0)
		lw	t0, -380(s0)
		lw	t1, 0(t0)
		sw	t1, -384(s0)
		lw	t0, -384(s0)
		mv	a0, t0
		call	square
		mv	t1, a0
		sw	t1, -388(s0)
		lw	t1, my_p
		sw	t1, -392(s0)
		lw	t0, -388(s0)
		lw	t1, -392(s0)
		rem	t2, t0, t1
		sw	t2, -396(s0)
		lw	t0, -396(s0)
		lw	t1, -360(s0)
		sw	t0, 0(t1)
		lw	t1, my_b
		sw	t1, -400(s0)
		lw	t1, my_sum
		sw	t1, -404(s0)
		lw	t1, -12(s0)
		sw	t1, -408(s0)
		li	t0, 4
		sw	t0, -412(s0)
		lw	t0, -408(s0)
		lw	t1, -412(s0)
		mul	t2, t0, t1
		sw	t2, -416(s0)
		lw	t0, -404(s0)
		lw	t1, -416(s0)
		add	t2, t0, t1
		sw	t2, -420(s0)
		lw	t0, -420(s0)
		lw	t1, 0(t0)
		sw	t1, -424(s0)
		li	t0, 4
		sw	t0, -428(s0)
		lw	t0, -424(s0)
		lw	t1, -428(s0)
		mul	t2, t0, t1
		sw	t2, -432(s0)
		lw	t0, -400(s0)
		lw	t1, -432(s0)
		add	t2, t0, t1
		sw	t2, -436(s0)
		lw	t0, -436(s0)
		lw	t1, 0(t0)
		sw	t1, -440(s0)
		li	t0, 0
		sw	t0, -444(s0)
		lw	t0, -444(s0)
		lw	t1, -440(s0)
		slt	t2, t0, t1
		sw	t2, -448(s0)
		lw	t0, -448(s0)
		bnez	t0, .update_77
		j	.update_117
.update_77:
		lw	t1, my_flag
		sw	t1, -452(s0)
		lw	t1, -12(s0)
		sw	t1, -456(s0)
		li	t0, 4
		sw	t0, -460(s0)
		lw	t0, -456(s0)
		lw	t1, -460(s0)
		mul	t2, t0, t1
		sw	t2, -464(s0)
		lw	t0, -452(s0)
		lw	t1, -464(s0)
		add	t2, t0, t1
		sw	t2, -468(s0)
		li	t0, 1
		sw	t0, -472(s0)
		lw	t0, -472(s0)
		lw	t1, -468(s0)
		sw	t0, 0(t1)
		lw	t1, my_s
		sw	t1, -476(s0)
		lw	t1, -12(s0)
		sw	t1, -480(s0)
		li	t0, 8
		sw	t0, -484(s0)
		lw	t0, -480(s0)
		lw	t1, -484(s0)
		mul	t2, t0, t1
		sw	t2, -488(s0)
		lw	t0, -476(s0)
		lw	t1, -488(s0)
		add	t2, t0, t1
		sw	t2, -492(s0)
		lw	t0, -492(s0)
		lw	t1, 0(t0)
		sw	t1, -496(s0)
		li	t0, 0
		sw	t0, -500(s0)
		li	t0, 4
		sw	t0, -504(s0)
		lw	t0, -500(s0)
		lw	t1, -504(s0)
		mul	t2, t0, t1
		sw	t2, -508(s0)
		lw	t0, -496(s0)
		lw	t1, -508(s0)
		add	t2, t0, t1
		sw	t2, -512(s0)
		lw	t1, my_sum
		sw	t1, -516(s0)
		lw	t1, -12(s0)
		sw	t1, -520(s0)
		li	t0, 4
		sw	t0, -524(s0)
		lw	t0, -520(s0)
		lw	t1, -524(s0)
		mul	t2, t0, t1
		sw	t2, -528(s0)
		lw	t0, -516(s0)
		lw	t1, -528(s0)
		add	t2, t0, t1
		sw	t2, -532(s0)
		lw	t0, -532(s0)
		lw	t1, 0(t0)
		sw	t1, -536(s0)
		lw	t0, -536(s0)
		lw	t1, -512(s0)
		sw	t0, 0(t1)
		li	t0, 0
		sw	t0, -540(s0)
		lw	t0, -540(s0)
		sw	t0, -24(s0)
		li	t0, 1
		sw	t0, -544(s0)
		lw	t0, -544(s0)
		sw	t0, -24(s0)
		j	.update_91
.update_91:
		lw	t1, -24(s0)
		sw	t1, -548(s0)
		lw	t1, my_L
		sw	t1, -552(s0)
		lw	t0, -548(s0)
		lw	t1, -552(s0)
		slt	t2, t0, t1
		sw	t2, -556(s0)
		lw	t0, -556(s0)
		bnez	t0, .update_95
		j	.update_116
.update_95:
		lw	t1, my_s
		sw	t1, -560(s0)
		lw	t1, -12(s0)
		sw	t1, -564(s0)
		li	t0, 8
		sw	t0, -568(s0)
		lw	t0, -564(s0)
		lw	t1, -568(s0)
		mul	t2, t0, t1
		sw	t2, -572(s0)
		lw	t0, -560(s0)
		lw	t1, -572(s0)
		add	t2, t0, t1
		sw	t2, -576(s0)
		lw	t0, -576(s0)
		lw	t1, 0(t0)
		sw	t1, -580(s0)
		lw	t1, -24(s0)
		sw	t1, -584(s0)
		li	t0, 4
		sw	t0, -588(s0)
		lw	t0, -584(s0)
		lw	t1, -588(s0)
		mul	t2, t0, t1
		sw	t2, -592(s0)
		lw	t0, -580(s0)
		lw	t1, -592(s0)
		add	t2, t0, t1
		sw	t2, -596(s0)
		lw	t1, my_s
		sw	t1, -600(s0)
		lw	t1, -12(s0)
		sw	t1, -604(s0)
		li	t0, 8
		sw	t0, -608(s0)
		lw	t0, -604(s0)
		lw	t1, -608(s0)
		mul	t2, t0, t1
		sw	t2, -612(s0)
		lw	t0, -600(s0)
		lw	t1, -612(s0)
		add	t2, t0, t1
		sw	t2, -616(s0)
		lw	t0, -616(s0)
		lw	t1, 0(t0)
		sw	t1, -620(s0)
		lw	t1, -24(s0)
		sw	t1, -624(s0)
		li	t0, 1
		sw	t0, -628(s0)
		lw	t0, -624(s0)
		lw	t1, -628(s0)
		sub	t2, t0, t1
		sw	t2, -632(s0)
		li	t0, 4
		sw	t0, -636(s0)
		lw	t0, -632(s0)
		lw	t1, -636(s0)
		mul	t2, t0, t1
		sw	t2, -640(s0)
		lw	t0, -620(s0)
		lw	t1, -640(s0)
		add	t2, t0, t1
		sw	t2, -644(s0)
		lw	t0, -644(s0)
		lw	t1, 0(t0)
		sw	t1, -648(s0)
		lw	t0, -648(s0)
		mv	a0, t0
		call	square
		mv	t1, a0
		sw	t1, -652(s0)
		lw	t1, my_p
		sw	t1, -656(s0)
		lw	t0, -652(s0)
		lw	t1, -656(s0)
		rem	t2, t0, t1
		sw	t2, -660(s0)
		lw	t0, -660(s0)
		lw	t1, -596(s0)
		sw	t0, 0(t1)
		j	.update_113
.update_113:
		lw	t1, -24(s0)
		sw	t1, -664(s0)
		li	t0, 1
		sw	t0, -668(s0)
		lw	t0, -664(s0)
		lw	t1, -668(s0)
		add	t2, t0, t1
		sw	t2, -672(s0)
		lw	t0, -672(s0)
		sw	t0, -24(s0)
		j	.update_91
.update_116:
		j	.update_117
.update_117:
		j	.updatereturn_block
.update_118:
		lw	t1, my_t
		sw	t1, -676(s0)
		lw	t1, -12(s0)
		sw	t1, -680(s0)
		li	t0, 4
		sw	t0, -684(s0)
		lw	t0, -680(s0)
		lw	t1, -684(s0)
		mul	t2, t0, t1
		sw	t2, -688(s0)
		lw	t0, -676(s0)
		lw	t1, -688(s0)
		add	t2, t0, t1
		sw	t2, -692(s0)
		lw	t0, -692(s0)
		lw	t1, 0(t0)
		sw	t1, -696(s0)
		li	t0, 0
		sw	t0, -700(s0)
		lw	t0, -700(s0)
		lw	t1, -696(s0)
		slt	t2, t0, t1
		sw	t2, -704(s0)
		lw	t0, -704(s0)
		bnez	t0, .update_124
		j	.update_127
.update_124:
		lw	t1, -12(s0)
		sw	t1, -708(s0)
		lw	t0, -708(s0)
		mv	a0, t0
		call	pushdown
		j	.update_127
.update_127:
		lw	t1, -12(s0)
		sw	t1, -712(s0)
		li	t0, 2
		sw	t0, -716(s0)
		lw	t0, -712(s0)
		lw	t1, -716(s0)
		mul	t2, t0, t1
		sw	t2, -720(s0)
		lw	t0, -720(s0)
		sw	t0, -28(s0)
		lw	t1, -12(s0)
		sw	t1, -724(s0)
		li	t0, 2
		sw	t0, -728(s0)
		lw	t0, -724(s0)
		lw	t1, -728(s0)
		mul	t2, t0, t1
		sw	t2, -732(s0)
		li	t0, 1
		sw	t0, -736(s0)
		lw	t0, -732(s0)
		lw	t1, -736(s0)
		add	t2, t0, t1
		sw	t2, -740(s0)
		lw	t0, -740(s0)
		sw	t0, -32(s0)
		lw	t1, -16(s0)
		sw	t1, -744(s0)
		lw	t1, -20(s0)
		sw	t1, -748(s0)
		lw	t0, -744(s0)
		lw	t1, -748(s0)
		add	t2, t0, t1
		sw	t2, -752(s0)
		li	t0, 2
		sw	t0, -756(s0)
		lw	t0, -752(s0)
		lw	t1, -756(s0)
		div	t2, t0, t1
		sw	t2, -760(s0)
		lw	t0, -760(s0)
		sw	t0, -36(s0)
		lw	t1, my_pl
		sw	t1, -764(s0)
		lw	t1, -36(s0)
		sw	t1, -768(s0)
		lw	t0, -768(s0)
		lw	t1, -764(s0)
		slt	t2, t0, t1
		sw	t2, -772(s0)
		lw	t0, -772(s0)
		xori	t1, t0, 1
		sw	t1, -772(s0)
		lw	t0, -772(s0)
		bnez	t0, .update_143
		j	.update_148
.update_143:
		lw	t1, -28(s0)
		sw	t1, -776(s0)
		lw	t1, -16(s0)
		sw	t1, -780(s0)
		lw	t1, -36(s0)
		sw	t1, -784(s0)
		lw	t0, -776(s0)
		mv	a0, t0
		lw	t0, -780(s0)
		mv	a1, t0
		lw	t0, -784(s0)
		mv	a2, t0
		call	update
		j	.update_148
.update_148:
		lw	t1, my_pr
		sw	t1, -788(s0)
		lw	t1, -36(s0)
		sw	t1, -792(s0)
		li	t0, 1
		sw	t0, -796(s0)
		lw	t0, -792(s0)
		lw	t1, -796(s0)
		add	t2, t0, t1
		sw	t2, -800(s0)
		lw	t0, -788(s0)
		lw	t1, -800(s0)
		slt	t2, t0, t1
		sw	t2, -804(s0)
		lw	t0, -804(s0)
		xori	t1, t0, 1
		sw	t1, -804(s0)
		lw	t0, -804(s0)
		bnez	t0, .update_153
		j	.update_159
.update_153:
		lw	t1, -32(s0)
		sw	t1, -808(s0)
		lw	t1, -36(s0)
		sw	t1, -812(s0)
		li	t0, 1
		sw	t0, -816(s0)
		lw	t0, -812(s0)
		lw	t1, -816(s0)
		add	t2, t0, t1
		sw	t2, -820(s0)
		lw	t1, -20(s0)
		sw	t1, -824(s0)
		lw	t0, -808(s0)
		mv	a0, t0
		lw	t0, -820(s0)
		mv	a1, t0
		lw	t0, -824(s0)
		mv	a2, t0
		call	update
		j	.update_159
.update_159:
		lw	t1, my_sum
		sw	t1, -828(s0)
		lw	t1, -12(s0)
		sw	t1, -832(s0)
		li	t0, 4
		sw	t0, -836(s0)
		lw	t0, -832(s0)
		lw	t1, -836(s0)
		mul	t2, t0, t1
		sw	t2, -840(s0)
		lw	t0, -828(s0)
		lw	t1, -840(s0)
		add	t2, t0, t1
		sw	t2, -844(s0)
		lw	t1, my_sum
		sw	t1, -848(s0)
		lw	t1, -28(s0)
		sw	t1, -852(s0)
		li	t0, 4
		sw	t0, -856(s0)
		lw	t0, -852(s0)
		lw	t1, -856(s0)
		mul	t2, t0, t1
		sw	t2, -860(s0)
		lw	t0, -848(s0)
		lw	t1, -860(s0)
		add	t2, t0, t1
		sw	t2, -864(s0)
		lw	t0, -864(s0)
		lw	t1, 0(t0)
		sw	t1, -868(s0)
		lw	t1, my_sum
		sw	t1, -872(s0)
		lw	t1, -32(s0)
		sw	t1, -876(s0)
		li	t0, 4
		sw	t0, -880(s0)
		lw	t0, -876(s0)
		lw	t1, -880(s0)
		mul	t2, t0, t1
		sw	t2, -884(s0)
		lw	t0, -872(s0)
		lw	t1, -884(s0)
		add	t2, t0, t1
		sw	t2, -888(s0)
		lw	t0, -888(s0)
		lw	t1, 0(t0)
		sw	t1, -892(s0)
		lw	t0, -868(s0)
		lw	t1, -892(s0)
		add	t2, t0, t1
		sw	t2, -896(s0)
		lw	t0, -896(s0)
		lw	t1, -844(s0)
		sw	t0, 0(t1)
		lw	t1, my_flag
		sw	t1, -900(s0)
		lw	t1, -12(s0)
		sw	t1, -904(s0)
		li	t0, 4
		sw	t0, -908(s0)
		lw	t0, -904(s0)
		lw	t1, -908(s0)
		mul	t2, t0, t1
		sw	t2, -912(s0)
		lw	t0, -900(s0)
		lw	t1, -912(s0)
		add	t2, t0, t1
		sw	t2, -916(s0)
		lw	t1, my_flag
		sw	t1, -920(s0)
		lw	t1, -28(s0)
		sw	t1, -924(s0)
		li	t0, 4
		sw	t0, -928(s0)
		lw	t0, -924(s0)
		lw	t1, -928(s0)
		mul	t2, t0, t1
		sw	t2, -932(s0)
		lw	t0, -920(s0)
		lw	t1, -932(s0)
		add	t2, t0, t1
		sw	t2, -936(s0)
		lw	t0, -936(s0)
		lw	t1, 0(t0)
		sw	t1, -940(s0)
		lw	t1, my_flag
		sw	t1, -944(s0)
		lw	t1, -32(s0)
		sw	t1, -948(s0)
		li	t0, 4
		sw	t0, -952(s0)
		lw	t0, -948(s0)
		lw	t1, -952(s0)
		mul	t2, t0, t1
		sw	t2, -956(s0)
		lw	t0, -944(s0)
		lw	t1, -956(s0)
		add	t2, t0, t1
		sw	t2, -960(s0)
		lw	t0, -960(s0)
		lw	t1, 0(t0)
		sw	t1, -964(s0)
		lw	t0, -940(s0)
		lw	t1, -964(s0)
		and	t2, t0, t1
		sw	t2, -968(s0)
		lw	t0, -968(s0)
		lw	t1, -916(s0)
		sw	t0, 0(t1)
		lw	t1, my_flag
		sw	t1, -972(s0)
		lw	t1, -12(s0)
		sw	t1, -976(s0)
		li	t0, 4
		sw	t0, -980(s0)
		lw	t0, -976(s0)
		lw	t1, -980(s0)
		mul	t2, t0, t1
		sw	t2, -984(s0)
		lw	t0, -972(s0)
		lw	t1, -984(s0)
		add	t2, t0, t1
		sw	t2, -988(s0)
		lw	t0, -988(s0)
		lw	t1, 0(t0)
		sw	t1, -992(s0)
		li	t0, 0
		sw	t0, -996(s0)
		lw	t0, -996(s0)
		lw	t1, -992(s0)
		slt	t2, t0, t1
		sw	t2, -1000(s0)
		lw	t0, -1000(s0)
		bnez	t0, .update_189
		j	.update_238
.update_189:
		li	t0, 0
		sw	t0, -1004(s0)
		lw	t0, -1004(s0)
		sw	t0, -40(s0)
		li	t0, 0
		sw	t0, -1008(s0)
		lw	t0, -1008(s0)
		sw	t0, -40(s0)
		j	.update_191
.update_191:
		lw	t1, -40(s0)
		sw	t1, -1012(s0)
		lw	t1, my_L
		sw	t1, -1016(s0)
		lw	t0, -1012(s0)
		lw	t1, -1016(s0)
		slt	t2, t0, t1
		sw	t2, -1020(s0)
		lw	t0, -1020(s0)
		bnez	t0, .update_195
		j	.update_234
.update_195:
		lw	t1, my_s
		sw	t1, -1024(s0)
		lw	t1, -12(s0)
		sw	t1, -1028(s0)
		li	t0, 8
		sw	t0, -1032(s0)
		lw	t0, -1028(s0)
		lw	t1, -1032(s0)
		mul	t2, t0, t1
		sw	t2, -1036(s0)
		lw	t0, -1024(s0)
		lw	t1, -1036(s0)
		add	t2, t0, t1
		sw	t2, -1040(s0)
		lw	t0, -1040(s0)
		lw	t1, 0(t0)
		sw	t1, -1044(s0)
		lw	t1, -40(s0)
		sw	t1, -1048(s0)
		li	t0, 4
		sw	t0, -1052(s0)
		lw	t0, -1048(s0)
		lw	t1, -1052(s0)
		mul	t2, t0, t1
		sw	t2, -1056(s0)
		lw	t0, -1044(s0)
		lw	t1, -1056(s0)
		add	t2, t0, t1
		sw	t2, -1060(s0)
		lw	t1, my_s
		sw	t1, -1064(s0)
		lw	t1, -28(s0)
		sw	t1, -1068(s0)
		li	t0, 8
		sw	t0, -1072(s0)
		lw	t0, -1068(s0)
		lw	t1, -1072(s0)
		mul	t2, t0, t1
		sw	t2, -1076(s0)
		lw	t0, -1064(s0)
		lw	t1, -1076(s0)
		add	t2, t0, t1
		sw	t2, -1080(s0)
		lw	t0, -1080(s0)
		lw	t1, 0(t0)
		sw	t1, -1084(s0)
		lw	t1, -40(s0)
		sw	t1, -1088(s0)
		lw	t1, my_now
		sw	t1, -1092(s0)
		lw	t1, -28(s0)
		sw	t1, -1096(s0)
		li	t0, 4
		sw	t0, -1100(s0)
		lw	t0, -1096(s0)
		lw	t1, -1100(s0)
		mul	t2, t0, t1
		sw	t2, -1104(s0)
		lw	t0, -1092(s0)
		lw	t1, -1104(s0)
		add	t2, t0, t1
		sw	t2, -1108(s0)
		lw	t0, -1108(s0)
		lw	t1, 0(t0)
		sw	t1, -1112(s0)
		lw	t0, -1088(s0)
		lw	t1, -1112(s0)
		add	t2, t0, t1
		sw	t2, -1116(s0)
		lw	t1, my_L
		sw	t1, -1120(s0)
		lw	t0, -1116(s0)
		lw	t1, -1120(s0)
		rem	t2, t0, t1
		sw	t2, -1124(s0)
		li	t0, 4
		sw	t0, -1128(s0)
		lw	t0, -1124(s0)
		lw	t1, -1128(s0)
		mul	t2, t0, t1
		sw	t2, -1132(s0)
		lw	t0, -1084(s0)
		lw	t1, -1132(s0)
		add	t2, t0, t1
		sw	t2, -1136(s0)
		lw	t0, -1136(s0)
		lw	t1, 0(t0)
		sw	t1, -1140(s0)
		lw	t1, my_s
		sw	t1, -1144(s0)
		lw	t1, -32(s0)
		sw	t1, -1148(s0)
		li	t0, 8
		sw	t0, -1152(s0)
		lw	t0, -1148(s0)
		lw	t1, -1152(s0)
		mul	t2, t0, t1
		sw	t2, -1156(s0)
		lw	t0, -1144(s0)
		lw	t1, -1156(s0)
		add	t2, t0, t1
		sw	t2, -1160(s0)
		lw	t0, -1160(s0)
		lw	t1, 0(t0)
		sw	t1, -1164(s0)
		lw	t1, -40(s0)
		sw	t1, -1168(s0)
		lw	t1, my_now
		sw	t1, -1172(s0)
		lw	t1, -32(s0)
		sw	t1, -1176(s0)
		li	t0, 4
		sw	t0, -1180(s0)
		lw	t0, -1176(s0)
		lw	t1, -1180(s0)
		mul	t2, t0, t1
		sw	t2, -1184(s0)
		lw	t0, -1172(s0)
		lw	t1, -1184(s0)
		add	t2, t0, t1
		sw	t2, -1188(s0)
		lw	t0, -1188(s0)
		lw	t1, 0(t0)
		sw	t1, -1192(s0)
		lw	t0, -1168(s0)
		lw	t1, -1192(s0)
		add	t2, t0, t1
		sw	t2, -1196(s0)
		lw	t1, my_L
		sw	t1, -1200(s0)
		lw	t0, -1196(s0)
		lw	t1, -1200(s0)
		rem	t2, t0, t1
		sw	t2, -1204(s0)
		li	t0, 4
		sw	t0, -1208(s0)
		lw	t0, -1204(s0)
		lw	t1, -1208(s0)
		mul	t2, t0, t1
		sw	t2, -1212(s0)
		lw	t0, -1164(s0)
		lw	t1, -1212(s0)
		add	t2, t0, t1
		sw	t2, -1216(s0)
		lw	t0, -1216(s0)
		lw	t1, 0(t0)
		sw	t1, -1220(s0)
		lw	t0, -1140(s0)
		lw	t1, -1220(s0)
		add	t2, t0, t1
		sw	t2, -1224(s0)
		lw	t0, -1224(s0)
		lw	t1, -1060(s0)
		sw	t0, 0(t1)
		j	.update_231
.update_231:
		lw	t1, -40(s0)
		sw	t1, -1228(s0)
		li	t0, 1
		sw	t0, -1232(s0)
		lw	t0, -1228(s0)
		lw	t1, -1232(s0)
		add	t2, t0, t1
		sw	t2, -1236(s0)
		lw	t0, -1236(s0)
		sw	t0, -40(s0)
		j	.update_191
.update_234:
		lw	t1, my_now
		sw	t1, -1240(s0)
		lw	t1, -12(s0)
		sw	t1, -1244(s0)
		li	t0, 4
		sw	t0, -1248(s0)
		lw	t0, -1244(s0)
		lw	t1, -1248(s0)
		mul	t2, t0, t1
		sw	t2, -1252(s0)
		lw	t0, -1240(s0)
		lw	t1, -1252(s0)
		add	t2, t0, t1
		sw	t2, -1256(s0)
		li	t0, 0
		sw	t0, -1260(s0)
		lw	t0, -1260(s0)
		lw	t1, -1256(s0)
		sw	t0, 0(t1)
		j	.update_238
.update_238:
		j	.updatereturn_block
.updatereturn_block:
		li	t0, 1264
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	query
	.p2align	2
	.type	query,@function
query:
.query_parameters:
		li	t0, 320
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -44(s0)
		mv	t1, a1
		sw	t1, -48(s0)
		mv	t1, a2
		sw	t1, -52(s0)
.query:
		lw	t0, -44(s0)
		sw	t0, -16(s0)
		lw	t0, -48(s0)
		sw	t0, -20(s0)
		lw	t0, -52(s0)
		sw	t0, -24(s0)
		lw	t1, my_pl
		sw	t1, -56(s0)
		lw	t1, -20(s0)
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		lw	t1, -56(s0)
		slt	t2, t0, t1
		sw	t2, -64(s0)
		lw	t0, -64(s0)
		xori	t1, t0, 1
		sw	t1, -64(s0)
		li	t0, 0
		sw	t0, -68(s0)
		lw	t0, -68(s0)
		mv	t1, t0
		sw	t1, -72(s0)
		lw	t0, -64(s0)
		bnez	t0, .query_10AND_AND_TRUE
		lw	t0, -68(s0)
		mv	t1, t0
		sw	t1, -72(s0)
		j	.query_10AND_AND_OUT
.query_10AND_AND_TRUE:
		lw	t1, my_pr
		sw	t1, -76(s0)
		lw	t1, -24(s0)
		sw	t1, -80(s0)
		lw	t0, -76(s0)
		lw	t1, -80(s0)
		slt	t2, t0, t1
		sw	t2, -84(s0)
		lw	t0, -84(s0)
		xori	t1, t0, 1
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		mv	t1, t0
		sw	t1, -72(s0)
		j	.query_10AND_AND_OUT
.query_10AND_AND_OUT:
		lw	t0, -72(s0)
		bnez	t0, .query_15
		j	.query_20
.query_15:
		lw	t1, my_sum
		sw	t1, -88(s0)
		lw	t1, -16(s0)
		sw	t1, -92(s0)
		li	t0, 4
		sw	t0, -96(s0)
		lw	t0, -92(s0)
		lw	t1, -96(s0)
		mul	t2, t0, t1
		sw	t2, -100(s0)
		lw	t0, -88(s0)
		lw	t1, -100(s0)
		add	t2, t0, t1
		sw	t2, -104(s0)
		lw	t0, -104(s0)
		lw	t1, 0(t0)
		sw	t1, -108(s0)
		lw	t0, -108(s0)
		sw	t0, -12(s0)
		j	.queryreturn_block
.query_20:
		lw	t1, -16(s0)
		sw	t1, -112(s0)
		li	t0, 2
		sw	t0, -116(s0)
		lw	t0, -112(s0)
		lw	t1, -116(s0)
		mul	t2, t0, t1
		sw	t2, -120(s0)
		lw	t0, -120(s0)
		sw	t0, -28(s0)
		lw	t1, -16(s0)
		sw	t1, -124(s0)
		li	t0, 2
		sw	t0, -128(s0)
		lw	t0, -124(s0)
		lw	t1, -128(s0)
		mul	t2, t0, t1
		sw	t2, -132(s0)
		li	t0, 1
		sw	t0, -136(s0)
		lw	t0, -132(s0)
		lw	t1, -136(s0)
		add	t2, t0, t1
		sw	t2, -140(s0)
		lw	t0, -140(s0)
		sw	t0, -32(s0)
		lw	t1, -20(s0)
		sw	t1, -144(s0)
		lw	t1, -24(s0)
		sw	t1, -148(s0)
		lw	t0, -144(s0)
		lw	t1, -148(s0)
		add	t2, t0, t1
		sw	t2, -152(s0)
		li	t0, 2
		sw	t0, -156(s0)
		lw	t0, -152(s0)
		lw	t1, -156(s0)
		div	t2, t0, t1
		sw	t2, -160(s0)
		lw	t0, -160(s0)
		sw	t0, -36(s0)
		li	t0, 0
		sw	t0, -164(s0)
		lw	t0, -164(s0)
		sw	t0, -40(s0)
		lw	t1, my_t
		sw	t1, -168(s0)
		lw	t1, -16(s0)
		sw	t1, -172(s0)
		li	t0, 4
		sw	t0, -176(s0)
		lw	t0, -172(s0)
		lw	t1, -176(s0)
		mul	t2, t0, t1
		sw	t2, -180(s0)
		lw	t0, -168(s0)
		lw	t1, -180(s0)
		add	t2, t0, t1
		sw	t2, -184(s0)
		lw	t0, -184(s0)
		lw	t1, 0(t0)
		sw	t1, -188(s0)
		li	t0, 0
		sw	t0, -192(s0)
		lw	t0, -192(s0)
		lw	t1, -188(s0)
		slt	t2, t0, t1
		sw	t2, -196(s0)
		lw	t0, -196(s0)
		bnez	t0, .query_39
		j	.query_42
.query_39:
		lw	t1, -16(s0)
		sw	t1, -200(s0)
		lw	t0, -200(s0)
		mv	a0, t0
		call	pushdown
		j	.query_42
.query_42:
		lw	t1, my_pl
		sw	t1, -204(s0)
		lw	t1, -36(s0)
		sw	t1, -208(s0)
		lw	t0, -208(s0)
		lw	t1, -204(s0)
		slt	t2, t0, t1
		sw	t2, -212(s0)
		lw	t0, -212(s0)
		xori	t1, t0, 1
		sw	t1, -212(s0)
		lw	t0, -212(s0)
		bnez	t0, .query_46
		j	.query_55
.query_46:
		lw	t1, -40(s0)
		sw	t1, -216(s0)
		lw	t1, -28(s0)
		sw	t1, -220(s0)
		lw	t1, -20(s0)
		sw	t1, -224(s0)
		lw	t1, -36(s0)
		sw	t1, -228(s0)
		lw	t0, -220(s0)
		mv	a0, t0
		lw	t0, -224(s0)
		mv	a1, t0
		lw	t0, -228(s0)
		mv	a2, t0
		call	query
		mv	t1, a0
		sw	t1, -232(s0)
		lw	t0, -216(s0)
		lw	t1, -232(s0)
		add	t2, t0, t1
		sw	t2, -236(s0)
		lw	t1, my_MOD
		sw	t1, -240(s0)
		lw	t0, -236(s0)
		lw	t1, -240(s0)
		rem	t2, t0, t1
		sw	t2, -244(s0)
		lw	t0, -244(s0)
		sw	t0, -40(s0)
		j	.query_55
.query_55:
		lw	t1, my_pr
		sw	t1, -248(s0)
		lw	t1, -36(s0)
		sw	t1, -252(s0)
		li	t0, 1
		sw	t0, -256(s0)
		lw	t0, -252(s0)
		lw	t1, -256(s0)
		add	t2, t0, t1
		sw	t2, -260(s0)
		lw	t0, -248(s0)
		lw	t1, -260(s0)
		slt	t2, t0, t1
		sw	t2, -264(s0)
		lw	t0, -264(s0)
		xori	t1, t0, 1
		sw	t1, -264(s0)
		lw	t0, -264(s0)
		bnez	t0, .query_60
		j	.query_70
.query_60:
		lw	t1, -40(s0)
		sw	t1, -268(s0)
		lw	t1, -32(s0)
		sw	t1, -272(s0)
		lw	t1, -36(s0)
		sw	t1, -276(s0)
		li	t0, 1
		sw	t0, -280(s0)
		lw	t0, -276(s0)
		lw	t1, -280(s0)
		add	t2, t0, t1
		sw	t2, -284(s0)
		lw	t1, -24(s0)
		sw	t1, -288(s0)
		lw	t0, -272(s0)
		mv	a0, t0
		lw	t0, -284(s0)
		mv	a1, t0
		lw	t0, -288(s0)
		mv	a2, t0
		call	query
		mv	t1, a0
		sw	t1, -292(s0)
		lw	t0, -268(s0)
		lw	t1, -292(s0)
		add	t2, t0, t1
		sw	t2, -296(s0)
		lw	t1, my_MOD
		sw	t1, -300(s0)
		lw	t0, -296(s0)
		lw	t1, -300(s0)
		rem	t2, t0, t1
		sw	t2, -304(s0)
		lw	t0, -304(s0)
		sw	t0, -40(s0)
		j	.query_70
.query_70:
		lw	t1, -40(s0)
		sw	t1, -308(s0)
		lw	t0, -308(s0)
		sw	t0, -12(s0)
		j	.queryreturn_block
.queryreturn_block:
		lw	t1, -12(s0)
		sw	t1, -312(s0)
		lw	t0, -312(s0)
		mv	a0, t0
		li	t0, 320
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.section	.sbss
	.type	my_b,@object
	.globl	my_b
	.p2align	2
my_b:
	.word	0
	.size	my_b, 8

	.section	.sbss
	.type	my_now,@object
	.globl	my_now
	.p2align	2
my_now:
	.word	0
	.size	my_now, 8

	.section	.sbss
	.type	my_t,@object
	.globl	my_t
	.p2align	2
my_t:
	.word	0
	.size	my_t, 8

	.section	.sbss
	.type	my_a,@object
	.globl	my_a
	.p2align	2
my_a:
	.word	0
	.size	my_a, 8

	.section	.sbss
	.type	my_n,@object
	.globl	my_n
	.p2align	2
my_n:
	.word	0
	.size	my_n, 8

	.section	.sbss
	.type	my_m,@object
	.globl	my_m
	.p2align	2
my_m:
	.word	0
	.size	my_m, 8

	.section	.sbss
	.type	my_p,@object
	.globl	my_p
	.p2align	2
my_p:
	.word	0
	.size	my_p, 8

	.section	.sbss
	.type	my_op,@object
	.globl	my_op
	.p2align	2
my_op:
	.word	0
	.size	my_op, 8

	.section	.sbss
	.type	my_L,@object
	.globl	my_L
	.p2align	2
my_L:
	.word	1
	.size	my_L, 8

	.section	.sbss
	.type	my_flag,@object
	.globl	my_flag
	.p2align	2
my_flag:
	.word	0
	.size	my_flag, 8

	.section	.sbss
	.type	my_s,@object
	.globl	my_s
	.p2align	2
my_s:
	.word	0
	.size	my_s, 8

	.section	.sbss
	.type	my_sum,@object
	.globl	my_sum
	.p2align	2
my_sum:
	.word	0
	.size	my_sum, 8

	.section	.sbss
	.type	my_ans,@object
	.globl	my_ans
	.p2align	2
my_ans:
	.word	0
	.size	my_ans, 8

	.section	.sbss
	.type	my_aa,@object
	.globl	my_aa
	.p2align	2
my_aa:
	.word	13131
	.size	my_aa, 8

	.section	.sbss
	.type	my_bb,@object
	.globl	my_bb
	.p2align	2
my_bb:
	.word	5353
	.size	my_bb, 8

	.section	.sbss
	.type	my_MOD,@object
	.globl	my_MOD
	.p2align	2
my_MOD:
	.word	0
	.size	my_MOD, 8

	.section	.sbss
	.type	my_no,@object
	.globl	my_no
	.p2align	2
my_no:
	.word	1
	.size	my_no, 8

	.section	.sbss
	.type	my_pl,@object
	.globl	my_pl
	.p2align	2
my_pl:
	.word	0
	.size	my_pl, 8

	.section	.sbss
	.type	my_pr,@object
	.globl	my_pr
	.p2align	2
my_pr:
	.word	0
	.size	my_pr, 8


