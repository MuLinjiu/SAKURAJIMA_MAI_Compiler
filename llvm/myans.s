	.text

	.globl	Edge
	.p2align	2
	.type	Edge,@function
Edge:
.Edge_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -16(s0)
.Edge:
		lw	t0, -16(s0)
		sw	t0, -12(s0)
		j	.Edgereturn_block
.Edgereturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_parameters:
		li	t0, 960
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.main:
		li	t0, 0
		sw	t0, -40(s0)
		lw	t0, -40(s0)
		sw	t0, -12(s0)
		call	getInt
		mv	t1, a0
		sw	t1, -44(s0)
		lw	t0, -44(s0)
		lw	t1, -48(s0)
		sw	t0, my_n, t1
		call	getInt
		mv	t1, a0
		sw	t1, -52(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		sw	t0, my_m, t1
		lw	t1, my_n
		sw	t1, -60(s0)
		li	t0, 1
		sw	t0, -64(s0)
		lw	t0, -60(s0)
		lw	t1, -64(s0)
		add	t2, t0, t1
		sw	t2, -68(s0)
		li	t0, 4
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
		lw	t0, -68(s0)
		lw	t1, -88(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -92(s0)
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
		lw	t1, -108(s0)
		sw	t0, my_pick, t1
		lw	t1, my_n
		sw	t1, -112(s0)
		li	t0, 1
		sw	t0, -116(s0)
		lw	t0, -112(s0)
		lw	t1, -116(s0)
		add	t2, t0, t1
		sw	t2, -120(s0)
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
		lw	t0, -120(s0)
		lw	t1, -140(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -144(s0)
		li	t0, 4
		sw	t0, -148(s0)
		lw	t0, -144(s0)
		lw	t1, -148(s0)
		mul	t2, t0, t1
		sw	t2, -152(s0)
		lw	t0, -140(s0)
		lw	t1, -152(s0)
		add	t2, t0, t1
		sw	t2, -156(s0)
		lw	t0, -156(s0)
		lw	t1, -160(s0)
		sw	t0, my_fst, t1
		lw	t1, my_n
		sw	t1, -164(s0)
		li	t0, 1
		sw	t0, -168(s0)
		lw	t0, -164(s0)
		lw	t1, -168(s0)
		add	t2, t0, t1
		sw	t2, -172(s0)
		li	t0, 4
		sw	t0, -176(s0)
		lw	t0, -172(s0)
		lw	t1, -176(s0)
		mul	t2, t0, t1
		sw	t2, -180(s0)
		li	t0, 4
		sw	t0, -184(s0)
		lw	t0, -180(s0)
		lw	t1, -184(s0)
		add	t2, t0, t1
		sw	t2, -188(s0)
		lw	t0, -188(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -192(s0)
		lw	t0, -172(s0)
		lw	t1, -192(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -196(s0)
		li	t0, 4
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
		lw	t1, -212(s0)
		sw	t0, my_dis, t1
		lw	t1, my_m
		sw	t1, -216(s0)
		li	t0, 2
		sw	t0, -220(s0)
		lw	t0, -220(s0)
		lw	t1, -216(s0)
		mul	t2, t0, t1
		sw	t2, -224(s0)
		li	t0, 1
		sw	t0, -228(s0)
		lw	t0, -224(s0)
		lw	t1, -228(s0)
		add	t2, t0, t1
		sw	t2, -232(s0)
		li	t0, 16
		sw	t0, -236(s0)
		lw	t0, -232(s0)
		lw	t1, -236(s0)
		mul	t2, t0, t1
		sw	t2, -240(s0)
		li	t0, 4
		sw	t0, -244(s0)
		lw	t0, -240(s0)
		lw	t1, -244(s0)
		add	t2, t0, t1
		sw	t2, -248(s0)
		lw	t0, -248(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -252(s0)
		lw	t0, -232(s0)
		lw	t1, -252(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -256(s0)
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
		lw	t0, -268(s0)
		lw	t1, -272(s0)
		sw	t0, my_ed, t1
		li	t0, 0
		sw	t0, -276(s0)
		lw	t0, -276(s0)
		sw	t0, -16(s0)
		j	.main_46
.main_46:
		lw	t1, -16(s0)
		sw	t1, -280(s0)
		lw	t1, my_n
		sw	t1, -284(s0)
		lw	t0, -284(s0)
		lw	t1, -280(s0)
		slt	t2, t0, t1
		sw	t2, -288(s0)
		lw	t0, -288(s0)
		xori	t1, t0, 1
		sw	t1, -288(s0)
		lw	t0, -288(s0)
		bnez	t0, .main_50
		j	.main_64
.main_50:
		lw	t1, my_pick
		sw	t1, -292(s0)
		lw	t1, -16(s0)
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
		li	t0, 0
		sw	t0, -312(s0)
		lw	t0, -312(s0)
		lw	t1, -308(s0)
		sw	t0, 0(t1)
		lw	t1, my_fst
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
		li	t0, 0
		sw	t0, -336(s0)
		lw	t0, -336(s0)
		lw	t1, -332(s0)
		sw	t0, 0(t1)
		lw	t1, my_dis
		sw	t1, -340(s0)
		lw	t1, -16(s0)
		sw	t1, -344(s0)
		li	t0, 4
		sw	t0, -348(s0)
		lw	t0, -344(s0)
		lw	t1, -348(s0)
		mul	t2, t0, t1
		sw	t2, -352(s0)
		lw	t0, -340(s0)
		lw	t1, -352(s0)
		add	t2, t0, t1
		sw	t2, -356(s0)
		lw	t1, my_MAX
		sw	t1, -360(s0)
		lw	t0, -360(s0)
		lw	t1, -356(s0)
		sw	t0, 0(t1)
		j	.main_61
.main_61:
		lw	t1, -16(s0)
		sw	t1, -364(s0)
		li	t0, 1
		sw	t0, -368(s0)
		lw	t0, -364(s0)
		lw	t1, -368(s0)
		add	t2, t0, t1
		sw	t2, -372(s0)
		lw	t0, -372(s0)
		sw	t0, -16(s0)
		j	.main_46
.main_64:
		li	t0, 1
		sw	t0, -376(s0)
		lw	t0, -376(s0)
		sw	t0, -16(s0)
		j	.main_68
.main_68:
		lw	t1, -16(s0)
		sw	t1, -380(s0)
		lw	t1, my_m
		sw	t1, -384(s0)
		lw	t0, -384(s0)
		lw	t1, -380(s0)
		slt	t2, t0, t1
		sw	t2, -388(s0)
		lw	t0, -388(s0)
		xori	t1, t0, 1
		sw	t1, -388(s0)
		lw	t0, -388(s0)
		bnez	t0, .main_72
		j	.main_87
.main_72:
		call	getInt
		mv	t1, a0
		sw	t1, -392(s0)
		lw	t0, -392(s0)
		sw	t0, -20(s0)
		call	getInt
		mv	t1, a0
		sw	t1, -396(s0)
		lw	t0, -396(s0)
		sw	t0, -24(s0)
		call	getInt
		mv	t1, a0
		sw	t1, -400(s0)
		lw	t0, -400(s0)
		sw	t0, -28(s0)
		lw	t1, -20(s0)
		sw	t1, -404(s0)
		lw	t1, -24(s0)
		sw	t1, -408(s0)
		lw	t1, -28(s0)
		sw	t1, -412(s0)
		lw	t0, -404(s0)
		mv	a0, t0
		lw	t0, -408(s0)
		mv	a1, t0
		lw	t0, -412(s0)
		mv	a2, t0
		call	addedge
		lw	t1, -24(s0)
		sw	t1, -416(s0)
		lw	t1, -20(s0)
		sw	t1, -420(s0)
		lw	t1, -28(s0)
		sw	t1, -424(s0)
		lw	t0, -416(s0)
		mv	a0, t0
		lw	t0, -420(s0)
		mv	a1, t0
		lw	t0, -424(s0)
		mv	a2, t0
		call	addedge
		j	.main_84
.main_84:
		lw	t1, -16(s0)
		sw	t1, -428(s0)
		li	t0, 1
		sw	t0, -432(s0)
		lw	t0, -428(s0)
		lw	t1, -432(s0)
		add	t2, t0, t1
		sw	t2, -436(s0)
		lw	t0, -436(s0)
		sw	t0, -16(s0)
		j	.main_68
.main_87:
		li	t0, 1
		sw	t0, -440(s0)
		lw	t0, -440(s0)
		sw	t0, -20(s0)
		li	t0, 1
		sw	t0, -444(s0)
		lw	t0, -444(s0)
		sw	t0, -16(s0)
		j	.main_88
.main_88:
		lw	t1, -16(s0)
		sw	t1, -448(s0)
		lw	t1, my_n
		sw	t1, -452(s0)
		li	t0, 1
		sw	t0, -456(s0)
		lw	t0, -452(s0)
		lw	t1, -456(s0)
		sub	t2, t0, t1
		sw	t2, -460(s0)
		lw	t0, -460(s0)
		lw	t1, -448(s0)
		slt	t2, t0, t1
		sw	t2, -464(s0)
		lw	t0, -464(s0)
		xori	t1, t0, 1
		sw	t1, -464(s0)
		lw	t0, -464(s0)
		bnez	t0, .main_93
		j	.main_191
.main_93:
		lw	t1, my_pick
		sw	t1, -468(s0)
		lw	t1, -20(s0)
		sw	t1, -472(s0)
		li	t0, 4
		sw	t0, -476(s0)
		lw	t0, -472(s0)
		lw	t1, -476(s0)
		mul	t2, t0, t1
		sw	t2, -480(s0)
		lw	t0, -468(s0)
		lw	t1, -480(s0)
		add	t2, t0, t1
		sw	t2, -484(s0)
		li	t0, 1
		sw	t0, -488(s0)
		lw	t0, -488(s0)
		lw	t1, -484(s0)
		sw	t0, 0(t1)
		lw	t1, my_fst
		sw	t1, -492(s0)
		lw	t1, -20(s0)
		sw	t1, -496(s0)
		li	t0, 4
		sw	t0, -500(s0)
		lw	t0, -496(s0)
		lw	t1, -500(s0)
		mul	t2, t0, t1
		sw	t2, -504(s0)
		lw	t0, -492(s0)
		lw	t1, -504(s0)
		add	t2, t0, t1
		sw	t2, -508(s0)
		lw	t0, -508(s0)
		lw	t1, 0(t0)
		sw	t1, -512(s0)
		lw	t0, -512(s0)
		sw	t0, -32(s0)
		j	.main_102
.main_102:
		lw	t1, -32(s0)
		sw	t1, -516(s0)
		li	t0, 0
		sw	t0, -520(s0)
		lw	t0, -516(s0)
		lw	t1, -520(s0)
		xor	t2, t0, t1
		sw	t2, -524(s0)
		lw	t0, -524(s0)
		sltiu	t1, t0, 1
		sw	t1, -524(s0)
		lw	t0, -524(s0)
		xori	t1, t0, 1
		sw	t1, -524(s0)
		lw	t0, -524(s0)
		bnez	t0, .main_105
		j	.main_148
.main_105:
		lw	t1, my_ed
		sw	t1, -528(s0)
		lw	t1, -32(s0)
		sw	t1, -532(s0)
		li	t0, 16
		sw	t0, -536(s0)
		lw	t0, -532(s0)
		lw	t1, -536(s0)
		mul	t2, t0, t1
		sw	t2, -540(s0)
		lw	t0, -528(s0)
		lw	t1, -540(s0)
		add	t2, t0, t1
		sw	t2, -544(s0)
		lw	t0, -544(s0)
		lw	t1, 0(t0)
		sw	t1, -548(s0)
		lw	t0, -548(s0)
		addi	t1, t0, 4
		sw	t1, -552(s0)
		lw	t0, -552(s0)
		lw	t1, 0(t0)
		sw	t1, -556(s0)
		lw	t0, -556(s0)
		sw	t0, -36(s0)
		lw	t1, my_pick
		sw	t1, -560(s0)
		lw	t1, -36(s0)
		sw	t1, -564(s0)
		li	t0, 4
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
		li	t0, 0
		sw	t0, -584(s0)
		lw	t0, -580(s0)
		lw	t1, -584(s0)
		xor	t2, t0, t1
		sw	t2, -588(s0)
		lw	t0, -588(s0)
		sltiu	t1, t0, 1
		sw	t1, -588(s0)
		li	t0, 0
		sw	t0, -592(s0)
		lw	t0, -592(s0)
		mv	t1, t0
		sw	t1, -596(s0)
		lw	t0, -588(s0)
		bnez	t0, .main_117AND_AND_TRUE
		lw	t0, -592(s0)
		mv	t1, t0
		sw	t1, -596(s0)
		j	.main_117AND_AND_OUT
.main_117AND_AND_TRUE:
		lw	t1, my_ed
		sw	t1, -600(s0)
		lw	t1, -32(s0)
		sw	t1, -604(s0)
		li	t0, 16
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
		lw	t0, -620(s0)
		addi	t1, t0, 12
		sw	t1, -624(s0)
		lw	t0, -624(s0)
		lw	t1, 0(t0)
		sw	t1, -628(s0)
		lw	t1, my_dis
		sw	t1, -632(s0)
		lw	t1, -36(s0)
		sw	t1, -636(s0)
		li	t0, 4
		sw	t0, -640(s0)
		lw	t0, -636(s0)
		lw	t1, -640(s0)
		mul	t2, t0, t1
		sw	t2, -644(s0)
		lw	t0, -632(s0)
		lw	t1, -644(s0)
		add	t2, t0, t1
		sw	t2, -648(s0)
		lw	t0, -648(s0)
		lw	t1, 0(t0)
		sw	t1, -652(s0)
		lw	t0, -628(s0)
		lw	t1, -652(s0)
		slt	t2, t0, t1
		sw	t2, -656(s0)
		lw	t0, -656(s0)
		mv	t1, t0
		sw	t1, -596(s0)
		j	.main_117AND_AND_OUT
.main_117AND_AND_OUT:
		lw	t0, -596(s0)
		bnez	t0, .main_130
		j	.main_140
.main_130:
		lw	t1, my_dis
		sw	t1, -660(s0)
		lw	t1, -36(s0)
		sw	t1, -664(s0)
		li	t0, 4
		sw	t0, -668(s0)
		lw	t0, -664(s0)
		lw	t1, -668(s0)
		mul	t2, t0, t1
		sw	t2, -672(s0)
		lw	t0, -660(s0)
		lw	t1, -672(s0)
		add	t2, t0, t1
		sw	t2, -676(s0)
		lw	t1, my_ed
		sw	t1, -680(s0)
		lw	t1, -32(s0)
		sw	t1, -684(s0)
		li	t0, 16
		sw	t0, -688(s0)
		lw	t0, -684(s0)
		lw	t1, -688(s0)
		mul	t2, t0, t1
		sw	t2, -692(s0)
		lw	t0, -680(s0)
		lw	t1, -692(s0)
		add	t2, t0, t1
		sw	t2, -696(s0)
		lw	t0, -696(s0)
		lw	t1, 0(t0)
		sw	t1, -700(s0)
		lw	t0, -700(s0)
		addi	t1, t0, 12
		sw	t1, -704(s0)
		lw	t0, -704(s0)
		lw	t1, 0(t0)
		sw	t1, -708(s0)
		lw	t0, -708(s0)
		lw	t1, -676(s0)
		sw	t0, 0(t1)
		j	.main_140
.main_140:
		j	.main_141
.main_141:
		lw	t1, my_ed
		sw	t1, -712(s0)
		lw	t1, -32(s0)
		sw	t1, -716(s0)
		li	t0, 16
		sw	t0, -720(s0)
		lw	t0, -716(s0)
		lw	t1, -720(s0)
		mul	t2, t0, t1
		sw	t2, -724(s0)
		lw	t0, -712(s0)
		lw	t1, -724(s0)
		add	t2, t0, t1
		sw	t2, -728(s0)
		lw	t0, -728(s0)
		lw	t1, 0(t0)
		sw	t1, -732(s0)
		lw	t0, -732(s0)
		addi	t1, t0, 8
		sw	t1, -736(s0)
		lw	t0, -736(s0)
		lw	t1, 0(t0)
		sw	t1, -740(s0)
		lw	t0, -740(s0)
		sw	t0, -32(s0)
		j	.main_102
.main_148:
		li	t0, 0
		sw	t0, -744(s0)
		lw	t0, -744(s0)
		sw	t0, -20(s0)
		li	t0, 1
		sw	t0, -748(s0)
		lw	t0, -748(s0)
		sw	t0, -32(s0)
		j	.main_149
.main_149:
		lw	t1, -32(s0)
		sw	t1, -752(s0)
		lw	t1, my_n
		sw	t1, -756(s0)
		lw	t0, -756(s0)
		lw	t1, -752(s0)
		slt	t2, t0, t1
		sw	t2, -760(s0)
		lw	t0, -760(s0)
		xori	t1, t0, 1
		sw	t1, -760(s0)
		lw	t0, -760(s0)
		bnez	t0, .main_153
		j	.main_175
.main_153:
		lw	t1, my_pick
		sw	t1, -764(s0)
		lw	t1, -32(s0)
		sw	t1, -768(s0)
		li	t0, 4
		sw	t0, -772(s0)
		lw	t0, -768(s0)
		lw	t1, -772(s0)
		mul	t2, t0, t1
		sw	t2, -776(s0)
		lw	t0, -764(s0)
		lw	t1, -776(s0)
		add	t2, t0, t1
		sw	t2, -780(s0)
		lw	t0, -780(s0)
		lw	t1, 0(t0)
		sw	t1, -784(s0)
		li	t0, 0
		sw	t0, -788(s0)
		lw	t0, -784(s0)
		lw	t1, -788(s0)
		xor	t2, t0, t1
		sw	t2, -792(s0)
		lw	t0, -792(s0)
		sltiu	t1, t0, 1
		sw	t1, -792(s0)
		li	t0, 0
		sw	t0, -796(s0)
		lw	t0, -796(s0)
		mv	t1, t0
		sw	t1, -800(s0)
		lw	t0, -792(s0)
		bnez	t0, .main_158AND_AND_TRUE
		lw	t0, -796(s0)
		mv	t1, t0
		sw	t1, -800(s0)
		j	.main_158AND_AND_OUT
.main_158AND_AND_TRUE:
		lw	t1, my_dis
		sw	t1, -804(s0)
		lw	t1, -32(s0)
		sw	t1, -808(s0)
		li	t0, 4
		sw	t0, -812(s0)
		lw	t0, -808(s0)
		lw	t1, -812(s0)
		mul	t2, t0, t1
		sw	t2, -816(s0)
		lw	t0, -804(s0)
		lw	t1, -816(s0)
		add	t2, t0, t1
		sw	t2, -820(s0)
		lw	t0, -820(s0)
		lw	t1, 0(t0)
		sw	t1, -824(s0)
		lw	t1, my_dis
		sw	t1, -828(s0)
		lw	t1, -20(s0)
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
		lw	t0, -844(s0)
		lw	t1, 0(t0)
		sw	t1, -848(s0)
		lw	t0, -824(s0)
		lw	t1, -848(s0)
		slt	t2, t0, t1
		sw	t2, -852(s0)
		lw	t0, -852(s0)
		mv	t1, t0
		sw	t1, -800(s0)
		j	.main_158AND_AND_OUT
.main_158AND_AND_OUT:
		lw	t0, -800(s0)
		bnez	t0, .main_169
		j	.main_171
.main_169:
		lw	t1, -32(s0)
		sw	t1, -856(s0)
		lw	t0, -856(s0)
		sw	t0, -20(s0)
		j	.main_171
.main_171:
		j	.main_172
.main_172:
		lw	t1, -32(s0)
		sw	t1, -860(s0)
		li	t0, 1
		sw	t0, -864(s0)
		lw	t0, -860(s0)
		lw	t1, -864(s0)
		add	t2, t0, t1
		sw	t2, -868(s0)
		lw	t0, -868(s0)
		sw	t0, -32(s0)
		j	.main_149
.main_175:
		lw	t1, -20(s0)
		sw	t1, -872(s0)
		li	t0, 0
		sw	t0, -876(s0)
		lw	t0, -872(s0)
		lw	t1, -876(s0)
		xor	t2, t0, t1
		sw	t2, -880(s0)
		lw	t0, -880(s0)
		sltiu	t1, t0, 1
		sw	t1, -880(s0)
		lw	t0, -880(s0)
		bnez	t0, .main_178
		j	.main_181
.main_178:
		li	t0, 0
		sw	t0, -884(s0)
		li	t0, 1
		sw	t0, -888(s0)
		lw	t0, -884(s0)
		lw	t1, -888(s0)
		sub	t2, t0, t1
		sw	t2, -892(s0)
		lw	t0, -892(s0)
		mv	a0, t0
		call	printInt
		li	t0, 0
		sw	t0, -896(s0)
		lw	t0, -896(s0)
		sw	t0, -12(s0)
		j	.mainreturn_block
.main_181:
		lw	t1, my_ans
		sw	t1, -900(s0)
		lw	t1, my_dis
		sw	t1, -904(s0)
		lw	t1, -20(s0)
		sw	t1, -908(s0)
		li	t0, 4
		sw	t0, -912(s0)
		lw	t0, -908(s0)
		lw	t1, -912(s0)
		mul	t2, t0, t1
		sw	t2, -916(s0)
		lw	t0, -904(s0)
		lw	t1, -916(s0)
		add	t2, t0, t1
		sw	t2, -920(s0)
		lw	t0, -920(s0)
		lw	t1, 0(t0)
		sw	t1, -924(s0)
		lw	t0, -900(s0)
		lw	t1, -924(s0)
		add	t2, t0, t1
		sw	t2, -928(s0)
		lw	t0, -928(s0)
		lw	t1, -932(s0)
		sw	t0, my_ans, t1
		j	.main_188
.main_188:
		lw	t1, -16(s0)
		sw	t1, -936(s0)
		li	t0, 1
		sw	t0, -940(s0)
		lw	t0, -936(s0)
		lw	t1, -940(s0)
		add	t2, t0, t1
		sw	t2, -944(s0)
		lw	t0, -944(s0)
		sw	t0, -16(s0)
		j	.main_88
.main_191:
		lw	t1, my_ans
		sw	t1, -948(s0)
		lw	t0, -948(s0)
		mv	a0, t0
		call	printInt
		li	t0, 0
		sw	t0, -952(s0)
		lw	t0, -952(s0)
		sw	t0, -12(s0)
		j	.mainreturn_block
.mainreturn_block:
		lw	t1, -12(s0)
		sw	t1, -956(s0)
		lw	t0, -956(s0)
		mv	a0, t0
		li	t0, 960
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	addedge
	.p2align	2
	.type	addedge,@function
addedge:
.addedge_parameters:
		li	t0, 256
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -24(s0)
		mv	t1, a1
		sw	t1, -28(s0)
		mv	t1, a2
		sw	t1, -32(s0)
.addedge:
		lw	t0, -24(s0)
		sw	t0, -12(s0)
		lw	t0, -28(s0)
		sw	t0, -16(s0)
		lw	t0, -32(s0)
		sw	t0, -20(s0)
		lw	t1, my_tot
		sw	t1, -36(s0)
		li	t0, 1
		sw	t0, -40(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		add	t2, t0, t1
		sw	t2, -44(s0)
		lw	t0, -44(s0)
		lw	t1, -48(s0)
		sw	t0, my_tot, t1
		lw	t1, my_ed
		sw	t1, -52(s0)
		lw	t1, my_tot
		sw	t1, -56(s0)
		li	t0, 16
		sw	t0, -60(s0)
		lw	t0, -56(s0)
		lw	t1, -60(s0)
		mul	t2, t0, t1
		sw	t2, -64(s0)
		lw	t0, -52(s0)
		lw	t1, -64(s0)
		add	t2, t0, t1
		sw	t2, -68(s0)
		li	t0, 16
		sw	t0, -72(s0)
		lw	t0, -72(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -76(s0)
		lw	t0, -76(s0)
		mv	a0, t0
		call	Edge
		lw	t0, -76(s0)
		lw	t1, -68(s0)
		sw	t0, 0(t1)
		lw	t1, my_ed
		sw	t1, -80(s0)
		lw	t1, my_tot
		sw	t1, -84(s0)
		li	t0, 16
		sw	t0, -88(s0)
		lw	t0, -84(s0)
		lw	t1, -88(s0)
		mul	t2, t0, t1
		sw	t2, -92(s0)
		lw	t0, -80(s0)
		lw	t1, -92(s0)
		add	t2, t0, t1
		sw	t2, -96(s0)
		lw	t0, -96(s0)
		lw	t1, 0(t0)
		sw	t1, -100(s0)
		lw	t0, -100(s0)
		addi	t1, t0, 0
		sw	t1, -104(s0)
		lw	t1, -12(s0)
		sw	t1, -108(s0)
		lw	t0, -108(s0)
		lw	t1, -104(s0)
		sw	t0, 0(t1)
		lw	t1, my_ed
		sw	t1, -112(s0)
		lw	t1, my_tot
		sw	t1, -116(s0)
		li	t0, 16
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
		lw	t0, -132(s0)
		addi	t1, t0, 4
		sw	t1, -136(s0)
		lw	t1, -16(s0)
		sw	t1, -140(s0)
		lw	t0, -140(s0)
		lw	t1, -136(s0)
		sw	t0, 0(t1)
		lw	t1, my_ed
		sw	t1, -144(s0)
		lw	t1, my_tot
		sw	t1, -148(s0)
		li	t0, 16
		sw	t0, -152(s0)
		lw	t0, -148(s0)
		lw	t1, -152(s0)
		mul	t2, t0, t1
		sw	t2, -156(s0)
		lw	t0, -144(s0)
		lw	t1, -156(s0)
		add	t2, t0, t1
		sw	t2, -160(s0)
		lw	t0, -160(s0)
		lw	t1, 0(t0)
		sw	t1, -164(s0)
		lw	t0, -164(s0)
		addi	t1, t0, 12
		sw	t1, -168(s0)
		lw	t1, -20(s0)
		sw	t1, -172(s0)
		lw	t0, -172(s0)
		lw	t1, -168(s0)
		sw	t0, 0(t1)
		lw	t1, my_ed
		sw	t1, -176(s0)
		lw	t1, my_tot
		sw	t1, -180(s0)
		li	t0, 16
		sw	t0, -184(s0)
		lw	t0, -180(s0)
		lw	t1, -184(s0)
		mul	t2, t0, t1
		sw	t2, -188(s0)
		lw	t0, -176(s0)
		lw	t1, -188(s0)
		add	t2, t0, t1
		sw	t2, -192(s0)
		lw	t0, -192(s0)
		lw	t1, 0(t0)
		sw	t1, -196(s0)
		lw	t0, -196(s0)
		addi	t1, t0, 8
		sw	t1, -200(s0)
		lw	t1, my_fst
		sw	t1, -204(s0)
		lw	t1, -12(s0)
		sw	t1, -208(s0)
		li	t0, 4
		sw	t0, -212(s0)
		lw	t0, -208(s0)
		lw	t1, -212(s0)
		mul	t2, t0, t1
		sw	t2, -216(s0)
		lw	t0, -204(s0)
		lw	t1, -216(s0)
		add	t2, t0, t1
		sw	t2, -220(s0)
		lw	t0, -220(s0)
		lw	t1, 0(t0)
		sw	t1, -224(s0)
		lw	t0, -224(s0)
		lw	t1, -200(s0)
		sw	t0, 0(t1)
		lw	t1, my_fst
		sw	t1, -228(s0)
		lw	t1, -12(s0)
		sw	t1, -232(s0)
		li	t0, 4
		sw	t0, -236(s0)
		lw	t0, -232(s0)
		lw	t1, -236(s0)
		mul	t2, t0, t1
		sw	t2, -240(s0)
		lw	t0, -228(s0)
		lw	t1, -240(s0)
		add	t2, t0, t1
		sw	t2, -244(s0)
		lw	t1, my_tot
		sw	t1, -248(s0)
		lw	t0, -248(s0)
		lw	t1, -244(s0)
		sw	t0, 0(t1)
		j	.addedgereturn_block
.addedgereturn_block:
		li	t0, 256
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.section	.sbss
	.type	my_MAX,@object
	.globl	my_MAX
	.p2align	2
my_MAX:
	.word	1000000
	.size	my_MAX, 8

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
	.type	my_tot,@object
	.globl	my_tot
	.p2align	2
my_tot:
	.word	0
	.size	my_tot, 8

	.section	.sbss
	.type	my_ans,@object
	.globl	my_ans
	.p2align	2
my_ans:
	.word	0
	.size	my_ans, 8

	.section	.sbss
	.type	my_pick,@object
	.globl	my_pick
	.p2align	2
my_pick:
	.word	0
	.size	my_pick, 8

	.section	.sbss
	.type	my_fst,@object
	.globl	my_fst
	.p2align	2
my_fst:
	.word	0
	.size	my_fst, 8

	.section	.sbss
	.type	my_dis,@object
	.globl	my_dis
	.p2align	2
my_dis:
	.word	0
	.size	my_dis, 8

	.section	.sbss
	.type	my_ed,@object
	.globl	my_ed
	.p2align	2
my_ed:
	.word	0
	.size	my_ed, 8



