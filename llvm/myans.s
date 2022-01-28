	.text

	.globl	hex2int
	.p2align	2
	.type	hex2int,@function
hex2int:
.hex2int_parameters:
		li	t0, 288
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -32(s0)
.hex2int:
		lw	t0, -32(s0)
		sw	t0, -16(s0)
		li	t0, 0
		sw	t0, -36(s0)
		lw	t0, -36(s0)
		sw	t0, -24(s0)
		li	t0, 0
		sw	t0, -40(s0)
		lw	t0, -40(s0)
		sw	t0, -20(s0)
		j	.hex2int_6
.hex2int_6:
		lw	t1, -20(s0)
		sw	t1, -44(s0)
		lw	t1, -16(s0)
		sw	t1, -48(s0)
		lw	t0, -48(s0)
		mv	a0, t0
		call	length
		mv	t1, a0
		sw	t1, -52(s0)
		lw	t0, -44(s0)
		lw	t1, -52(s0)
		slt	t2, t0, t1
		sw	t2, -56(s0)
		lw	t0, -56(s0)
		bnez	t0, .hex2int_11
		j	.hex2int_60
.hex2int_11:
		lw	t1, -16(s0)
		sw	t1, -60(s0)
		lw	t1, -20(s0)
		sw	t1, -64(s0)
		lw	t0, -60(s0)
		mv	a0, t0
		lw	t0, -64(s0)
		mv	a1, t0
		call	ord
		mv	t1, a0
		sw	t1, -68(s0)
		lw	t0, -68(s0)
		sw	t0, -28(s0)
		lw	t1, -28(s0)
		sw	t1, -72(s0)
		li	t0, 48
		sw	t0, -76(s0)
		lw	t0, -72(s0)
		lw	t1, -76(s0)
		slt	t2, t0, t1
		sw	t2, -80(s0)
		lw	t0, -80(s0)
		xori	t1, t0, 1
		sw	t1, -80(s0)
		li	t0, 0
		sw	t0, -84(s0)
		lw	t0, -84(s0)
		mv	t1, t0
		sw	t1, -88(s0)
		lw	t0, -80(s0)
		bnez	t0, .hex2int_17AND_AND_TRUE
		lw	t0, -84(s0)
		mv	t1, t0
		sw	t1, -88(s0)
		j	.hex2int_17AND_AND_OUT
.hex2int_17AND_AND_TRUE:
		lw	t1, -28(s0)
		sw	t1, -92(s0)
		li	t0, 57
		sw	t0, -96(s0)
		lw	t0, -96(s0)
		lw	t1, -92(s0)
		slt	t2, t0, t1
		sw	t2, -100(s0)
		lw	t0, -100(s0)
		xori	t1, t0, 1
		sw	t1, -100(s0)
		lw	t0, -100(s0)
		mv	t1, t0
		sw	t1, -88(s0)
		j	.hex2int_17AND_AND_OUT
.hex2int_17AND_AND_OUT:
		lw	t0, -88(s0)
		bnez	t0, .hex2int_21
		j	.hex2int_27
.hex2int_21:
		lw	t1, -24(s0)
		sw	t1, -104(s0)
		li	t0, 16
		sw	t0, -108(s0)
		lw	t0, -104(s0)
		lw	t1, -108(s0)
		mul	t2, t0, t1
		sw	t2, -112(s0)
		lw	t1, -28(s0)
		sw	t1, -116(s0)
		lw	t0, -112(s0)
		lw	t1, -116(s0)
		add	t2, t0, t1
		sw	t2, -120(s0)
		li	t0, 48
		sw	t0, -124(s0)
		lw	t0, -120(s0)
		lw	t1, -124(s0)
		sub	t2, t0, t1
		sw	t2, -128(s0)
		lw	t0, -128(s0)
		sw	t0, -24(s0)
		j	.hex2int_56
.hex2int_27:
		lw	t1, -28(s0)
		sw	t1, -132(s0)
		li	t0, 65
		sw	t0, -136(s0)
		lw	t0, -132(s0)
		lw	t1, -136(s0)
		slt	t2, t0, t1
		sw	t2, -140(s0)
		lw	t0, -140(s0)
		xori	t1, t0, 1
		sw	t1, -140(s0)
		li	t0, 0
		sw	t0, -144(s0)
		lw	t0, -144(s0)
		mv	t1, t0
		sw	t1, -148(s0)
		lw	t0, -140(s0)
		bnez	t0, .hex2int_29AND_AND_TRUE
		lw	t0, -144(s0)
		mv	t1, t0
		sw	t1, -148(s0)
		j	.hex2int_29AND_AND_OUT
.hex2int_29AND_AND_TRUE:
		lw	t1, -28(s0)
		sw	t1, -152(s0)
		li	t0, 70
		sw	t0, -156(s0)
		lw	t0, -156(s0)
		lw	t1, -152(s0)
		slt	t2, t0, t1
		sw	t2, -160(s0)
		lw	t0, -160(s0)
		xori	t1, t0, 1
		sw	t1, -160(s0)
		lw	t0, -160(s0)
		mv	t1, t0
		sw	t1, -148(s0)
		j	.hex2int_29AND_AND_OUT
.hex2int_29AND_AND_OUT:
		lw	t0, -148(s0)
		bnez	t0, .hex2int_33
		j	.hex2int_40
.hex2int_33:
		lw	t1, -24(s0)
		sw	t1, -164(s0)
		li	t0, 16
		sw	t0, -168(s0)
		lw	t0, -164(s0)
		lw	t1, -168(s0)
		mul	t2, t0, t1
		sw	t2, -172(s0)
		lw	t1, -28(s0)
		sw	t1, -176(s0)
		lw	t0, -172(s0)
		lw	t1, -176(s0)
		add	t2, t0, t1
		sw	t2, -180(s0)
		li	t0, 65
		sw	t0, -184(s0)
		lw	t0, -180(s0)
		lw	t1, -184(s0)
		sub	t2, t0, t1
		sw	t2, -188(s0)
		li	t0, 10
		sw	t0, -192(s0)
		lw	t0, -188(s0)
		lw	t1, -192(s0)
		add	t2, t0, t1
		sw	t2, -196(s0)
		lw	t0, -196(s0)
		sw	t0, -24(s0)
		j	.hex2int_55
.hex2int_40:
		lw	t1, -28(s0)
		sw	t1, -200(s0)
		li	t0, 97
		sw	t0, -204(s0)
		lw	t0, -200(s0)
		lw	t1, -204(s0)
		slt	t2, t0, t1
		sw	t2, -208(s0)
		lw	t0, -208(s0)
		xori	t1, t0, 1
		sw	t1, -208(s0)
		li	t0, 0
		sw	t0, -212(s0)
		lw	t0, -212(s0)
		mv	t1, t0
		sw	t1, -216(s0)
		lw	t0, -208(s0)
		bnez	t0, .hex2int_42AND_AND_TRUE
		lw	t0, -212(s0)
		mv	t1, t0
		sw	t1, -216(s0)
		j	.hex2int_42AND_AND_OUT
.hex2int_42AND_AND_TRUE:
		lw	t1, -28(s0)
		sw	t1, -220(s0)
		li	t0, 102
		sw	t0, -224(s0)
		lw	t0, -224(s0)
		lw	t1, -220(s0)
		slt	t2, t0, t1
		sw	t2, -228(s0)
		lw	t0, -228(s0)
		xori	t1, t0, 1
		sw	t1, -228(s0)
		lw	t0, -228(s0)
		mv	t1, t0
		sw	t1, -216(s0)
		j	.hex2int_42AND_AND_OUT
.hex2int_42AND_AND_OUT:
		lw	t0, -216(s0)
		bnez	t0, .hex2int_46
		j	.hex2int_53
.hex2int_46:
		lw	t1, -24(s0)
		sw	t1, -232(s0)
		li	t0, 16
		sw	t0, -236(s0)
		lw	t0, -232(s0)
		lw	t1, -236(s0)
		mul	t2, t0, t1
		sw	t2, -240(s0)
		lw	t1, -28(s0)
		sw	t1, -244(s0)
		lw	t0, -240(s0)
		lw	t1, -244(s0)
		add	t2, t0, t1
		sw	t2, -248(s0)
		li	t0, 97
		sw	t0, -252(s0)
		lw	t0, -248(s0)
		lw	t1, -252(s0)
		sub	t2, t0, t1
		sw	t2, -256(s0)
		li	t0, 10
		sw	t0, -260(s0)
		lw	t0, -256(s0)
		lw	t1, -260(s0)
		add	t2, t0, t1
		sw	t2, -264(s0)
		lw	t0, -264(s0)
		sw	t0, -24(s0)
		j	.hex2int_54
.hex2int_53:
		li	t0, 0
		sw	t0, -268(s0)
		lw	t0, -268(s0)
		sw	t0, -12(s0)
		j	.hex2intreturn_block
.hex2int_54:
		j	.hex2int_55
.hex2int_55:
		j	.hex2int_56
.hex2int_56:
		j	.hex2int_57
.hex2int_57:
		lw	t1, -20(s0)
		sw	t1, -272(s0)
		li	t0, 1
		sw	t0, -276(s0)
		lw	t0, -272(s0)
		lw	t1, -276(s0)
		add	t2, t0, t1
		sw	t2, -280(s0)
		lw	t0, -280(s0)
		sw	t0, -20(s0)
		j	.hex2int_6
.hex2int_60:
		lw	t1, -24(s0)
		sw	t1, -284(s0)
		lw	t0, -284(s0)
		sw	t0, -12(s0)
		j	.hex2intreturn_block
.hex2intreturn_block:
		lw	t1, -12(s0)
		sw	t1, -288(s0)
		lw	t0, -288(s0)
		mv	a0, t0
		li	t0, 288
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
		li	t0, 368
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.main:
		la	t0, my_.str.0
		sw	t0, -28(s0)
		lw	t0, -28(s0)
		lw	t1, -32(s0)
		sw	t0, my_asciiTable, t1
		lw	t1, my_MAXCHUNK
		sw	t1, -36(s0)
		li	t0, 1
		sw	t0, -40(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		sub	t2, t0, t1
		sw	t2, -44(s0)
		li	t0, 64
		sw	t0, -48(s0)
		lw	t0, -44(s0)
		lw	t1, -48(s0)
		mul	t2, t0, t1
		sw	t2, -52(s0)
		li	t0, 16
		sw	t0, -56(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		sub	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -60(s0)
		lw	t1, -64(s0)
		sw	t0, my_MAXLENGTH, t1
		lw	t1, my_MAXCHUNK
		sw	t1, -68(s0)
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
		li	t0, 0
		sw	t0, -108(s0)
		lw	t0, -108(s0)
		sw	t0, -20(s0)
		j	.main_my_14_for_condition
.main_my_14_for_condition:
		lw	t1, -20(s0)
		sw	t1, -112(s0)
		lw	t0, -112(s0)
		lw	t1, -68(s0)
		slt	t2, t0, t1
		sw	t2, -116(s0)
		lw	t0, -116(s0)
		bnez	t0, .main_my_14_for_suite
		j	.main_my_14_for_out
.main_my_14_for_suite:
		lw	t1, -20(s0)
		sw	t1, -120(s0)
		li	t0, 8
		sw	t0, -124(s0)
		lw	t0, -120(s0)
		lw	t1, -124(s0)
		mul	t2, t0, t1
		sw	t2, -128(s0)
		lw	t0, -104(s0)
		lw	t1, -128(s0)
		add	t2, t0, t1
		sw	t2, -132(s0)
		li	t0, 80
		sw	t0, -136(s0)
		li	t0, 4
		sw	t0, -140(s0)
		lw	t0, -136(s0)
		lw	t1, -140(s0)
		mul	t2, t0, t1
		sw	t2, -144(s0)
		li	t0, 4
		sw	t0, -148(s0)
		lw	t0, -144(s0)
		lw	t1, -148(s0)
		add	t2, t0, t1
		sw	t2, -152(s0)
		lw	t0, -152(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -156(s0)
		li	t0, 80
		sw	t0, -160(s0)
		lw	t0, -160(s0)
		lw	t1, -156(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -164(s0)
		li	t0, 4
		sw	t0, -168(s0)
		lw	t0, -164(s0)
		lw	t1, -168(s0)
		mul	t2, t0, t1
		sw	t2, -172(s0)
		lw	t0, -156(s0)
		lw	t1, -172(s0)
		add	t2, t0, t1
		sw	t2, -176(s0)
		lw	t0, -176(s0)
		lw	t1, -132(s0)
		sw	t0, 0(t1)
		j	.main_my_14_for_finish
.main_my_14_for_finish:
		lw	t1, -20(s0)
		sw	t1, -180(s0)
		li	t0, 1
		sw	t0, -184(s0)
		lw	t0, -180(s0)
		lw	t1, -184(s0)
		add	t2, t0, t1
		sw	t2, -188(s0)
		lw	t0, -188(s0)
		sw	t0, -20(s0)
		j	.main_my_14_for_condition
.main_my_14_for_out:
		li	t0, 0
		sw	t0, -192(s0)
		lw	t0, -192(s0)
		sw	t0, -24(s0)
		lw	t0, -104(s0)
		lw	t1, -196(s0)
		sw	t0, my_chunks, t1
		lw	t1, my_MAXLENGTH
		sw	t1, -200(s0)
		li	t0, 4
		sw	t0, -204(s0)
		lw	t0, -200(s0)
		lw	t1, -204(s0)
		mul	t2, t0, t1
		sw	t2, -208(s0)
		li	t0, 4
		sw	t0, -212(s0)
		lw	t0, -208(s0)
		lw	t1, -212(s0)
		add	t2, t0, t1
		sw	t2, -216(s0)
		lw	t0, -216(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -220(s0)
		lw	t0, -200(s0)
		lw	t1, -220(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -224(s0)
		li	t0, 4
		sw	t0, -228(s0)
		lw	t0, -224(s0)
		lw	t1, -228(s0)
		mul	t2, t0, t1
		sw	t2, -232(s0)
		lw	t0, -220(s0)
		lw	t1, -232(s0)
		add	t2, t0, t1
		sw	t2, -236(s0)
		lw	t0, -236(s0)
		lw	t1, -240(s0)
		sw	t0, my_inputBuffer, t1
		li	t0, 5
		sw	t0, -244(s0)
		li	t0, 4
		sw	t0, -248(s0)
		lw	t0, -244(s0)
		lw	t1, -248(s0)
		mul	t2, t0, t1
		sw	t2, -252(s0)
		li	t0, 4
		sw	t0, -256(s0)
		lw	t0, -252(s0)
		lw	t1, -256(s0)
		add	t2, t0, t1
		sw	t2, -260(s0)
		lw	t0, -260(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -264(s0)
		li	t0, 5
		sw	t0, -268(s0)
		lw	t0, -268(s0)
		lw	t1, -264(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -272(s0)
		li	t0, 4
		sw	t0, -276(s0)
		lw	t0, -272(s0)
		lw	t1, -276(s0)
		mul	t2, t0, t1
		sw	t2, -280(s0)
		lw	t0, -264(s0)
		lw	t1, -280(s0)
		add	t2, t0, t1
		sw	t2, -284(s0)
		lw	t0, -284(s0)
		lw	t1, -288(s0)
		sw	t0, my_outputBuffer, t1
		j	.main_47
.main_47:
		li	t0, 1
		sw	t0, -292(s0)
		lw	t0, -292(s0)
		bnez	t0, .main_48
		j	.main_73
.main_48:
		call	getInt
		mv	t1, a0
		sw	t1, -296(s0)
		lw	t0, -296(s0)
		sw	t0, -12(s0)
		lw	t1, -12(s0)
		sw	t1, -300(s0)
		li	t0, 0
		sw	t0, -304(s0)
		lw	t0, -300(s0)
		lw	t1, -304(s0)
		xor	t2, t0, t1
		sw	t2, -308(s0)
		lw	t0, -308(s0)
		sltiu	t1, t0, 1
		sw	t1, -308(s0)
		lw	t0, -308(s0)
		bnez	t0, .main_52
		j	.main_53
.main_52:
		j	.main_73
.main_53:
		lw	t1, -12(s0)
		sw	t1, -312(s0)
		li	t0, 1
		sw	t0, -316(s0)
		lw	t0, -312(s0)
		lw	t1, -316(s0)
		xor	t2, t0, t1
		sw	t2, -320(s0)
		lw	t0, -320(s0)
		sltiu	t1, t0, 1
		sw	t1, -320(s0)
		lw	t0, -320(s0)
		bnez	t0, .main_56
		j	.main_62
.main_56:
		call	getString
		mv	t1, a0
		sw	t1, -324(s0)
		lw	t0, -324(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -328(s0)
		lw	t0, -328(s0)
		mv	a0, t0
		call	computeSHA1
		j	.main_72
.main_62:
		lw	t1, -12(s0)
		sw	t1, -332(s0)
		li	t0, 2
		sw	t0, -336(s0)
		lw	t0, -332(s0)
		lw	t1, -336(s0)
		xor	t2, t0, t1
		sw	t2, -340(s0)
		lw	t0, -340(s0)
		sltiu	t1, t0, 1
		sw	t1, -340(s0)
		lw	t0, -340(s0)
		bnez	t0, .main_65
		j	.main_71
.main_65:
		call	getString
		mv	t1, a0
		sw	t1, -344(s0)
		lw	t0, -344(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -348(s0)
		lw	t0, -348(s0)
		mv	a0, t0
		call	crackSHA1
		j	.main_71
.main_71:
		j	.main_72
.main_72:
		j	.main_47
.main_73:
		li	t0, 0
		sw	t0, -352(s0)
		lw	t0, -352(s0)
		sw	t0, -24(s0)
		j	.mainreturn_block
.mainreturn_block:
		lw	t1, -24(s0)
		sw	t1, -356(s0)
		lw	t0, -356(s0)
		mv	a0, t0
		li	t0, 368
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	int2chr
	.p2align	2
	.type	int2chr,@function
int2chr:
.int2chr_parameters:
		li	t0, 96
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
.int2chr:
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -24(s0)
		li	t0, 32
		sw	t0, -28(s0)
		lw	t0, -24(s0)
		lw	t1, -28(s0)
		slt	t2, t0, t1
		sw	t2, -32(s0)
		lw	t0, -32(s0)
		xori	t1, t0, 1
		sw	t1, -32(s0)
		li	t0, 0
		sw	t0, -36(s0)
		lw	t0, -36(s0)
		mv	t1, t0
		sw	t1, -40(s0)
		lw	t0, -32(s0)
		bnez	t0, .int2chr_5AND_AND_TRUE
		lw	t0, -36(s0)
		mv	t1, t0
		sw	t1, -40(s0)
		j	.int2chr_5AND_AND_OUT
.int2chr_5AND_AND_TRUE:
		lw	t1, -16(s0)
		sw	t1, -44(s0)
		li	t0, 126
		sw	t0, -48(s0)
		lw	t0, -48(s0)
		lw	t1, -44(s0)
		slt	t2, t0, t1
		sw	t2, -52(s0)
		lw	t0, -52(s0)
		xori	t1, t0, 1
		sw	t1, -52(s0)
		lw	t0, -52(s0)
		mv	t1, t0
		sw	t1, -40(s0)
		j	.int2chr_5AND_AND_OUT
.int2chr_5AND_AND_OUT:
		lw	t0, -40(s0)
		bnez	t0, .int2chr_9
		j	.int2chr_17
.int2chr_9:
		lw	t1, my_asciiTable
		sw	t1, -56(s0)
		lw	t1, -16(s0)
		sw	t1, -60(s0)
		li	t0, 32
		sw	t0, -64(s0)
		lw	t0, -60(s0)
		lw	t1, -64(s0)
		sub	t2, t0, t1
		sw	t2, -68(s0)
		lw	t1, -16(s0)
		sw	t1, -72(s0)
		li	t0, 31
		sw	t0, -76(s0)
		lw	t0, -72(s0)
		lw	t1, -76(s0)
		sub	t2, t0, t1
		sw	t2, -80(s0)
		lw	t0, -56(s0)
		mv	a0, t0
		lw	t0, -68(s0)
		mv	a1, t0
		lw	t0, -80(s0)
		mv	a2, t0
		call	substring
		mv	t1, a0
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		sw	t0, -12(s0)
		j	.int2chrreturn_block
.int2chr_17:
		la	t0, my_.str.1
		sw	t0, -88(s0)
		lw	t0, -88(s0)
		sw	t0, -12(s0)
		j	.int2chrreturn_block
.int2chrreturn_block:
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

	.globl	toStringHex
	.p2align	2
	.type	toStringHex,@function
toStringHex:
.toStringHex_parameters:
		li	t0, 160
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -32(s0)
.toStringHex:
		lw	t0, -32(s0)
		sw	t0, -16(s0)
		la	t0, my_.str.2
		sw	t0, -36(s0)
		lw	t0, -36(s0)
		sw	t0, -20(s0)
		li	t0, 28
		sw	t0, -40(s0)
		lw	t0, -40(s0)
		sw	t0, -24(s0)
		j	.toStringHex_7
.toStringHex_7:
		lw	t1, -24(s0)
		sw	t1, -44(s0)
		li	t0, 0
		sw	t0, -48(s0)
		lw	t0, -44(s0)
		lw	t1, -48(s0)
		slt	t2, t0, t1
		sw	t2, -52(s0)
		lw	t0, -52(s0)
		xori	t1, t0, 1
		sw	t1, -52(s0)
		lw	t0, -52(s0)
		bnez	t0, .toStringHex_10
		j	.toStringHex_41
.toStringHex_10:
		lw	t1, -16(s0)
		sw	t1, -56(s0)
		lw	t1, -24(s0)
		sw	t1, -60(s0)
		lw	t0, -56(s0)
		lw	t1, -60(s0)
		sra	t2, t0, t1
		sw	t2, -64(s0)
		li	t0, 15
		sw	t0, -68(s0)
		lw	t0, -64(s0)
		lw	t1, -68(s0)
		and	t2, t0, t1
		sw	t2, -72(s0)
		lw	t0, -72(s0)
		sw	t0, -28(s0)
		lw	t1, -28(s0)
		sw	t1, -76(s0)
		li	t0, 10
		sw	t0, -80(s0)
		lw	t0, -76(s0)
		lw	t1, -80(s0)
		slt	t2, t0, t1
		sw	t2, -84(s0)
		lw	t0, -84(s0)
		bnez	t0, .toStringHex_18
		j	.toStringHex_27
.toStringHex_18:
		lw	t1, -20(s0)
		sw	t1, -88(s0)
		lw	t1, -28(s0)
		sw	t1, -92(s0)
		li	t0, 48
		sw	t0, -96(s0)
		lw	t0, -96(s0)
		lw	t1, -92(s0)
		add	t2, t0, t1
		sw	t2, -100(s0)
		lw	t0, -100(s0)
		mv	a0, t0
		call	int2chr
		mv	t1, a0
		sw	t1, -104(s0)
		lw	t0, -88(s0)
		mv	a0, t0
		lw	t0, -104(s0)
		mv	a1, t0
		call	string_add
		mv	t1, a0
		sw	t1, -108(s0)
		lw	t0, -108(s0)
		sw	t0, -20(s0)
		j	.toStringHex_37
.toStringHex_27:
		lw	t1, -20(s0)
		sw	t1, -112(s0)
		lw	t1, -28(s0)
		sw	t1, -116(s0)
		li	t0, 65
		sw	t0, -120(s0)
		lw	t0, -120(s0)
		lw	t1, -116(s0)
		add	t2, t0, t1
		sw	t2, -124(s0)
		li	t0, 10
		sw	t0, -128(s0)
		lw	t0, -124(s0)
		lw	t1, -128(s0)
		sub	t2, t0, t1
		sw	t2, -132(s0)
		lw	t0, -132(s0)
		mv	a0, t0
		call	int2chr
		mv	t1, a0
		sw	t1, -136(s0)
		lw	t0, -112(s0)
		mv	a0, t0
		lw	t0, -136(s0)
		mv	a1, t0
		call	string_add
		mv	t1, a0
		sw	t1, -140(s0)
		lw	t0, -140(s0)
		sw	t0, -20(s0)
		j	.toStringHex_37
.toStringHex_37:
		j	.toStringHex_38
.toStringHex_38:
		lw	t1, -24(s0)
		sw	t1, -144(s0)
		li	t0, 4
		sw	t0, -148(s0)
		lw	t0, -144(s0)
		lw	t1, -148(s0)
		sub	t2, t0, t1
		sw	t2, -152(s0)
		lw	t0, -152(s0)
		sw	t0, -24(s0)
		j	.toStringHex_7
.toStringHex_41:
		lw	t1, -20(s0)
		sw	t1, -156(s0)
		lw	t0, -156(s0)
		sw	t0, -12(s0)
		j	.toStringHexreturn_block
.toStringHexreturn_block:
		lw	t1, -12(s0)
		sw	t1, -160(s0)
		lw	t0, -160(s0)
		mv	a0, t0
		li	t0, 160
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	rotate_left
	.p2align	2
	.type	rotate_left,@function
rotate_left:
.rotate_left_parameters:
		li	t0, 240
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -24(s0)
		mv	t1, a1
		sw	t1, -28(s0)
.rotate_left:
		lw	t0, -24(s0)
		sw	t0, -16(s0)
		lw	t0, -28(s0)
		sw	t0, -20(s0)
		lw	t1, -20(s0)
		sw	t1, -32(s0)
		li	t0, 1
		sw	t0, -36(s0)
		lw	t0, -32(s0)
		lw	t1, -36(s0)
		xor	t2, t0, t1
		sw	t2, -40(s0)
		lw	t0, -40(s0)
		sltiu	t1, t0, 1
		sw	t1, -40(s0)
		lw	t0, -40(s0)
		bnez	t0, .rotate_left_8
		j	.rotate_left_16
.rotate_left_8:
		lw	t1, -16(s0)
		sw	t1, -44(s0)
		li	t0, 2147483647
		sw	t0, -48(s0)
		lw	t0, -44(s0)
		lw	t1, -48(s0)
		and	t2, t0, t1
		sw	t2, -52(s0)
		li	t0, 1
		sw	t0, -56(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		sll	t2, t0, t1
		sw	t2, -60(s0)
		lw	t1, -16(s0)
		sw	t1, -64(s0)
		li	t0, 31
		sw	t0, -68(s0)
		lw	t0, -64(s0)
		lw	t1, -68(s0)
		sra	t2, t0, t1
		sw	t2, -72(s0)
		li	t0, 1
		sw	t0, -76(s0)
		lw	t0, -72(s0)
		lw	t1, -76(s0)
		and	t2, t0, t1
		sw	t2, -80(s0)
		lw	t0, -60(s0)
		lw	t1, -80(s0)
		or	t2, t0, t1
		sw	t2, -84(s0)
		lw	t0, -84(s0)
		sw	t0, -12(s0)
		j	.rotate_leftreturn_block
.rotate_left_16:
		lw	t1, -20(s0)
		sw	t1, -88(s0)
		li	t0, 31
		sw	t0, -92(s0)
		lw	t0, -88(s0)
		lw	t1, -92(s0)
		xor	t2, t0, t1
		sw	t2, -96(s0)
		lw	t0, -96(s0)
		sltiu	t1, t0, 1
		sw	t1, -96(s0)
		lw	t0, -96(s0)
		bnez	t0, .rotate_left_19
		j	.rotate_left_27
.rotate_left_19:
		lw	t1, -16(s0)
		sw	t1, -100(s0)
		li	t0, 1
		sw	t0, -104(s0)
		lw	t0, -100(s0)
		lw	t1, -104(s0)
		and	t2, t0, t1
		sw	t2, -108(s0)
		li	t0, 31
		sw	t0, -112(s0)
		lw	t0, -108(s0)
		lw	t1, -112(s0)
		sll	t2, t0, t1
		sw	t2, -116(s0)
		lw	t1, -16(s0)
		sw	t1, -120(s0)
		li	t0, 1
		sw	t0, -124(s0)
		lw	t0, -120(s0)
		lw	t1, -124(s0)
		sra	t2, t0, t1
		sw	t2, -128(s0)
		li	t0, 2147483647
		sw	t0, -132(s0)
		lw	t0, -128(s0)
		lw	t1, -132(s0)
		and	t2, t0, t1
		sw	t2, -136(s0)
		lw	t0, -116(s0)
		lw	t1, -136(s0)
		or	t2, t0, t1
		sw	t2, -140(s0)
		lw	t0, -140(s0)
		sw	t0, -12(s0)
		j	.rotate_leftreturn_block
.rotate_left_27:
		lw	t1, -16(s0)
		sw	t1, -144(s0)
		lw	t1, -20(s0)
		sw	t1, -148(s0)
		li	t0, 32
		sw	t0, -152(s0)
		lw	t0, -152(s0)
		lw	t1, -148(s0)
		sub	t2, t0, t1
		sw	t2, -156(s0)
		li	t0, 1
		sw	t0, -160(s0)
		lw	t0, -160(s0)
		lw	t1, -156(s0)
		sll	t2, t0, t1
		sw	t2, -164(s0)
		li	t0, 1
		sw	t0, -168(s0)
		lw	t0, -164(s0)
		lw	t1, -168(s0)
		sub	t2, t0, t1
		sw	t2, -172(s0)
		lw	t0, -144(s0)
		lw	t1, -172(s0)
		and	t2, t0, t1
		sw	t2, -176(s0)
		lw	t1, -20(s0)
		sw	t1, -180(s0)
		lw	t0, -176(s0)
		lw	t1, -180(s0)
		sll	t2, t0, t1
		sw	t2, -184(s0)
		lw	t1, -16(s0)
		sw	t1, -188(s0)
		lw	t1, -20(s0)
		sw	t1, -192(s0)
		li	t0, 32
		sw	t0, -196(s0)
		lw	t0, -196(s0)
		lw	t1, -192(s0)
		sub	t2, t0, t1
		sw	t2, -200(s0)
		lw	t0, -188(s0)
		lw	t1, -200(s0)
		sra	t2, t0, t1
		sw	t2, -204(s0)
		lw	t1, -20(s0)
		sw	t1, -208(s0)
		li	t0, 1
		sw	t0, -212(s0)
		lw	t0, -212(s0)
		lw	t1, -208(s0)
		sll	t2, t0, t1
		sw	t2, -216(s0)
		li	t0, 1
		sw	t0, -220(s0)
		lw	t0, -216(s0)
		lw	t1, -220(s0)
		sub	t2, t0, t1
		sw	t2, -224(s0)
		lw	t0, -204(s0)
		lw	t1, -224(s0)
		and	t2, t0, t1
		sw	t2, -228(s0)
		lw	t0, -184(s0)
		lw	t1, -228(s0)
		or	t2, t0, t1
		sw	t2, -232(s0)
		lw	t0, -232(s0)
		sw	t0, -12(s0)
		j	.rotate_leftreturn_block
.rotate_leftreturn_block:
		lw	t1, -12(s0)
		sw	t1, -236(s0)
		lw	t0, -236(s0)
		mv	a0, t0
		li	t0, 240
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	add
	.p2align	2
	.type	add,@function
add:
.add_parameters:
		li	t0, 176
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -32(s0)
		mv	t1, a1
		sw	t1, -36(s0)
.add:
		lw	t0, -32(s0)
		sw	t0, -16(s0)
		lw	t0, -36(s0)
		sw	t0, -20(s0)
		lw	t1, -16(s0)
		sw	t1, -40(s0)
		li	t0, 65535
		sw	t0, -44(s0)
		lw	t0, -40(s0)
		lw	t1, -44(s0)
		and	t2, t0, t1
		sw	t2, -48(s0)
		lw	t1, -20(s0)
		sw	t1, -52(s0)
		li	t0, 65535
		sw	t0, -56(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		and	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -48(s0)
		lw	t1, -60(s0)
		add	t2, t0, t1
		sw	t2, -64(s0)
		lw	t0, -64(s0)
		sw	t0, -24(s0)
		lw	t1, -16(s0)
		sw	t1, -68(s0)
		li	t0, 16
		sw	t0, -72(s0)
		lw	t0, -68(s0)
		lw	t1, -72(s0)
		sra	t2, t0, t1
		sw	t2, -76(s0)
		li	t0, 65535
		sw	t0, -80(s0)
		lw	t0, -76(s0)
		lw	t1, -80(s0)
		and	t2, t0, t1
		sw	t2, -84(s0)
		lw	t1, -20(s0)
		sw	t1, -88(s0)
		li	t0, 16
		sw	t0, -92(s0)
		lw	t0, -88(s0)
		lw	t1, -92(s0)
		sra	t2, t0, t1
		sw	t2, -96(s0)
		li	t0, 65535
		sw	t0, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		and	t2, t0, t1
		sw	t2, -104(s0)
		lw	t0, -84(s0)
		lw	t1, -104(s0)
		add	t2, t0, t1
		sw	t2, -108(s0)
		lw	t1, -24(s0)
		sw	t1, -112(s0)
		li	t0, 16
		sw	t0, -116(s0)
		lw	t0, -112(s0)
		lw	t1, -116(s0)
		sra	t2, t0, t1
		sw	t2, -120(s0)
		lw	t0, -108(s0)
		lw	t1, -120(s0)
		add	t2, t0, t1
		sw	t2, -124(s0)
		li	t0, 65535
		sw	t0, -128(s0)
		lw	t0, -124(s0)
		lw	t1, -128(s0)
		and	t2, t0, t1
		sw	t2, -132(s0)
		lw	t0, -132(s0)
		sw	t0, -28(s0)
		lw	t1, -28(s0)
		sw	t1, -136(s0)
		li	t0, 16
		sw	t0, -140(s0)
		lw	t0, -136(s0)
		lw	t1, -140(s0)
		sll	t2, t0, t1
		sw	t2, -144(s0)
		lw	t1, -24(s0)
		sw	t1, -148(s0)
		li	t0, 65535
		sw	t0, -152(s0)
		lw	t0, -148(s0)
		lw	t1, -152(s0)
		and	t2, t0, t1
		sw	t2, -156(s0)
		lw	t0, -144(s0)
		lw	t1, -156(s0)
		or	t2, t0, t1
		sw	t2, -160(s0)
		lw	t0, -160(s0)
		sw	t0, -12(s0)
		j	.addreturn_block
.addreturn_block:
		lw	t1, -12(s0)
		sw	t1, -164(s0)
		lw	t0, -164(s0)
		mv	a0, t0
		li	t0, 176
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	lohi
	.p2align	2
	.type	lohi,@function
lohi:
.lohi_parameters:
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
.lohi:
		lw	t0, -24(s0)
		sw	t0, -16(s0)
		lw	t0, -28(s0)
		sw	t0, -20(s0)
		lw	t1, -16(s0)
		sw	t1, -32(s0)
		lw	t1, -20(s0)
		sw	t1, -36(s0)
		li	t0, 16
		sw	t0, -40(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		sll	t2, t0, t1
		sw	t2, -44(s0)
		lw	t0, -32(s0)
		lw	t1, -44(s0)
		or	t2, t0, t1
		sw	t2, -48(s0)
		lw	t0, -48(s0)
		sw	t0, -12(s0)
		j	.lohireturn_block
.lohireturn_block:
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

	.globl	sha1
	.p2align	2
	.type	sha1,@function
sha1:
.sha1_parameters:
		li	t0, 1680
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -88(s0)
		mv	t1, a1
		sw	t1, -92(s0)
.sha1:
		lw	t0, -88(s0)
		sw	t0, -16(s0)
		lw	t0, -92(s0)
		sw	t0, -20(s0)
		lw	t1, -20(s0)
		sw	t1, -96(s0)
		li	t0, 64
		sw	t0, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		add	t2, t0, t1
		sw	t2, -104(s0)
		li	t0, 56
		sw	t0, -108(s0)
		lw	t0, -104(s0)
		lw	t1, -108(s0)
		sub	t2, t0, t1
		sw	t2, -112(s0)
		li	t0, 64
		sw	t0, -116(s0)
		lw	t0, -112(s0)
		lw	t1, -116(s0)
		div	t2, t0, t1
		sw	t2, -120(s0)
		li	t0, 1
		sw	t0, -124(s0)
		lw	t0, -120(s0)
		lw	t1, -124(s0)
		add	t2, t0, t1
		sw	t2, -128(s0)
		lw	t0, -128(s0)
		sw	t0, -24(s0)
		lw	t1, -24(s0)
		sw	t1, -132(s0)
		lw	t1, my_MAXCHUNK
		sw	t1, -136(s0)
		lw	t0, -136(s0)
		lw	t1, -132(s0)
		slt	t2, t0, t1
		sw	t2, -140(s0)
		lw	t0, -140(s0)
		bnez	t0, .sha1_15
		j	.sha1_18
.sha1_15:
		la	t0, my_.str.3
		sw	t0, -144(s0)
		lw	t0, -144(s0)
		mv	a0, t0
		call	println
		li	t0, 0
		sw	t0, -148(s0)
		lw	t0, -148(s0)
		sw	t0, -12(s0)
		j	.sha1return_block
.sha1_18:
		li	t0, 0
		sw	t0, -152(s0)
		lw	t0, -152(s0)
		sw	t0, -28(s0)
		j	.sha1_21
.sha1_21:
		lw	t1, -28(s0)
		sw	t1, -156(s0)
		lw	t1, -24(s0)
		sw	t1, -160(s0)
		lw	t0, -156(s0)
		lw	t1, -160(s0)
		slt	t2, t0, t1
		sw	t2, -164(s0)
		lw	t0, -164(s0)
		bnez	t0, .sha1_25
		j	.sha1_43
.sha1_25:
		li	t0, 0
		sw	t0, -168(s0)
		lw	t0, -168(s0)
		sw	t0, -32(s0)
		j	.sha1_26
.sha1_26:
		lw	t1, -32(s0)
		sw	t1, -172(s0)
		li	t0, 80
		sw	t0, -176(s0)
		lw	t0, -172(s0)
		lw	t1, -176(s0)
		slt	t2, t0, t1
		sw	t2, -180(s0)
		lw	t0, -180(s0)
		bnez	t0, .sha1_29
		j	.sha1_39
.sha1_29:
		lw	t1, my_chunks
		sw	t1, -184(s0)
		lw	t1, -28(s0)
		sw	t1, -188(s0)
		li	t0, 8
		sw	t0, -192(s0)
		lw	t0, -188(s0)
		lw	t1, -192(s0)
		mul	t2, t0, t1
		sw	t2, -196(s0)
		lw	t0, -184(s0)
		lw	t1, -196(s0)
		add	t2, t0, t1
		sw	t2, -200(s0)
		lw	t0, -200(s0)
		lw	t1, 0(t0)
		sw	t1, -204(s0)
		lw	t1, -32(s0)
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
		li	t0, 0
		sw	t0, -224(s0)
		lw	t0, -224(s0)
		lw	t1, -220(s0)
		sw	t0, 0(t1)
		j	.sha1_36
.sha1_36:
		lw	t1, -32(s0)
		sw	t1, -228(s0)
		li	t0, 1
		sw	t0, -232(s0)
		lw	t0, -228(s0)
		lw	t1, -232(s0)
		add	t2, t0, t1
		sw	t2, -236(s0)
		lw	t0, -236(s0)
		sw	t0, -32(s0)
		j	.sha1_26
.sha1_39:
		j	.sha1_40
.sha1_40:
		lw	t1, -28(s0)
		sw	t1, -240(s0)
		li	t0, 1
		sw	t0, -244(s0)
		lw	t0, -240(s0)
		lw	t1, -244(s0)
		add	t2, t0, t1
		sw	t2, -248(s0)
		lw	t0, -248(s0)
		sw	t0, -28(s0)
		j	.sha1_21
.sha1_43:
		li	t0, 0
		sw	t0, -252(s0)
		lw	t0, -252(s0)
		sw	t0, -28(s0)
		j	.sha1_44
.sha1_44:
		lw	t1, -28(s0)
		sw	t1, -256(s0)
		lw	t1, -20(s0)
		sw	t1, -260(s0)
		lw	t0, -256(s0)
		lw	t1, -260(s0)
		slt	t2, t0, t1
		sw	t2, -264(s0)
		lw	t0, -264(s0)
		bnez	t0, .sha1_48
		j	.sha1_81
.sha1_48:
		lw	t1, my_chunks
		sw	t1, -268(s0)
		lw	t1, -28(s0)
		sw	t1, -272(s0)
		li	t0, 64
		sw	t0, -276(s0)
		lw	t0, -272(s0)
		lw	t1, -276(s0)
		div	t2, t0, t1
		sw	t2, -280(s0)
		li	t0, 8
		sw	t0, -284(s0)
		lw	t0, -280(s0)
		lw	t1, -284(s0)
		mul	t2, t0, t1
		sw	t2, -288(s0)
		lw	t0, -268(s0)
		lw	t1, -288(s0)
		add	t2, t0, t1
		sw	t2, -292(s0)
		lw	t0, -292(s0)
		lw	t1, 0(t0)
		sw	t1, -296(s0)
		lw	t1, -28(s0)
		sw	t1, -300(s0)
		li	t0, 64
		sw	t0, -304(s0)
		lw	t0, -300(s0)
		lw	t1, -304(s0)
		rem	t2, t0, t1
		sw	t2, -308(s0)
		li	t0, 4
		sw	t0, -312(s0)
		lw	t0, -308(s0)
		lw	t1, -312(s0)
		div	t2, t0, t1
		sw	t2, -316(s0)
		li	t0, 4
		sw	t0, -320(s0)
		lw	t0, -316(s0)
		lw	t1, -320(s0)
		mul	t2, t0, t1
		sw	t2, -324(s0)
		lw	t0, -296(s0)
		lw	t1, -324(s0)
		add	t2, t0, t1
		sw	t2, -328(s0)
		lw	t1, my_chunks
		sw	t1, -332(s0)
		lw	t1, -28(s0)
		sw	t1, -336(s0)
		li	t0, 64
		sw	t0, -340(s0)
		lw	t0, -336(s0)
		lw	t1, -340(s0)
		div	t2, t0, t1
		sw	t2, -344(s0)
		li	t0, 8
		sw	t0, -348(s0)
		lw	t0, -344(s0)
		lw	t1, -348(s0)
		mul	t2, t0, t1
		sw	t2, -352(s0)
		lw	t0, -332(s0)
		lw	t1, -352(s0)
		add	t2, t0, t1
		sw	t2, -356(s0)
		lw	t0, -356(s0)
		lw	t1, 0(t0)
		sw	t1, -360(s0)
		lw	t1, -28(s0)
		sw	t1, -364(s0)
		li	t0, 64
		sw	t0, -368(s0)
		lw	t0, -364(s0)
		lw	t1, -368(s0)
		rem	t2, t0, t1
		sw	t2, -372(s0)
		li	t0, 4
		sw	t0, -376(s0)
		lw	t0, -372(s0)
		lw	t1, -376(s0)
		div	t2, t0, t1
		sw	t2, -380(s0)
		li	t0, 4
		sw	t0, -384(s0)
		lw	t0, -380(s0)
		lw	t1, -384(s0)
		mul	t2, t0, t1
		sw	t2, -388(s0)
		lw	t0, -360(s0)
		lw	t1, -388(s0)
		add	t2, t0, t1
		sw	t2, -392(s0)
		lw	t0, -392(s0)
		lw	t1, 0(t0)
		sw	t1, -396(s0)
		lw	t1, -16(s0)
		sw	t1, -400(s0)
		lw	t1, -28(s0)
		sw	t1, -404(s0)
		li	t0, 4
		sw	t0, -408(s0)
		lw	t0, -404(s0)
		lw	t1, -408(s0)
		mul	t2, t0, t1
		sw	t2, -412(s0)
		lw	t0, -400(s0)
		lw	t1, -412(s0)
		add	t2, t0, t1
		sw	t2, -416(s0)
		lw	t0, -416(s0)
		lw	t1, 0(t0)
		sw	t1, -420(s0)
		lw	t1, -28(s0)
		sw	t1, -424(s0)
		li	t0, 4
		sw	t0, -428(s0)
		lw	t0, -424(s0)
		lw	t1, -428(s0)
		rem	t2, t0, t1
		sw	t2, -432(s0)
		li	t0, 3
		sw	t0, -436(s0)
		lw	t0, -436(s0)
		lw	t1, -432(s0)
		sub	t2, t0, t1
		sw	t2, -440(s0)
		li	t0, 8
		sw	t0, -444(s0)
		lw	t0, -440(s0)
		lw	t1, -444(s0)
		mul	t2, t0, t1
		sw	t2, -448(s0)
		lw	t0, -420(s0)
		lw	t1, -448(s0)
		sll	t2, t0, t1
		sw	t2, -452(s0)
		lw	t0, -396(s0)
		lw	t1, -452(s0)
		or	t2, t0, t1
		sw	t2, -456(s0)
		lw	t0, -456(s0)
		lw	t1, -328(s0)
		sw	t0, 0(t1)
		j	.sha1_78
.sha1_78:
		lw	t1, -28(s0)
		sw	t1, -460(s0)
		li	t0, 1
		sw	t0, -464(s0)
		lw	t0, -460(s0)
		lw	t1, -464(s0)
		add	t2, t0, t1
		sw	t2, -468(s0)
		lw	t0, -468(s0)
		sw	t0, -28(s0)
		j	.sha1_44
.sha1_81:
		lw	t1, my_chunks
		sw	t1, -472(s0)
		lw	t1, -28(s0)
		sw	t1, -476(s0)
		li	t0, 64
		sw	t0, -480(s0)
		lw	t0, -476(s0)
		lw	t1, -480(s0)
		div	t2, t0, t1
		sw	t2, -484(s0)
		li	t0, 8
		sw	t0, -488(s0)
		lw	t0, -484(s0)
		lw	t1, -488(s0)
		mul	t2, t0, t1
		sw	t2, -492(s0)
		lw	t0, -472(s0)
		lw	t1, -492(s0)
		add	t2, t0, t1
		sw	t2, -496(s0)
		lw	t0, -496(s0)
		lw	t1, 0(t0)
		sw	t1, -500(s0)
		lw	t1, -28(s0)
		sw	t1, -504(s0)
		li	t0, 64
		sw	t0, -508(s0)
		lw	t0, -504(s0)
		lw	t1, -508(s0)
		rem	t2, t0, t1
		sw	t2, -512(s0)
		li	t0, 4
		sw	t0, -516(s0)
		lw	t0, -512(s0)
		lw	t1, -516(s0)
		div	t2, t0, t1
		sw	t2, -520(s0)
		li	t0, 4
		sw	t0, -524(s0)
		lw	t0, -520(s0)
		lw	t1, -524(s0)
		mul	t2, t0, t1
		sw	t2, -528(s0)
		lw	t0, -500(s0)
		lw	t1, -528(s0)
		add	t2, t0, t1
		sw	t2, -532(s0)
		lw	t1, my_chunks
		sw	t1, -536(s0)
		lw	t1, -28(s0)
		sw	t1, -540(s0)
		li	t0, 64
		sw	t0, -544(s0)
		lw	t0, -540(s0)
		lw	t1, -544(s0)
		div	t2, t0, t1
		sw	t2, -548(s0)
		li	t0, 8
		sw	t0, -552(s0)
		lw	t0, -548(s0)
		lw	t1, -552(s0)
		mul	t2, t0, t1
		sw	t2, -556(s0)
		lw	t0, -536(s0)
		lw	t1, -556(s0)
		add	t2, t0, t1
		sw	t2, -560(s0)
		lw	t0, -560(s0)
		lw	t1, 0(t0)
		sw	t1, -564(s0)
		lw	t1, -28(s0)
		sw	t1, -568(s0)
		li	t0, 64
		sw	t0, -572(s0)
		lw	t0, -568(s0)
		lw	t1, -572(s0)
		rem	t2, t0, t1
		sw	t2, -576(s0)
		li	t0, 4
		sw	t0, -580(s0)
		lw	t0, -576(s0)
		lw	t1, -580(s0)
		div	t2, t0, t1
		sw	t2, -584(s0)
		li	t0, 4
		sw	t0, -588(s0)
		lw	t0, -584(s0)
		lw	t1, -588(s0)
		mul	t2, t0, t1
		sw	t2, -592(s0)
		lw	t0, -564(s0)
		lw	t1, -592(s0)
		add	t2, t0, t1
		sw	t2, -596(s0)
		lw	t0, -596(s0)
		lw	t1, 0(t0)
		sw	t1, -600(s0)
		lw	t1, -28(s0)
		sw	t1, -604(s0)
		li	t0, 4
		sw	t0, -608(s0)
		lw	t0, -604(s0)
		lw	t1, -608(s0)
		rem	t2, t0, t1
		sw	t2, -612(s0)
		li	t0, 3
		sw	t0, -616(s0)
		lw	t0, -616(s0)
		lw	t1, -612(s0)
		sub	t2, t0, t1
		sw	t2, -620(s0)
		li	t0, 8
		sw	t0, -624(s0)
		lw	t0, -620(s0)
		lw	t1, -624(s0)
		mul	t2, t0, t1
		sw	t2, -628(s0)
		li	t0, 128
		sw	t0, -632(s0)
		lw	t0, -632(s0)
		lw	t1, -628(s0)
		sll	t2, t0, t1
		sw	t2, -636(s0)
		lw	t0, -600(s0)
		lw	t1, -636(s0)
		or	t2, t0, t1
		sw	t2, -640(s0)
		lw	t0, -640(s0)
		lw	t1, -532(s0)
		sw	t0, 0(t1)
		lw	t1, my_chunks
		sw	t1, -644(s0)
		lw	t1, -24(s0)
		sw	t1, -648(s0)
		li	t0, 1
		sw	t0, -652(s0)
		lw	t0, -648(s0)
		lw	t1, -652(s0)
		sub	t2, t0, t1
		sw	t2, -656(s0)
		li	t0, 8
		sw	t0, -660(s0)
		lw	t0, -656(s0)
		lw	t1, -660(s0)
		mul	t2, t0, t1
		sw	t2, -664(s0)
		lw	t0, -644(s0)
		lw	t1, -664(s0)
		add	t2, t0, t1
		sw	t2, -668(s0)
		lw	t0, -668(s0)
		lw	t1, 0(t0)
		sw	t1, -672(s0)
		li	t0, 15
		sw	t0, -676(s0)
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
		lw	t1, -20(s0)
		sw	t1, -692(s0)
		li	t0, 3
		sw	t0, -696(s0)
		lw	t0, -692(s0)
		lw	t1, -696(s0)
		sll	t2, t0, t1
		sw	t2, -700(s0)
		lw	t0, -700(s0)
		lw	t1, -688(s0)
		sw	t0, 0(t1)
		lw	t1, my_chunks
		sw	t1, -704(s0)
		lw	t1, -24(s0)
		sw	t1, -708(s0)
		li	t0, 1
		sw	t0, -712(s0)
		lw	t0, -708(s0)
		lw	t1, -712(s0)
		sub	t2, t0, t1
		sw	t2, -716(s0)
		li	t0, 8
		sw	t0, -720(s0)
		lw	t0, -716(s0)
		lw	t1, -720(s0)
		mul	t2, t0, t1
		sw	t2, -724(s0)
		lw	t0, -704(s0)
		lw	t1, -724(s0)
		add	t2, t0, t1
		sw	t2, -728(s0)
		lw	t0, -728(s0)
		lw	t1, 0(t0)
		sw	t1, -732(s0)
		li	t0, 14
		sw	t0, -736(s0)
		li	t0, 4
		sw	t0, -740(s0)
		lw	t0, -736(s0)
		lw	t1, -740(s0)
		mul	t2, t0, t1
		sw	t2, -744(s0)
		lw	t0, -732(s0)
		lw	t1, -744(s0)
		add	t2, t0, t1
		sw	t2, -748(s0)
		lw	t1, -20(s0)
		sw	t1, -752(s0)
		li	t0, 29
		sw	t0, -756(s0)
		lw	t0, -752(s0)
		lw	t1, -756(s0)
		sra	t2, t0, t1
		sw	t2, -760(s0)
		li	t0, 7
		sw	t0, -764(s0)
		lw	t0, -760(s0)
		lw	t1, -764(s0)
		and	t2, t0, t1
		sw	t2, -768(s0)
		lw	t0, -768(s0)
		lw	t1, -748(s0)
		sw	t0, 0(t1)
		li	t0, 1732584193
		sw	t0, -772(s0)
		lw	t0, -772(s0)
		sw	t0, -36(s0)
		li	t0, 43913
		sw	t0, -776(s0)
		lw	t0, -776(s0)
		mv	a0, t0
		li	t0, 61389
		sw	t0, -780(s0)
		lw	t0, -780(s0)
		mv	a1, t0
		call	lohi
		mv	t1, a0
		sw	t1, -784(s0)
		lw	t0, -784(s0)
		sw	t0, -40(s0)
		li	t0, 56574
		sw	t0, -788(s0)
		lw	t0, -788(s0)
		mv	a0, t0
		li	t0, 39098
		sw	t0, -792(s0)
		lw	t0, -792(s0)
		mv	a1, t0
		call	lohi
		mv	t1, a0
		sw	t1, -796(s0)
		lw	t0, -796(s0)
		sw	t0, -44(s0)
		li	t0, 271733878
		sw	t0, -800(s0)
		lw	t0, -800(s0)
		sw	t0, -48(s0)
		li	t0, 57840
		sw	t0, -804(s0)
		lw	t0, -804(s0)
		mv	a0, t0
		li	t0, 50130
		sw	t0, -808(s0)
		lw	t0, -808(s0)
		mv	a1, t0
		call	lohi
		mv	t1, a0
		sw	t1, -812(s0)
		lw	t0, -812(s0)
		sw	t0, -52(s0)
		li	t0, 0
		sw	t0, -816(s0)
		lw	t0, -816(s0)
		sw	t0, -28(s0)
		j	.sha1_132
.sha1_132:
		lw	t1, -28(s0)
		sw	t1, -820(s0)
		lw	t1, -24(s0)
		sw	t1, -824(s0)
		lw	t0, -820(s0)
		lw	t1, -824(s0)
		slt	t2, t0, t1
		sw	t2, -828(s0)
		lw	t0, -828(s0)
		bnez	t0, .sha1_136
		j	.sha1_294
.sha1_136:
		li	t0, 16
		sw	t0, -832(s0)
		lw	t0, -832(s0)
		sw	t0, -32(s0)
		j	.sha1_137
.sha1_137:
		lw	t1, -32(s0)
		sw	t1, -836(s0)
		li	t0, 80
		sw	t0, -840(s0)
		lw	t0, -836(s0)
		lw	t1, -840(s0)
		slt	t2, t0, t1
		sw	t2, -844(s0)
		lw	t0, -844(s0)
		bnez	t0, .sha1_140
		j	.sha1_186
.sha1_140:
		lw	t1, my_chunks
		sw	t1, -848(s0)
		lw	t1, -28(s0)
		sw	t1, -852(s0)
		li	t0, 8
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
		lw	t1, -32(s0)
		sw	t1, -872(s0)
		li	t0, 4
		sw	t0, -876(s0)
		lw	t0, -872(s0)
		lw	t1, -876(s0)
		mul	t2, t0, t1
		sw	t2, -880(s0)
		lw	t0, -868(s0)
		lw	t1, -880(s0)
		add	t2, t0, t1
		sw	t2, -884(s0)
		lw	t1, my_chunks
		sw	t1, -888(s0)
		lw	t1, -28(s0)
		sw	t1, -892(s0)
		li	t0, 8
		sw	t0, -896(s0)
		lw	t0, -892(s0)
		lw	t1, -896(s0)
		mul	t2, t0, t1
		sw	t2, -900(s0)
		lw	t0, -888(s0)
		lw	t1, -900(s0)
		add	t2, t0, t1
		sw	t2, -904(s0)
		lw	t0, -904(s0)
		lw	t1, 0(t0)
		sw	t1, -908(s0)
		lw	t1, -32(s0)
		sw	t1, -912(s0)
		li	t0, 3
		sw	t0, -916(s0)
		lw	t0, -912(s0)
		lw	t1, -916(s0)
		sub	t2, t0, t1
		sw	t2, -920(s0)
		li	t0, 4
		sw	t0, -924(s0)
		lw	t0, -920(s0)
		lw	t1, -924(s0)
		mul	t2, t0, t1
		sw	t2, -928(s0)
		lw	t0, -908(s0)
		lw	t1, -928(s0)
		add	t2, t0, t1
		sw	t2, -932(s0)
		lw	t0, -932(s0)
		lw	t1, 0(t0)
		sw	t1, -936(s0)
		lw	t1, my_chunks
		sw	t1, -940(s0)
		lw	t1, -28(s0)
		sw	t1, -944(s0)
		li	t0, 8
		sw	t0, -948(s0)
		lw	t0, -944(s0)
		lw	t1, -948(s0)
		mul	t2, t0, t1
		sw	t2, -952(s0)
		lw	t0, -940(s0)
		lw	t1, -952(s0)
		add	t2, t0, t1
		sw	t2, -956(s0)
		lw	t0, -956(s0)
		lw	t1, 0(t0)
		sw	t1, -960(s0)
		lw	t1, -32(s0)
		sw	t1, -964(s0)
		li	t0, 8
		sw	t0, -968(s0)
		lw	t0, -964(s0)
		lw	t1, -968(s0)
		sub	t2, t0, t1
		sw	t2, -972(s0)
		li	t0, 4
		sw	t0, -976(s0)
		lw	t0, -972(s0)
		lw	t1, -976(s0)
		mul	t2, t0, t1
		sw	t2, -980(s0)
		lw	t0, -960(s0)
		lw	t1, -980(s0)
		add	t2, t0, t1
		sw	t2, -984(s0)
		lw	t0, -984(s0)
		lw	t1, 0(t0)
		sw	t1, -988(s0)
		lw	t0, -936(s0)
		lw	t1, -988(s0)
		xor	t2, t0, t1
		sw	t2, -992(s0)
		lw	t1, my_chunks
		sw	t1, -996(s0)
		lw	t1, -28(s0)
		sw	t1, -1000(s0)
		li	t0, 8
		sw	t0, -1004(s0)
		lw	t0, -1000(s0)
		lw	t1, -1004(s0)
		mul	t2, t0, t1
		sw	t2, -1008(s0)
		lw	t0, -996(s0)
		lw	t1, -1008(s0)
		add	t2, t0, t1
		sw	t2, -1012(s0)
		lw	t0, -1012(s0)
		lw	t1, 0(t0)
		sw	t1, -1016(s0)
		lw	t1, -32(s0)
		sw	t1, -1020(s0)
		li	t0, 14
		sw	t0, -1024(s0)
		lw	t0, -1020(s0)
		lw	t1, -1024(s0)
		sub	t2, t0, t1
		sw	t2, -1028(s0)
		li	t0, 4
		sw	t0, -1032(s0)
		lw	t0, -1028(s0)
		lw	t1, -1032(s0)
		mul	t2, t0, t1
		sw	t2, -1036(s0)
		lw	t0, -1016(s0)
		lw	t1, -1036(s0)
		add	t2, t0, t1
		sw	t2, -1040(s0)
		lw	t0, -1040(s0)
		lw	t1, 0(t0)
		sw	t1, -1044(s0)
		lw	t0, -992(s0)
		lw	t1, -1044(s0)
		xor	t2, t0, t1
		sw	t2, -1048(s0)
		lw	t1, my_chunks
		sw	t1, -1052(s0)
		lw	t1, -28(s0)
		sw	t1, -1056(s0)
		li	t0, 8
		sw	t0, -1060(s0)
		lw	t0, -1056(s0)
		lw	t1, -1060(s0)
		mul	t2, t0, t1
		sw	t2, -1064(s0)
		lw	t0, -1052(s0)
		lw	t1, -1064(s0)
		add	t2, t0, t1
		sw	t2, -1068(s0)
		lw	t0, -1068(s0)
		lw	t1, 0(t0)
		sw	t1, -1072(s0)
		lw	t1, -32(s0)
		sw	t1, -1076(s0)
		li	t0, 16
		sw	t0, -1080(s0)
		lw	t0, -1076(s0)
		lw	t1, -1080(s0)
		sub	t2, t0, t1
		sw	t2, -1084(s0)
		li	t0, 4
		sw	t0, -1088(s0)
		lw	t0, -1084(s0)
		lw	t1, -1088(s0)
		mul	t2, t0, t1
		sw	t2, -1092(s0)
		lw	t0, -1072(s0)
		lw	t1, -1092(s0)
		add	t2, t0, t1
		sw	t2, -1096(s0)
		lw	t0, -1096(s0)
		lw	t1, 0(t0)
		sw	t1, -1100(s0)
		lw	t0, -1048(s0)
		lw	t1, -1100(s0)
		xor	t2, t0, t1
		sw	t2, -1104(s0)
		lw	t0, -1104(s0)
		mv	a0, t0
		li	t0, 1
		sw	t0, -1108(s0)
		lw	t0, -1108(s0)
		mv	a1, t0
		call	rotate_left
		mv	t1, a0
		sw	t1, -1112(s0)
		lw	t0, -1112(s0)
		lw	t1, -884(s0)
		sw	t0, 0(t1)
		j	.sha1_183
.sha1_183:
		lw	t1, -32(s0)
		sw	t1, -1116(s0)
		li	t0, 1
		sw	t0, -1120(s0)
		lw	t0, -1116(s0)
		lw	t1, -1120(s0)
		add	t2, t0, t1
		sw	t2, -1124(s0)
		lw	t0, -1124(s0)
		sw	t0, -32(s0)
		j	.sha1_137
.sha1_186:
		lw	t1, -36(s0)
		sw	t1, -1128(s0)
		lw	t0, -1128(s0)
		sw	t0, -56(s0)
		lw	t1, -40(s0)
		sw	t1, -1132(s0)
		lw	t0, -1132(s0)
		sw	t0, -60(s0)
		lw	t1, -44(s0)
		sw	t1, -1136(s0)
		lw	t0, -1136(s0)
		sw	t0, -64(s0)
		lw	t1, -48(s0)
		sw	t1, -1140(s0)
		lw	t0, -1140(s0)
		sw	t0, -68(s0)
		lw	t1, -52(s0)
		sw	t1, -1144(s0)
		lw	t0, -1144(s0)
		sw	t0, -72(s0)
		li	t0, 0
		sw	t0, -1148(s0)
		lw	t0, -1148(s0)
		sw	t0, -32(s0)
		j	.sha1_197
.sha1_197:
		lw	t1, -32(s0)
		sw	t1, -1152(s0)
		li	t0, 80
		sw	t0, -1156(s0)
		lw	t0, -1152(s0)
		lw	t1, -1156(s0)
		slt	t2, t0, t1
		sw	t2, -1160(s0)
		lw	t0, -1160(s0)
		bnez	t0, .sha1_200
		j	.sha1_275
.sha1_200:
		lw	t1, -32(s0)
		sw	t1, -1164(s0)
		li	t0, 20
		sw	t0, -1168(s0)
		lw	t0, -1164(s0)
		lw	t1, -1168(s0)
		slt	t2, t0, t1
		sw	t2, -1172(s0)
		lw	t0, -1172(s0)
		bnez	t0, .sha1_205
		j	.sha1_214
.sha1_205:
		lw	t1, -60(s0)
		sw	t1, -1176(s0)
		lw	t1, -64(s0)
		sw	t1, -1180(s0)
		lw	t0, -1176(s0)
		lw	t1, -1180(s0)
		and	t2, t0, t1
		sw	t2, -1184(s0)
		lw	t1, -60(s0)
		sw	t1, -1188(s0)
		li	t0, -1
		sw	t0, -1192(s0)
		lw	t0, -1192(s0)
		lw	t1, -1188(s0)
		xor	t2, t0, t1
		sw	t2, -1196(s0)
		lw	t1, -68(s0)
		sw	t1, -1200(s0)
		lw	t0, -1196(s0)
		lw	t1, -1200(s0)
		and	t2, t0, t1
		sw	t2, -1204(s0)
		lw	t0, -1184(s0)
		lw	t1, -1204(s0)
		or	t2, t0, t1
		sw	t2, -1208(s0)
		lw	t0, -1208(s0)
		sw	t0, -76(s0)
		li	t0, 1518500249
		sw	t0, -1212(s0)
		lw	t0, -1212(s0)
		sw	t0, -80(s0)
		j	.sha1_248
.sha1_214:
		lw	t1, -32(s0)
		sw	t1, -1216(s0)
		li	t0, 40
		sw	t0, -1220(s0)
		lw	t0, -1216(s0)
		lw	t1, -1220(s0)
		slt	t2, t0, t1
		sw	t2, -1224(s0)
		lw	t0, -1224(s0)
		bnez	t0, .sha1_217
		j	.sha1_223
.sha1_217:
		lw	t1, -60(s0)
		sw	t1, -1228(s0)
		lw	t1, -64(s0)
		sw	t1, -1232(s0)
		lw	t0, -1228(s0)
		lw	t1, -1232(s0)
		xor	t2, t0, t1
		sw	t2, -1236(s0)
		lw	t1, -68(s0)
		sw	t1, -1240(s0)
		lw	t0, -1236(s0)
		lw	t1, -1240(s0)
		xor	t2, t0, t1
		sw	t2, -1244(s0)
		lw	t0, -1244(s0)
		sw	t0, -76(s0)
		li	t0, 1859775393
		sw	t0, -1248(s0)
		lw	t0, -1248(s0)
		sw	t0, -80(s0)
		j	.sha1_247
.sha1_223:
		lw	t1, -32(s0)
		sw	t1, -1252(s0)
		li	t0, 60
		sw	t0, -1256(s0)
		lw	t0, -1252(s0)
		lw	t1, -1256(s0)
		slt	t2, t0, t1
		sw	t2, -1260(s0)
		lw	t0, -1260(s0)
		bnez	t0, .sha1_226
		j	.sha1_239
.sha1_226:
		lw	t1, -60(s0)
		sw	t1, -1264(s0)
		lw	t1, -64(s0)
		sw	t1, -1268(s0)
		lw	t0, -1264(s0)
		lw	t1, -1268(s0)
		and	t2, t0, t1
		sw	t2, -1272(s0)
		lw	t1, -60(s0)
		sw	t1, -1276(s0)
		lw	t1, -68(s0)
		sw	t1, -1280(s0)
		lw	t0, -1276(s0)
		lw	t1, -1280(s0)
		and	t2, t0, t1
		sw	t2, -1284(s0)
		lw	t0, -1272(s0)
		lw	t1, -1284(s0)
		or	t2, t0, t1
		sw	t2, -1288(s0)
		lw	t1, -64(s0)
		sw	t1, -1292(s0)
		lw	t1, -68(s0)
		sw	t1, -1296(s0)
		lw	t0, -1292(s0)
		lw	t1, -1296(s0)
		and	t2, t0, t1
		sw	t2, -1300(s0)
		lw	t0, -1288(s0)
		lw	t1, -1300(s0)
		or	t2, t0, t1
		sw	t2, -1304(s0)
		lw	t0, -1304(s0)
		sw	t0, -76(s0)
		li	t0, 48348
		sw	t0, -1308(s0)
		lw	t0, -1308(s0)
		mv	a0, t0
		li	t0, 36635
		sw	t0, -1312(s0)
		lw	t0, -1312(s0)
		mv	a1, t0
		call	lohi
		mv	t1, a0
		sw	t1, -1316(s0)
		lw	t0, -1316(s0)
		sw	t0, -80(s0)
		j	.sha1_246
.sha1_239:
		lw	t1, -60(s0)
		sw	t1, -1320(s0)
		lw	t1, -64(s0)
		sw	t1, -1324(s0)
		lw	t0, -1320(s0)
		lw	t1, -1324(s0)
		xor	t2, t0, t1
		sw	t2, -1328(s0)
		lw	t1, -68(s0)
		sw	t1, -1332(s0)
		lw	t0, -1328(s0)
		lw	t1, -1332(s0)
		xor	t2, t0, t1
		sw	t2, -1336(s0)
		lw	t0, -1336(s0)
		sw	t0, -76(s0)
		li	t0, 49622
		sw	t0, -1340(s0)
		lw	t0, -1340(s0)
		mv	a0, t0
		li	t0, 51810
		sw	t0, -1344(s0)
		lw	t0, -1344(s0)
		mv	a1, t0
		call	lohi
		mv	t1, a0
		sw	t1, -1348(s0)
		lw	t0, -1348(s0)
		sw	t0, -80(s0)
		j	.sha1_246
.sha1_246:
		j	.sha1_247
.sha1_247:
		j	.sha1_248
.sha1_248:
		lw	t1, -56(s0)
		sw	t1, -1352(s0)
		lw	t0, -1352(s0)
		mv	a0, t0
		li	t0, 5
		sw	t0, -1356(s0)
		lw	t0, -1356(s0)
		mv	a1, t0
		call	rotate_left
		mv	t1, a0
		sw	t1, -1360(s0)
		lw	t1, -72(s0)
		sw	t1, -1364(s0)
		lw	t0, -1360(s0)
		mv	a0, t0
		lw	t0, -1364(s0)
		mv	a1, t0
		call	add
		mv	t1, a0
		sw	t1, -1368(s0)
		lw	t1, -76(s0)
		sw	t1, -1372(s0)
		lw	t1, -80(s0)
		sw	t1, -1376(s0)
		lw	t0, -1372(s0)
		mv	a0, t0
		lw	t0, -1376(s0)
		mv	a1, t0
		call	add
		mv	t1, a0
		sw	t1, -1380(s0)
		lw	t0, -1368(s0)
		mv	a0, t0
		lw	t0, -1380(s0)
		mv	a1, t0
		call	add
		mv	t1, a0
		sw	t1, -1384(s0)
		lw	t1, my_chunks
		sw	t1, -1388(s0)
		lw	t1, -28(s0)
		sw	t1, -1392(s0)
		li	t0, 8
		sw	t0, -1396(s0)
		lw	t0, -1392(s0)
		lw	t1, -1396(s0)
		mul	t2, t0, t1
		sw	t2, -1400(s0)
		lw	t0, -1388(s0)
		lw	t1, -1400(s0)
		add	t2, t0, t1
		sw	t2, -1404(s0)
		lw	t0, -1404(s0)
		lw	t1, 0(t0)
		sw	t1, -1408(s0)
		lw	t1, -32(s0)
		sw	t1, -1412(s0)
		li	t0, 4
		sw	t0, -1416(s0)
		lw	t0, -1412(s0)
		lw	t1, -1416(s0)
		mul	t2, t0, t1
		sw	t2, -1420(s0)
		lw	t0, -1408(s0)
		lw	t1, -1420(s0)
		add	t2, t0, t1
		sw	t2, -1424(s0)
		lw	t0, -1424(s0)
		lw	t1, 0(t0)
		sw	t1, -1428(s0)
		lw	t0, -1384(s0)
		mv	a0, t0
		lw	t0, -1428(s0)
		mv	a1, t0
		call	add
		mv	t1, a0
		sw	t1, -1432(s0)
		lw	t0, -1432(s0)
		sw	t0, -84(s0)
		lw	t1, -68(s0)
		sw	t1, -1436(s0)
		lw	t0, -1436(s0)
		sw	t0, -72(s0)
		lw	t1, -64(s0)
		sw	t1, -1440(s0)
		lw	t0, -1440(s0)
		sw	t0, -68(s0)
		lw	t1, -60(s0)
		sw	t1, -1444(s0)
		lw	t0, -1444(s0)
		mv	a0, t0
		li	t0, 30
		sw	t0, -1448(s0)
		lw	t0, -1448(s0)
		mv	a1, t0
		call	rotate_left
		mv	t1, a0
		sw	t1, -1452(s0)
		lw	t0, -1452(s0)
		sw	t0, -64(s0)
		lw	t1, -56(s0)
		sw	t1, -1456(s0)
		lw	t0, -1456(s0)
		sw	t0, -60(s0)
		lw	t1, -84(s0)
		sw	t1, -1460(s0)
		lw	t0, -1460(s0)
		sw	t0, -56(s0)
		j	.sha1_272
.sha1_272:
		lw	t1, -32(s0)
		sw	t1, -1464(s0)
		li	t0, 1
		sw	t0, -1468(s0)
		lw	t0, -1464(s0)
		lw	t1, -1468(s0)
		add	t2, t0, t1
		sw	t2, -1472(s0)
		lw	t0, -1472(s0)
		sw	t0, -32(s0)
		j	.sha1_197
.sha1_275:
		lw	t1, -36(s0)
		sw	t1, -1476(s0)
		lw	t1, -56(s0)
		sw	t1, -1480(s0)
		lw	t0, -1476(s0)
		mv	a0, t0
		lw	t0, -1480(s0)
		mv	a1, t0
		call	add
		mv	t1, a0
		sw	t1, -1484(s0)
		lw	t0, -1484(s0)
		sw	t0, -36(s0)
		lw	t1, -40(s0)
		sw	t1, -1488(s0)
		lw	t1, -60(s0)
		sw	t1, -1492(s0)
		lw	t0, -1488(s0)
		mv	a0, t0
		lw	t0, -1492(s0)
		mv	a1, t0
		call	add
		mv	t1, a0
		sw	t1, -1496(s0)
		lw	t0, -1496(s0)
		sw	t0, -40(s0)
		lw	t1, -44(s0)
		sw	t1, -1500(s0)
		lw	t1, -64(s0)
		sw	t1, -1504(s0)
		lw	t0, -1500(s0)
		mv	a0, t0
		lw	t0, -1504(s0)
		mv	a1, t0
		call	add
		mv	t1, a0
		sw	t1, -1508(s0)
		lw	t0, -1508(s0)
		sw	t0, -44(s0)
		lw	t1, -48(s0)
		sw	t1, -1512(s0)
		lw	t1, -68(s0)
		sw	t1, -1516(s0)
		lw	t0, -1512(s0)
		mv	a0, t0
		lw	t0, -1516(s0)
		mv	a1, t0
		call	add
		mv	t1, a0
		sw	t1, -1520(s0)
		lw	t0, -1520(s0)
		sw	t0, -48(s0)
		lw	t1, -52(s0)
		sw	t1, -1524(s0)
		lw	t1, -72(s0)
		sw	t1, -1528(s0)
		lw	t0, -1524(s0)
		mv	a0, t0
		lw	t0, -1528(s0)
		mv	a1, t0
		call	add
		mv	t1, a0
		sw	t1, -1532(s0)
		lw	t0, -1532(s0)
		sw	t0, -52(s0)
		j	.sha1_291
.sha1_291:
		lw	t1, -28(s0)
		sw	t1, -1536(s0)
		li	t0, 1
		sw	t0, -1540(s0)
		lw	t0, -1536(s0)
		lw	t1, -1540(s0)
		add	t2, t0, t1
		sw	t2, -1544(s0)
		lw	t0, -1544(s0)
		sw	t0, -28(s0)
		j	.sha1_132
.sha1_294:
		lw	t1, my_outputBuffer
		sw	t1, -1548(s0)
		li	t0, 0
		sw	t0, -1552(s0)
		li	t0, 4
		sw	t0, -1556(s0)
		lw	t0, -1552(s0)
		lw	t1, -1556(s0)
		mul	t2, t0, t1
		sw	t2, -1560(s0)
		lw	t0, -1548(s0)
		lw	t1, -1560(s0)
		add	t2, t0, t1
		sw	t2, -1564(s0)
		lw	t1, -36(s0)
		sw	t1, -1568(s0)
		lw	t0, -1568(s0)
		lw	t1, -1564(s0)
		sw	t0, 0(t1)
		lw	t1, my_outputBuffer
		sw	t1, -1572(s0)
		li	t0, 1
		sw	t0, -1576(s0)
		li	t0, 4
		sw	t0, -1580(s0)
		lw	t0, -1576(s0)
		lw	t1, -1580(s0)
		mul	t2, t0, t1
		sw	t2, -1584(s0)
		lw	t0, -1572(s0)
		lw	t1, -1584(s0)
		add	t2, t0, t1
		sw	t2, -1588(s0)
		lw	t1, -40(s0)
		sw	t1, -1592(s0)
		lw	t0, -1592(s0)
		lw	t1, -1588(s0)
		sw	t0, 0(t1)
		lw	t1, my_outputBuffer
		sw	t1, -1596(s0)
		li	t0, 2
		sw	t0, -1600(s0)
		li	t0, 4
		sw	t0, -1604(s0)
		lw	t0, -1600(s0)
		lw	t1, -1604(s0)
		mul	t2, t0, t1
		sw	t2, -1608(s0)
		lw	t0, -1596(s0)
		lw	t1, -1608(s0)
		add	t2, t0, t1
		sw	t2, -1612(s0)
		lw	t1, -44(s0)
		sw	t1, -1616(s0)
		lw	t0, -1616(s0)
		lw	t1, -1612(s0)
		sw	t0, 0(t1)
		lw	t1, my_outputBuffer
		sw	t1, -1620(s0)
		li	t0, 3
		sw	t0, -1624(s0)
		li	t0, 4
		sw	t0, -1628(s0)
		lw	t0, -1624(s0)
		lw	t1, -1628(s0)
		mul	t2, t0, t1
		sw	t2, -1632(s0)
		lw	t0, -1620(s0)
		lw	t1, -1632(s0)
		add	t2, t0, t1
		sw	t2, -1636(s0)
		lw	t1, -48(s0)
		sw	t1, -1640(s0)
		lw	t0, -1640(s0)
		lw	t1, -1636(s0)
		sw	t0, 0(t1)
		lw	t1, my_outputBuffer
		sw	t1, -1644(s0)
		li	t0, 4
		sw	t0, -1648(s0)
		li	t0, 4
		sw	t0, -1652(s0)
		lw	t0, -1648(s0)
		lw	t1, -1652(s0)
		mul	t2, t0, t1
		sw	t2, -1656(s0)
		lw	t0, -1644(s0)
		lw	t1, -1656(s0)
		add	t2, t0, t1
		sw	t2, -1660(s0)
		lw	t1, -52(s0)
		sw	t1, -1664(s0)
		lw	t0, -1664(s0)
		lw	t1, -1660(s0)
		sw	t0, 0(t1)
		lw	t1, my_outputBuffer
		sw	t1, -1668(s0)
		lw	t0, -1668(s0)
		sw	t0, -12(s0)
		j	.sha1return_block
.sha1return_block:
		lw	t1, -12(s0)
		sw	t1, -1672(s0)
		lw	t0, -1672(s0)
		mv	a0, t0
		li	t0, 1680
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	computeSHA1
	.p2align	2
	.type	computeSHA1,@function
computeSHA1:
.computeSHA1_parameters:
		li	t0, 192
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -24(s0)
.computeSHA1:
		lw	t0, -24(s0)
		sw	t0, -12(s0)
		li	t0, 0
		sw	t0, -28(s0)
		lw	t0, -28(s0)
		sw	t0, -16(s0)
		j	.computeSHA1_4
.computeSHA1_4:
		lw	t1, -16(s0)
		sw	t1, -32(s0)
		lw	t1, -12(s0)
		sw	t1, -36(s0)
		lw	t0, -36(s0)
		mv	a0, t0
		call	length
		mv	t1, a0
		sw	t1, -40(s0)
		lw	t0, -32(s0)
		lw	t1, -40(s0)
		slt	t2, t0, t1
		sw	t2, -44(s0)
		lw	t0, -44(s0)
		bnez	t0, .computeSHA1_9
		j	.computeSHA1_19
.computeSHA1_9:
		lw	t1, my_inputBuffer
		sw	t1, -48(s0)
		lw	t1, -16(s0)
		sw	t1, -52(s0)
		li	t0, 4
		sw	t0, -56(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		mul	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -48(s0)
		lw	t1, -60(s0)
		add	t2, t0, t1
		sw	t2, -64(s0)
		lw	t1, -12(s0)
		sw	t1, -68(s0)
		lw	t1, -16(s0)
		sw	t1, -72(s0)
		lw	t0, -68(s0)
		mv	a0, t0
		lw	t0, -72(s0)
		mv	a1, t0
		call	ord
		mv	t1, a0
		sw	t1, -76(s0)
		lw	t0, -76(s0)
		lw	t1, -64(s0)
		sw	t0, 0(t1)
		j	.computeSHA1_16
.computeSHA1_16:
		lw	t1, -16(s0)
		sw	t1, -80(s0)
		li	t0, 1
		sw	t0, -84(s0)
		lw	t0, -80(s0)
		lw	t1, -84(s0)
		add	t2, t0, t1
		sw	t2, -88(s0)
		lw	t0, -88(s0)
		sw	t0, -16(s0)
		j	.computeSHA1_4
.computeSHA1_19:
		lw	t1, my_inputBuffer
		sw	t1, -92(s0)
		lw	t1, -12(s0)
		sw	t1, -96(s0)
		lw	t0, -96(s0)
		mv	a0, t0
		call	length
		mv	t1, a0
		sw	t1, -100(s0)
		lw	t0, -92(s0)
		mv	a0, t0
		lw	t0, -100(s0)
		mv	a1, t0
		call	sha1
		mv	t1, a0
		sw	t1, -104(s0)
		lw	t0, -104(s0)
		sw	t0, -20(s0)
		li	t0, 0
		sw	t0, -108(s0)
		lw	t0, -108(s0)
		sw	t0, -16(s0)
		j	.computeSHA1_27
.computeSHA1_27:
		lw	t1, -16(s0)
		sw	t1, -112(s0)
		lw	t1, -20(s0)
		sw	t1, -116(s0)
		li	t0, -1
		sw	t0, -120(s0)
		li	t0, 4
		sw	t0, -124(s0)
		lw	t0, -120(s0)
		lw	t1, -124(s0)
		mul	t2, t0, t1
		sb	t2, -128(s0)
		lw	t0, -116(s0)
		lb	t1, -128(s0)
		add	t2, t0, t1
		sw	t2, -132(s0)
		lw	t0, -132(s0)
		lw	t1, 0(t0)
		sw	t1, -136(s0)
		lw	t0, -112(s0)
		lw	t1, -136(s0)
		slt	t2, t0, t1
		sw	t2, -140(s0)
		lw	t0, -140(s0)
		bnez	t0, .computeSHA1_34
		j	.computeSHA1_45
.computeSHA1_34:
		lw	t1, -20(s0)
		sw	t1, -144(s0)
		lw	t1, -16(s0)
		sw	t1, -148(s0)
		li	t0, 4
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
		mv	a0, t0
		call	toStringHex
		mv	t1, a0
		sw	t1, -168(s0)
		lw	t0, -168(s0)
		mv	a0, t0
		call	print
		j	.computeSHA1_42
.computeSHA1_42:
		lw	t1, -16(s0)
		sw	t1, -172(s0)
		li	t0, 1
		sw	t0, -176(s0)
		lw	t0, -172(s0)
		lw	t1, -176(s0)
		add	t2, t0, t1
		sw	t2, -180(s0)
		lw	t0, -180(s0)
		sw	t0, -16(s0)
		j	.computeSHA1_27
.computeSHA1_45:
		la	t0, my_.str.4
		sw	t0, -184(s0)
		lw	t0, -184(s0)
		mv	a0, t0
		call	println
		j	.computeSHA1return_block
.computeSHA1return_block:
		li	t0, 192
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	nextLetter
	.p2align	2
	.type	nextLetter,@function
nextLetter:
.nextLetter_parameters:
		li	t0, 96
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
.nextLetter:
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -24(s0)
		li	t0, 122
		sw	t0, -28(s0)
		lw	t0, -24(s0)
		lw	t1, -28(s0)
		xor	t2, t0, t1
		sw	t2, -32(s0)
		lw	t0, -32(s0)
		sltiu	t1, t0, 1
		sw	t1, -32(s0)
		lw	t0, -32(s0)
		bnez	t0, .nextLetter_6
		j	.nextLetter_8
.nextLetter_6:
		li	t0, 0
		sw	t0, -36(s0)
		li	t0, 1
		sw	t0, -40(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		sub	t2, t0, t1
		sw	t2, -44(s0)
		lw	t0, -44(s0)
		sw	t0, -12(s0)
		j	.nextLetterreturn_block
.nextLetter_8:
		lw	t1, -16(s0)
		sw	t1, -48(s0)
		li	t0, 90
		sw	t0, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		xor	t2, t0, t1
		sw	t2, -56(s0)
		lw	t0, -56(s0)
		sltiu	t1, t0, 1
		sw	t1, -56(s0)
		lw	t0, -56(s0)
		bnez	t0, .nextLetter_11
		j	.nextLetter_12
.nextLetter_11:
		li	t0, 97
		sw	t0, -60(s0)
		lw	t0, -60(s0)
		sw	t0, -12(s0)
		j	.nextLetterreturn_block
.nextLetter_12:
		lw	t1, -16(s0)
		sw	t1, -64(s0)
		li	t0, 57
		sw	t0, -68(s0)
		lw	t0, -64(s0)
		lw	t1, -68(s0)
		xor	t2, t0, t1
		sw	t2, -72(s0)
		lw	t0, -72(s0)
		sltiu	t1, t0, 1
		sw	t1, -72(s0)
		lw	t0, -72(s0)
		bnez	t0, .nextLetter_15
		j	.nextLetter_16
.nextLetter_15:
		li	t0, 65
		sw	t0, -76(s0)
		lw	t0, -76(s0)
		sw	t0, -12(s0)
		j	.nextLetterreturn_block
.nextLetter_16:
		lw	t1, -16(s0)
		sw	t1, -80(s0)
		li	t0, 1
		sw	t0, -84(s0)
		lw	t0, -80(s0)
		lw	t1, -84(s0)
		add	t2, t0, t1
		sw	t2, -88(s0)
		lw	t0, -88(s0)
		sw	t0, -12(s0)
		j	.nextLetterreturn_block
.nextLetterreturn_block:
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

	.globl	nextText
	.p2align	2
	.type	nextText,@function
nextText:
.nextText_parameters:
		li	t0, 192
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -28(s0)
		mv	t1, a1
		sw	t1, -32(s0)
.nextText:
		lw	t0, -28(s0)
		sw	t0, -16(s0)
		lw	t0, -32(s0)
		sw	t0, -20(s0)
		lw	t1, -20(s0)
		sw	t1, -36(s0)
		li	t0, 1
		sw	t0, -40(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		sub	t2, t0, t1
		sw	t2, -44(s0)
		lw	t0, -44(s0)
		sw	t0, -24(s0)
		j	.nextText_9
.nextText_9:
		lw	t1, -24(s0)
		sw	t1, -48(s0)
		li	t0, 0
		sw	t0, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		slt	t2, t0, t1
		sw	t2, -56(s0)
		lw	t0, -56(s0)
		xori	t1, t0, 1
		sw	t1, -56(s0)
		lw	t0, -56(s0)
		bnez	t0, .nextText_12
		j	.nextText_36
.nextText_12:
		lw	t1, -16(s0)
		sw	t1, -60(s0)
		lw	t1, -24(s0)
		sw	t1, -64(s0)
		li	t0, 4
		sw	t0, -68(s0)
		lw	t0, -64(s0)
		lw	t1, -68(s0)
		mul	t2, t0, t1
		sw	t2, -72(s0)
		lw	t0, -60(s0)
		lw	t1, -72(s0)
		add	t2, t0, t1
		sw	t2, -76(s0)
		lw	t1, -16(s0)
		sw	t1, -80(s0)
		lw	t1, -24(s0)
		sw	t1, -84(s0)
		li	t0, 4
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
		mv	a0, t0
		call	nextLetter
		mv	t1, a0
		sw	t1, -104(s0)
		lw	t0, -104(s0)
		lw	t1, -76(s0)
		sw	t0, 0(t1)
		lw	t1, -16(s0)
		sw	t1, -108(s0)
		lw	t1, -24(s0)
		sw	t1, -112(s0)
		li	t0, 4
		sw	t0, -116(s0)
		lw	t0, -112(s0)
		lw	t1, -116(s0)
		mul	t2, t0, t1
		sw	t2, -120(s0)
		lw	t0, -108(s0)
		lw	t1, -120(s0)
		add	t2, t0, t1
		sw	t2, -124(s0)
		lw	t0, -124(s0)
		lw	t1, 0(t0)
		sw	t1, -128(s0)
		li	t0, 0
		sw	t0, -132(s0)
		li	t0, 1
		sw	t0, -136(s0)
		lw	t0, -132(s0)
		lw	t1, -136(s0)
		sub	t2, t0, t1
		sw	t2, -140(s0)
		lw	t0, -128(s0)
		lw	t1, -140(s0)
		xor	t2, t0, t1
		sw	t2, -144(s0)
		lw	t0, -144(s0)
		sltiu	t1, t0, 1
		sw	t1, -144(s0)
		lw	t0, -144(s0)
		bnez	t0, .nextText_27
		j	.nextText_31
.nextText_27:
		lw	t1, -16(s0)
		sw	t1, -148(s0)
		lw	t1, -24(s0)
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
		li	t0, 48
		sw	t0, -168(s0)
		lw	t0, -168(s0)
		lw	t1, -164(s0)
		sw	t0, 0(t1)
		j	.nextText_32
.nextText_31:
		li	t0, 1
		sw	t0, -172(s0)
		lw	t0, -172(s0)
		sb	t0, -12(s0)
		j	.nextTextreturn_block
.nextText_32:
		j	.nextText_33
.nextText_33:
		lw	t1, -24(s0)
		sw	t1, -176(s0)
		li	t0, -1
		sw	t0, -180(s0)
		lw	t0, -176(s0)
		lw	t1, -180(s0)
		add	t2, t0, t1
		sw	t2, -184(s0)
		lw	t0, -184(s0)
		sw	t0, -24(s0)
		j	.nextText_9
.nextText_36:
		li	t0, 0
		sw	t0, -188(s0)
		lw	t0, -188(s0)
		sb	t0, -12(s0)
		j	.nextTextreturn_block
.nextTextreturn_block:
		lb	t1, -12(s0)
		sb	t1, -192(s0)
		lb	t0, -192(s0)
		mv	a0, t0
		li	t0, 192
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	array_equal
	.p2align	2
	.type	array_equal,@function
array_equal:
.array_equal_parameters:
		li	t0, 208
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -28(s0)
		mv	t1, a1
		sw	t1, -32(s0)
.array_equal:
		lw	t0, -28(s0)
		sw	t0, -16(s0)
		lw	t0, -32(s0)
		sw	t0, -20(s0)
		lw	t1, -16(s0)
		sw	t1, -36(s0)
		li	t0, -1
		sw	t0, -40(s0)
		li	t0, 4
		sw	t0, -44(s0)
		lw	t0, -40(s0)
		lw	t1, -44(s0)
		mul	t2, t0, t1
		sb	t2, -48(s0)
		lw	t0, -36(s0)
		lb	t1, -48(s0)
		add	t2, t0, t1
		sw	t2, -52(s0)
		lw	t0, -52(s0)
		lw	t1, 0(t0)
		sw	t1, -56(s0)
		lw	t1, -20(s0)
		sw	t1, -60(s0)
		li	t0, -1
		sw	t0, -64(s0)
		li	t0, 4
		sw	t0, -68(s0)
		lw	t0, -64(s0)
		lw	t1, -68(s0)
		mul	t2, t0, t1
		sb	t2, -72(s0)
		lw	t0, -60(s0)
		lb	t1, -72(s0)
		add	t2, t0, t1
		sw	t2, -76(s0)
		lw	t0, -76(s0)
		lw	t1, 0(t0)
		sw	t1, -80(s0)
		lw	t0, -56(s0)
		lw	t1, -80(s0)
		xor	t2, t0, t1
		sw	t2, -84(s0)
		lw	t0, -84(s0)
		sltiu	t1, t0, 1
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		xori	t1, t0, 1
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		bnez	t0, .array_equal_15
		j	.array_equal_16
.array_equal_15:
		li	t0, 0
		sw	t0, -88(s0)
		lw	t0, -88(s0)
		sb	t0, -12(s0)
		j	.array_equalreturn_block
.array_equal_16:
		li	t0, 0
		sw	t0, -92(s0)
		lw	t0, -92(s0)
		sw	t0, -24(s0)
		j	.array_equal_18
.array_equal_18:
		lw	t1, -24(s0)
		sw	t1, -96(s0)
		lw	t1, -16(s0)
		sw	t1, -100(s0)
		li	t0, -1
		sw	t0, -104(s0)
		li	t0, 4
		sw	t0, -108(s0)
		lw	t0, -104(s0)
		lw	t1, -108(s0)
		mul	t2, t0, t1
		sb	t2, -112(s0)
		lw	t0, -100(s0)
		lb	t1, -112(s0)
		add	t2, t0, t1
		sw	t2, -116(s0)
		lw	t0, -116(s0)
		lw	t1, 0(t0)
		sw	t1, -120(s0)
		lw	t0, -96(s0)
		lw	t1, -120(s0)
		slt	t2, t0, t1
		sw	t2, -124(s0)
		lw	t0, -124(s0)
		bnez	t0, .array_equal_25
		j	.array_equal_40
.array_equal_25:
		lw	t1, -16(s0)
		sw	t1, -128(s0)
		lw	t1, -24(s0)
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
		lw	t0, -144(s0)
		lw	t1, 0(t0)
		sw	t1, -148(s0)
		lw	t1, -20(s0)
		sw	t1, -152(s0)
		lw	t1, -24(s0)
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
		lw	t0, -148(s0)
		lw	t1, -172(s0)
		xor	t2, t0, t1
		sw	t2, -176(s0)
		lw	t0, -176(s0)
		sltiu	t1, t0, 1
		sw	t1, -176(s0)
		lw	t0, -176(s0)
		xori	t1, t0, 1
		sw	t1, -176(s0)
		lw	t0, -176(s0)
		bnez	t0, .array_equal_35
		j	.array_equal_36
.array_equal_35:
		li	t0, 0
		sw	t0, -180(s0)
		lw	t0, -180(s0)
		sb	t0, -12(s0)
		j	.array_equalreturn_block
.array_equal_36:
		j	.array_equal_37
.array_equal_37:
		lw	t1, -24(s0)
		sw	t1, -184(s0)
		li	t0, 1
		sw	t0, -188(s0)
		lw	t0, -184(s0)
		lw	t1, -188(s0)
		add	t2, t0, t1
		sw	t2, -192(s0)
		lw	t0, -192(s0)
		sw	t0, -24(s0)
		j	.array_equal_18
.array_equal_40:
		li	t0, 1
		sw	t0, -196(s0)
		lw	t0, -196(s0)
		sb	t0, -12(s0)
		j	.array_equalreturn_block
.array_equalreturn_block:
		lb	t1, -12(s0)
		sb	t1, -200(s0)
		lb	t0, -200(s0)
		mv	a0, t0
		li	t0, 208
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	crackSHA1
	.p2align	2
	.type	crackSHA1,@function
crackSHA1:
.crackSHA1_parameters:
		li	t0, 512
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -36(s0)
.crackSHA1:
		lw	t0, -36(s0)
		sw	t0, -12(s0)
		li	t0, 5
		sw	t0, -40(s0)
		li	t0, 4
		sw	t0, -44(s0)
		lw	t0, -40(s0)
		lw	t1, -44(s0)
		mul	t2, t0, t1
		sw	t2, -48(s0)
		li	t0, 4
		sw	t0, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		add	t2, t0, t1
		sw	t2, -56(s0)
		lw	t0, -56(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -60(s0)
		li	t0, 5
		sw	t0, -64(s0)
		lw	t0, -64(s0)
		lw	t1, -60(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -68(s0)
		li	t0, 4
		sw	t0, -72(s0)
		lw	t0, -68(s0)
		lw	t1, -72(s0)
		mul	t2, t0, t1
		sw	t2, -76(s0)
		lw	t0, -60(s0)
		lw	t1, -76(s0)
		add	t2, t0, t1
		sw	t2, -80(s0)
		lw	t0, -80(s0)
		sw	t0, -16(s0)
		lw	t1, -12(s0)
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		mv	a0, t0
		call	length
		mv	t1, a0
		sw	t1, -88(s0)
		li	t0, 40
		sw	t0, -92(s0)
		lw	t0, -88(s0)
		lw	t1, -92(s0)
		xor	t2, t0, t1
		sw	t2, -96(s0)
		lw	t0, -96(s0)
		sltiu	t1, t0, 1
		sw	t1, -96(s0)
		lw	t0, -96(s0)
		xori	t1, t0, 1
		sw	t1, -96(s0)
		lw	t0, -96(s0)
		bnez	t0, .crackSHA1_14
		j	.crackSHA1_17
.crackSHA1_14:
		la	t0, my_.str.5
		sw	t0, -100(s0)
		lw	t0, -100(s0)
		mv	a0, t0
		call	println
		j	.crackSHA1return_block
.crackSHA1_17:
		li	t0, 0
		sw	t0, -104(s0)
		lw	t0, -104(s0)
		sw	t0, -20(s0)
		j	.crackSHA1_19
.crackSHA1_19:
		lw	t1, -20(s0)
		sw	t1, -108(s0)
		li	t0, 5
		sw	t0, -112(s0)
		lw	t0, -108(s0)
		lw	t1, -112(s0)
		slt	t2, t0, t1
		sw	t2, -116(s0)
		lw	t0, -116(s0)
		bnez	t0, .crackSHA1_22
		j	.crackSHA1_29
.crackSHA1_22:
		lw	t1, -16(s0)
		sw	t1, -120(s0)
		lw	t1, -20(s0)
		sw	t1, -124(s0)
		li	t0, 4
		sw	t0, -128(s0)
		lw	t0, -124(s0)
		lw	t1, -128(s0)
		mul	t2, t0, t1
		sw	t2, -132(s0)
		lw	t0, -120(s0)
		lw	t1, -132(s0)
		add	t2, t0, t1
		sw	t2, -136(s0)
		li	t0, 0
		sw	t0, -140(s0)
		lw	t0, -140(s0)
		lw	t1, -136(s0)
		sw	t0, 0(t1)
		j	.crackSHA1_26
.crackSHA1_26:
		lw	t1, -20(s0)
		sw	t1, -144(s0)
		li	t0, 1
		sw	t0, -148(s0)
		lw	t0, -144(s0)
		lw	t1, -148(s0)
		add	t2, t0, t1
		sw	t2, -152(s0)
		lw	t0, -152(s0)
		sw	t0, -20(s0)
		j	.crackSHA1_19
.crackSHA1_29:
		li	t0, 0
		sw	t0, -156(s0)
		lw	t0, -156(s0)
		sw	t0, -20(s0)
		j	.crackSHA1_30
.crackSHA1_30:
		lw	t1, -20(s0)
		sw	t1, -160(s0)
		li	t0, 40
		sw	t0, -164(s0)
		lw	t0, -160(s0)
		lw	t1, -164(s0)
		slt	t2, t0, t1
		sw	t2, -168(s0)
		lw	t0, -168(s0)
		bnez	t0, .crackSHA1_33
		j	.crackSHA1_60
.crackSHA1_33:
		lw	t1, -16(s0)
		sw	t1, -172(s0)
		lw	t1, -20(s0)
		sw	t1, -176(s0)
		li	t0, 8
		sw	t0, -180(s0)
		lw	t0, -176(s0)
		lw	t1, -180(s0)
		div	t2, t0, t1
		sw	t2, -184(s0)
		li	t0, 4
		sw	t0, -188(s0)
		lw	t0, -184(s0)
		lw	t1, -188(s0)
		mul	t2, t0, t1
		sw	t2, -192(s0)
		lw	t0, -172(s0)
		lw	t1, -192(s0)
		add	t2, t0, t1
		sw	t2, -196(s0)
		lw	t1, -16(s0)
		sw	t1, -200(s0)
		lw	t1, -20(s0)
		sw	t1, -204(s0)
		li	t0, 8
		sw	t0, -208(s0)
		lw	t0, -204(s0)
		lw	t1, -208(s0)
		div	t2, t0, t1
		sw	t2, -212(s0)
		li	t0, 4
		sw	t0, -216(s0)
		lw	t0, -212(s0)
		lw	t1, -216(s0)
		mul	t2, t0, t1
		sw	t2, -220(s0)
		lw	t0, -200(s0)
		lw	t1, -220(s0)
		add	t2, t0, t1
		sw	t2, -224(s0)
		lw	t0, -224(s0)
		lw	t1, 0(t0)
		sw	t1, -228(s0)
		lw	t1, -12(s0)
		sw	t1, -232(s0)
		lw	t1, -20(s0)
		sw	t1, -236(s0)
		lw	t1, -20(s0)
		sw	t1, -240(s0)
		li	t0, 4
		sw	t0, -244(s0)
		lw	t0, -240(s0)
		lw	t1, -244(s0)
		add	t2, t0, t1
		sw	t2, -248(s0)
		lw	t0, -232(s0)
		mv	a0, t0
		lw	t0, -236(s0)
		mv	a1, t0
		lw	t0, -248(s0)
		mv	a2, t0
		call	substring
		mv	t1, a0
		sw	t1, -252(s0)
		lw	t0, -252(s0)
		mv	a0, t0
		call	hex2int
		mv	t1, a0
		sw	t1, -256(s0)
		lw	t1, -20(s0)
		sw	t1, -260(s0)
		li	t0, 4
		sw	t0, -264(s0)
		lw	t0, -260(s0)
		lw	t1, -264(s0)
		div	t2, t0, t1
		sw	t2, -268(s0)
		li	t0, 2
		sw	t0, -272(s0)
		lw	t0, -268(s0)
		lw	t1, -272(s0)
		rem	t2, t0, t1
		sw	t2, -276(s0)
		li	t0, 1
		sw	t0, -280(s0)
		lw	t0, -280(s0)
		lw	t1, -276(s0)
		sub	t2, t0, t1
		sw	t2, -284(s0)
		li	t0, 16
		sw	t0, -288(s0)
		lw	t0, -284(s0)
		lw	t1, -288(s0)
		mul	t2, t0, t1
		sw	t2, -292(s0)
		lw	t0, -256(s0)
		lw	t1, -292(s0)
		sll	t2, t0, t1
		sw	t2, -296(s0)
		lw	t0, -228(s0)
		lw	t1, -296(s0)
		or	t2, t0, t1
		sw	t2, -300(s0)
		lw	t0, -300(s0)
		lw	t1, -196(s0)
		sw	t0, 0(t1)
		j	.crackSHA1_57
.crackSHA1_57:
		lw	t1, -20(s0)
		sw	t1, -304(s0)
		li	t0, 4
		sw	t0, -308(s0)
		lw	t0, -304(s0)
		lw	t1, -308(s0)
		add	t2, t0, t1
		sw	t2, -312(s0)
		lw	t0, -312(s0)
		sw	t0, -20(s0)
		j	.crackSHA1_30
.crackSHA1_60:
		li	t0, 4
		sw	t0, -316(s0)
		lw	t0, -316(s0)
		sw	t0, -24(s0)
		li	t0, 1
		sw	t0, -320(s0)
		lw	t0, -320(s0)
		sw	t0, -28(s0)
		j	.crackSHA1_63
.crackSHA1_63:
		lw	t1, -28(s0)
		sw	t1, -324(s0)
		lw	t1, -24(s0)
		sw	t1, -328(s0)
		lw	t0, -328(s0)
		lw	t1, -324(s0)
		slt	t2, t0, t1
		sw	t2, -332(s0)
		lw	t0, -332(s0)
		xori	t1, t0, 1
		sw	t1, -332(s0)
		lw	t0, -332(s0)
		bnez	t0, .crackSHA1_67
		j	.crackSHA1_127
.crackSHA1_67:
		li	t0, 0
		sw	t0, -336(s0)
		lw	t0, -336(s0)
		sw	t0, -20(s0)
		j	.crackSHA1_68
.crackSHA1_68:
		lw	t1, -20(s0)
		sw	t1, -340(s0)
		lw	t1, -28(s0)
		sw	t1, -344(s0)
		lw	t0, -340(s0)
		lw	t1, -344(s0)
		slt	t2, t0, t1
		sw	t2, -348(s0)
		lw	t0, -348(s0)
		bnez	t0, .crackSHA1_72
		j	.crackSHA1_79
.crackSHA1_72:
		lw	t1, my_inputBuffer
		sw	t1, -352(s0)
		lw	t1, -20(s0)
		sw	t1, -356(s0)
		li	t0, 4
		sw	t0, -360(s0)
		lw	t0, -356(s0)
		lw	t1, -360(s0)
		mul	t2, t0, t1
		sw	t2, -364(s0)
		lw	t0, -352(s0)
		lw	t1, -364(s0)
		add	t2, t0, t1
		sw	t2, -368(s0)
		li	t0, 48
		sw	t0, -372(s0)
		lw	t0, -372(s0)
		lw	t1, -368(s0)
		sw	t0, 0(t1)
		j	.crackSHA1_76
.crackSHA1_76:
		lw	t1, -20(s0)
		sw	t1, -376(s0)
		li	t0, 1
		sw	t0, -380(s0)
		lw	t0, -376(s0)
		lw	t1, -380(s0)
		add	t2, t0, t1
		sw	t2, -384(s0)
		lw	t0, -384(s0)
		sw	t0, -20(s0)
		j	.crackSHA1_68
.crackSHA1_79:
		j	.crackSHA1_80
.crackSHA1_80:
		li	t0, 1
		sw	t0, -388(s0)
		lw	t0, -388(s0)
		bnez	t0, .crackSHA1_81
		j	.crackSHA1_123
.crackSHA1_81:
		lw	t1, my_inputBuffer
		sw	t1, -392(s0)
		lw	t1, -28(s0)
		sw	t1, -396(s0)
		lw	t0, -392(s0)
		mv	a0, t0
		lw	t0, -396(s0)
		mv	a1, t0
		call	sha1
		mv	t1, a0
		sw	t1, -400(s0)
		lw	t0, -400(s0)
		sw	t0, -32(s0)
		lw	t1, -32(s0)
		sw	t1, -404(s0)
		lw	t1, -16(s0)
		sw	t1, -408(s0)
		lw	t0, -404(s0)
		mv	a0, t0
		lw	t0, -408(s0)
		mv	a1, t0
		call	array_equal
		mv	t1, a0
		sb	t1, -412(s0)
		lb	t0, -412(s0)
		bnez	t0, .crackSHA1_94
		j	.crackSHA1_113
.crackSHA1_94:
		li	t0, 0
		sw	t0, -416(s0)
		lw	t0, -416(s0)
		sw	t0, -20(s0)
		j	.crackSHA1_95
.crackSHA1_95:
		lw	t1, -20(s0)
		sw	t1, -420(s0)
		lw	t1, -28(s0)
		sw	t1, -424(s0)
		lw	t0, -420(s0)
		lw	t1, -424(s0)
		slt	t2, t0, t1
		sw	t2, -428(s0)
		lw	t0, -428(s0)
		bnez	t0, .crackSHA1_99
		j	.crackSHA1_110
.crackSHA1_99:
		lw	t1, my_inputBuffer
		sw	t1, -432(s0)
		lw	t1, -20(s0)
		sw	t1, -436(s0)
		li	t0, 4
		sw	t0, -440(s0)
		lw	t0, -436(s0)
		lw	t1, -440(s0)
		mul	t2, t0, t1
		sw	t2, -444(s0)
		lw	t0, -432(s0)
		lw	t1, -444(s0)
		add	t2, t0, t1
		sw	t2, -448(s0)
		lw	t0, -448(s0)
		lw	t1, 0(t0)
		sw	t1, -452(s0)
		lw	t0, -452(s0)
		mv	a0, t0
		call	int2chr
		mv	t1, a0
		sw	t1, -456(s0)
		lw	t0, -456(s0)
		mv	a0, t0
		call	print
		j	.crackSHA1_107
.crackSHA1_107:
		lw	t1, -20(s0)
		sw	t1, -460(s0)
		li	t0, 1
		sw	t0, -464(s0)
		lw	t0, -460(s0)
		lw	t1, -464(s0)
		add	t2, t0, t1
		sw	t2, -468(s0)
		lw	t0, -468(s0)
		sw	t0, -20(s0)
		j	.crackSHA1_95
.crackSHA1_110:
		la	t0, my_.str.6
		sw	t0, -472(s0)
		lw	t0, -472(s0)
		mv	a0, t0
		call	println
		j	.crackSHA1return_block
.crackSHA1_113:
		lw	t1, my_inputBuffer
		sw	t1, -476(s0)
		lw	t1, -28(s0)
		sw	t1, -480(s0)
		lw	t0, -476(s0)
		mv	a0, t0
		lw	t0, -480(s0)
		mv	a1, t0
		call	nextText
		mv	t1, a0
		sb	t1, -484(s0)
		li	t0, 1
		sw	t0, -488(s0)
		lw	t0, -488(s0)
		lb	t1, -484(s0)
		xor	t2, t0, t1
		sw	t2, -492(s0)
		lw	t0, -492(s0)
		bnez	t0, .crackSHA1_121
		j	.crackSHA1_122
.crackSHA1_121:
		j	.crackSHA1_123
.crackSHA1_122:
		j	.crackSHA1_80
.crackSHA1_123:
		j	.crackSHA1_124
.crackSHA1_124:
		lw	t1, -28(s0)
		sw	t1, -496(s0)
		li	t0, 1
		sw	t0, -500(s0)
		lw	t0, -496(s0)
		lw	t1, -500(s0)
		add	t2, t0, t1
		sw	t2, -504(s0)
		lw	t0, -504(s0)
		sw	t0, -28(s0)
		j	.crackSHA1_63
.crackSHA1_127:
		la	t0, my_.str.7
		sw	t0, -508(s0)
		lw	t0, -508(s0)
		mv	a0, t0
		call	println
		j	.crackSHA1return_block
.crackSHA1return_block:
		li	t0, 512
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.section	.rodata
	.type	my_.str.0,@object
my_.str.0:
	.asciz	" !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~ "
	.size	my_.str.0, 98

	.section	.sbss
	.type	my_asciiTable,@object
	.globl	my_asciiTable
	.p2align	2
my_asciiTable:
	.word	0
	.size	my_asciiTable, 8

	.section	.rodata
	.type	my_.str.1,@object
my_.str.1:
	.asciz	" "
	.size	my_.str.1, 1

	.section	.rodata
	.type	my_.str.2,@object
my_.str.2:
	.asciz	" "
	.size	my_.str.2, 1

	.section	.sbss
	.type	my_MAXCHUNK,@object
	.globl	my_MAXCHUNK
	.p2align	2
my_MAXCHUNK:
	.word	100
	.size	my_MAXCHUNK, 8

	.section	.sbss
	.type	my_MAXLENGTH,@object
	.globl	my_MAXLENGTH
	.p2align	2
my_MAXLENGTH:
	.word	0
	.size	my_MAXLENGTH, 8

	.section	.sbss
	.type	my_chunks,@object
	.globl	my_chunks
	.p2align	2
my_chunks:
	.word	0
	.size	my_chunks, 8

	.section	.sbss
	.type	my_inputBuffer,@object
	.globl	my_inputBuffer
	.p2align	2
my_inputBuffer:
	.word	0
	.size	my_inputBuffer, 8

	.section	.sbss
	.type	my_outputBuffer,@object
	.globl	my_outputBuffer
	.p2align	2
my_outputBuffer:
	.word	0
	.size	my_outputBuffer, 8

	.section	.rodata
	.type	my_.str.3,@object
my_.str.3:
	.asciz	"nChunk > MAXCHUNK! "
	.size	my_.str.3, 19

	.section	.rodata
	.type	my_.str.4,@object
my_.str.4:
	.asciz	" "
	.size	my_.str.4, 1

	.section	.rodata
	.type	my_.str.5,@object
my_.str.5:
	.asciz	"Invalid input "
	.size	my_.str.5, 14

	.section	.rodata
	.type	my_.str.6,@object
my_.str.6:
	.asciz	" "
	.size	my_.str.6, 1

	.section	.rodata
	.type	my_.str.7,@object
my_.str.7:
	.asciz	"Not Found! "
	.size	my_.str.7, 11
