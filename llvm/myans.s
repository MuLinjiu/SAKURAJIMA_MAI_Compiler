	.text

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	s1, s5
.main:
		li	ra, 0
		sw	ra, -12(s0)
		li	ra, 1001
		li	t0, 4
		mul	ra, ra, t0
		li	t0, 4
		add	a0, ra, t0
		call	malloc
		li	ra, 1001
		sw	ra, 0(a0)
		li	ra, 1
		li	t0, 4
		mul	ra, ra, t0
		add	ra, a0, ra
		sw	ra, my_b, s1
		li	t0, 170
		li	ra, 4
		mul	ra, t0, ra
		li	t0, 4
		add	a0, ra, t0
		call	malloc
		li	ra, 170
		sw	ra, 0(a0)
		li	ra, 1
		li	t0, 4
		mul	ra, ra, t0
		add	ra, a0, ra
		sw	ra, my_prime, s1
		li	t0, 1001
		li	ra, 4
		mul	ra, t0, ra
		li	t0, 4
		add	a0, ra, t0
		call	malloc
		li	ra, 1001
		sw	ra, 0(a0)
		li	t0, 1
		li	ra, 4
		mul	ra, t0, ra
		add	ra, a0, ra
		sw	ra, my_gps, s1
		li	ra, 1
		li	t0, 4
		mul	t0, ra, t0
		li	ra, 4
		add	a0, t0, ra
		call	malloc
		li	ra, 1
		sw	ra, 0(a0)
		li	t0, 1
		li	ra, 4
		mul	ra, t0, ra
		add	ra, a0, ra
		sw	ra, my_tmp, s1
		li	a0, 170
		call	origin
		li	ra, 1000
		sw	ra, my_N, s1
		call	getInt
		sw	a0, my_M, s1
		li	ra, 0
		sw	ra, my_primeCount, s1
		li	ra, 0
		sw	ra, my_resultCount, s1
		lw	t0, my_tmp
		li	ra, 0
		li	t1, 4
		mul	ra, ra, t1
		add	ra, t0, ra
		li	t0, 0
		sw	t0, 0(ra)
		li	ra, 0
		sw	ra, my_i, s1
		j	.main_34
.main_34:
		lw	ra, my_i
		lw	t0, my_N
		li	t1, 1
		add	t0, t0, t1
		slt	ra, ra, t0
		bnez	ra, .main_39
		j	.main_49
.main_39:
		lw	t0, my_b
		lw	ra, my_i
		li	t1, 4
		mul	ra, ra, t1
		add	ra, t0, ra
		li	t0, 1
		sw	t0, 0(ra)
		lw	t0, my_gps
		lw	t1, my_i
		li	ra, 4
		mul	ra, t1, ra
		add	ra, t0, ra
		li	t0, 0
		sw	t0, 0(ra)
		j	.main_46
.main_46:
		lw	ra, my_i
		li	t0, 1
		add	ra, ra, t0
		sw	ra, my_i, s1
		j	.main_34
.main_49:
		li	ra, 0
		sw	ra, my_i, s1
		j	.main_50
.main_50:
		lw	t1, my_i
		lw	t0, my_M
		li	ra, 1
		add	ra, t0, ra
		slt	ra, t1, ra
		bnez	ra, .main_55
		j	.main_62
.main_55:
		lw	t0, my_prime
		lw	t1, my_i
		li	ra, 4
		mul	ra, t1, ra
		add	t0, t0, ra
		li	ra, 0
		sw	ra, 0(t0)
		j	.main_59
.main_59:
		lw	ra, my_i
		li	t0, 1
		add	ra, ra, t0
		sw	ra, my_i, s1
		j	.main_50
.main_62:
		li	ra, 0
		sw	ra, my_i, s1
		j	.main_63
.main_63:
		lw	t0, my_i
		lw	ra, my_M
		slt	ra, ra, t0
		xori	ra, ra, 1
		bnez	ra, .main_67
		j	.main_87
.main_67:
		li	ra, 0
		sw	ra, my_j, s1
		j	.main_68
.main_68:
		lw	t0, my_j
		lw	ra, my_M
		slt	ra, ra, t0
		xori	ra, ra, 1
		bnez	ra, .main_72
		j	.main_83
.main_72:
		lw	ra, my_result
		lw	t0, my_i
		li	t1, 8
		mul	t0, t0, t1
		add	ra, ra, t0
		lw	t1, 0(ra)
		lw	ra, my_j
		li	t0, 4
		mul	ra, ra, t0
		add	ra, t1, ra
		li	t0, 0
		li	t1, 1
		sub	t0, t0, t1
		sw	t0, 0(ra)
		j	.main_80
.main_80:
		lw	ra, my_j
		li	t0, 1
		add	ra, ra, t0
		sw	ra, my_j, s1
		j	.main_68
.main_83:
		j	.main_84
.main_84:
		lw	t0, my_i
		li	ra, 1
		add	ra, t0, ra
		sw	ra, my_i, s1
		j	.main_63
.main_87:
		lw	a0, my_N
		call	getPrime
		lw	t1, my_tmp
		li	t0, 0
		li	ra, 4
		mul	ra, t0, ra
		add	ra, t1, ra
		lw	ra, 0(ra)
		sw	ra, my_primeCount, s1
		li	ra, 1
		sw	ra, my_i, s1
		j	.main_93
.main_93:
		lw	t0, my_i
		lw	ra, my_primeCount
		slt	ra, t0, ra
		bnez	ra, .main_97
		j	.main_161
.main_97:
		lw	ra, my_i
		li	t0, 1
		add	ra, ra, t0
		sw	ra, my_j, s1
		j	.main_100
.main_100:
		lw	ra, my_j
		lw	t0, my_primeCount
		slt	ra, t0, ra
		xori	ra, ra, 1
		bnez	ra, .main_104
		j	.main_157
.main_104:
		lw	t0, my_result
		lw	ra, my_i
		li	t1, 8
		mul	ra, ra, t1
		add	ra, t0, ra
		lw	t0, 0(ra)
		lw	t1, my_j
		li	ra, 4
		mul	ra, t1, ra
		add	ra, t0, ra
		lw	t0, 0(ra)
		li	t1, 0
		li	ra, 1
		sub	ra, t1, ra
		xor	ra, t0, ra
		sltiu	ra, ra, 1
		bnez	ra, .main_114
		j	.main_153
.main_114:
		lw	t0, my_result
		lw	t1, my_i
		li	ra, 8
		mul	ra, t1, ra
		add	ra, t0, ra
		lw	t1, 0(ra)
		lw	t0, my_j
		li	ra, 4
		mul	ra, t0, ra
		add	s5, t1, ra
		lw	a0, my_N
		lw	a1, my_i
		lw	a2, my_j
		call	getResult
		sw	a0, 0(s5)
		lw	ra, my_result
		lw	t1, my_i
		li	t0, 8
		mul	t0, t1, t0
		add	ra, ra, t0
		lw	t0, 0(ra)
		lw	ra, my_j
		li	t1, 4
		mul	ra, ra, t1
		add	ra, t0, ra
		lw	t0, 0(ra)
		li	ra, 1
		slt	ra, ra, t0
		bnez	ra, .main_133
		j	.main_152
.main_133:
		lw	ra, my_prime
		lw	t1, my_i
		li	t0, 4
		mul	t0, t1, t0
		add	ra, ra, t0
		lw	a0, 0(ra)
		lw	t0, my_prime
		lw	ra, my_j
		li	t1, 4
		mul	ra, ra, t1
		add	ra, t0, ra
		lw	a1, 0(ra)
		lw	t0, my_result
		lw	ra, my_i
		li	t1, 8
		mul	ra, ra, t1
		add	ra, t0, ra
		lw	ra, 0(ra)
		lw	t0, my_j
		li	t1, 4
		mul	t0, t0, t1
		add	ra, ra, t0
		lw	a2, 0(ra)
		call	printF
		lw	ra, my_resultCount
		li	t0, 1
		add	ra, ra, t0
		sw	ra, my_resultCount, s1
		j	.main_152
.main_152:
		j	.main_153
.main_153:
		j	.main_154
.main_154:
		lw	t0, my_j
		li	ra, 1
		add	ra, t0, ra
		sw	ra, my_j, s1
		j	.main_100
.main_157:
		j	.main_158
.main_158:
		lw	ra, my_i
		li	t0, 1
		add	ra, ra, t0
		sw	ra, my_i, s1
		j	.main_93
.main_161:
		la	a0, my_.str.2
		call	print
		lw	a0, my_resultCount
		call	toString
		call	println
		li	ra, 0
		sw	ra, -12(s0)
		j	.mainreturn_block
.mainreturn_block:
		lw	a0, -12(s0)
		mv	s5, s1
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	origin
	.p2align	2
	.type	origin,@function
origin:
.origin_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -16(s0)
		mv	s11, s5
.origin:
		sw	a0, -12(s0)
		lw	s1, -12(s0)
		li	ra, 8
		mul	ra, s1, ra
		li	t0, 4
		add	a0, ra, t0
		call	malloc
		sw	s1, 0(a0)
		li	ra, 1
		li	t0, 4
		mul	ra, ra, t0
		add	ra, a0, ra
		sw	ra, my_result, s2
		li	ra, 0
		sw	ra, my_i, s2
		j	.origin_12
.origin_12:
		lw	t0, my_i
		lw	ra, -12(s0)
		slt	ra, t0, ra
		bnez	ra, .origin_16
		j	.origin_47
.origin_16:
		lw	t0, my_result
		lw	ra, my_i
		li	t1, 8
		mul	ra, ra, t1
		add	s5, t0, ra
		lw	s1, -12(s0)
		li	ra, 4
		mul	ra, s1, ra
		li	t0, 4
		add	a0, ra, t0
		call	malloc
		sw	s1, 0(a0)
		li	ra, 1
		li	t0, 4
		mul	ra, ra, t0
		add	ra, a0, ra
		sw	ra, 0(s5)
		li	ra, 0
		sw	ra, my_j, s2
		j	.origin_29
.origin_29:
		lw	ra, my_j
		lw	t0, -12(s0)
		slt	ra, ra, t0
		bnez	ra, .origin_33
		j	.origin_43
.origin_33:
		lw	t1, my_result
		lw	ra, my_i
		li	t0, 8
		mul	ra, ra, t0
		add	ra, t1, ra
		lw	t1, 0(ra)
		lw	t0, my_j
		li	ra, 4
		mul	ra, t0, ra
		add	t0, t1, ra
		li	ra, 0
		sw	ra, 0(t0)
		j	.origin_40
.origin_40:
		lw	t0, my_j
		li	ra, 1
		add	ra, t0, ra
		sw	ra, my_j, s2
		j	.origin_29
.origin_43:
		j	.origin_44
.origin_44:
		lw	t0, my_i
		li	ra, 1
		add	ra, t0, ra
		sw	ra, my_i, s2
		j	.origin_12
.origin_47:
		j	.originreturn_block
.originreturn_block:
		mv	s5, s11
		lw	s1, -16(s0)
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	getPrime
	.p2align	2
	.type	getPrime,@function
getPrime:
.getPrime_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.getPrime:
		sw	a0, -12(s0)
		li	ra, 2
		sw	ra, -16(s0)
		li	ra, 2
		sw	ra, -20(s0)
		j	.getPrime_5
.getPrime_5:
		lw	ra, -20(s0)
		lw	t0, -12(s0)
		slt	ra, t0, ra
		xori	ra, ra, 1
		bnez	ra, .getPrime_9
		j	.getPrime_53
.getPrime_9:
		lw	t0, my_b
		lw	ra, -20(s0)
		li	t1, 4
		mul	ra, ra, t1
		add	ra, t0, ra
		lw	t0, 0(ra)
		li	ra, 1
		xor	ra, t0, ra
		sltiu	ra, ra, 1
		bnez	ra, .getPrime_15
		j	.getPrime_34
.getPrime_15:
		lw	ra, my_tmp
		li	t0, 0
		li	t1, 4
		mul	t0, t0, t1
		add	t1, ra, t0
		lw	t0, my_tmp
		li	ra, 0
		li	t2, 4
		mul	ra, ra, t2
		add	ra, t0, ra
		lw	ra, 0(ra)
		li	t0, 1
		add	ra, ra, t0
		sw	ra, 0(t1)
		lw	ra, my_prime
		lw	t2, my_tmp
		li	t1, 0
		li	t0, 4
		mul	t0, t1, t0
		add	t0, t2, t0
		lw	t0, 0(t0)
		li	t1, 4
		mul	t0, t0, t1
		add	ra, ra, t0
		lw	t0, -20(s0)
		sw	t0, 0(ra)
		lw	t0, my_gps
		lw	ra, -20(s0)
		li	t1, 4
		mul	ra, ra, t1
		add	t2, t0, ra
		lw	ra, my_tmp
		li	t0, 0
		li	t1, 4
		mul	t0, t0, t1
		add	ra, ra, t0
		lw	ra, 0(ra)
		sw	ra, 0(t2)
		j	.getPrime_34
.getPrime_34:
		j	.getPrime_35
.getPrime_35:
		lw	t0, -20(s0)
		lw	ra, -16(s0)
		mul	t0, t0, ra
		lw	ra, -12(s0)
		slt	ra, ra, t0
		xori	ra, ra, 1
		bnez	ra, .getPrime_41
		j	.getPrime_49
.getPrime_41:
		lw	ra, my_b
		lw	t1, -20(s0)
		lw	t0, -16(s0)
		mul	t1, t1, t0
		li	t0, 4
		mul	t0, t1, t0
		add	ra, ra, t0
		li	t0, 0
		sw	t0, 0(ra)
		lw	ra, -16(s0)
		li	t0, 1
		add	ra, ra, t0
		sw	ra, -16(s0)
		j	.getPrime_35
.getPrime_49:
		li	ra, 2
		sw	ra, -16(s0)
		j	.getPrime_50
.getPrime_50:
		lw	ra, -20(s0)
		li	t0, 1
		add	ra, ra, t0
		sw	ra, -20(s0)
		j	.getPrime_5
.getPrime_53:
		j	.getPrimereturn_block
.getPrimereturn_block:
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	getResult
	.p2align	2
	.type	getResult,@function
getResult:
.getResult_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	s1, s5
.getResult:
		sw	a0, -16(s0)
		sw	a1, -20(s0)
		sw	a2, -24(s0)
		lw	t1, my_result
		lw	t0, -20(s0)
		li	ra, 8
		mul	ra, t0, ra
		add	ra, t1, ra
		lw	ra, 0(ra)
		lw	t0, -24(s0)
		li	t1, 4
		mul	t0, t0, t1
		add	ra, ra, t0
		lw	t0, 0(ra)
		li	t1, 0
		li	ra, 1
		sub	ra, t1, ra
		xor	ra, t0, ra
		sltiu	ra, ra, 1
		bnez	ra, .getResult_17
		j	.getResult_71
.getResult_17:
		lw	t1, my_prime
		lw	t0, -24(s0)
		li	ra, 4
		mul	ra, t0, ra
		add	ra, t1, ra
		lw	t0, 0(ra)
		li	ra, 2
		mul	t1, t0, ra
		lw	t2, my_prime
		lw	ra, -20(s0)
		li	t0, 4
		mul	ra, ra, t0
		add	ra, t2, ra
		lw	ra, 0(ra)
		sub	t0, t1, ra
		lw	ra, -16(s0)
		slt	ra, ra, t0
		xori	ra, ra, 1
		bnez	ra, .getResult_30
		j	.getResult_70
.getResult_30:
		lw	t1, my_b
		lw	ra, my_prime
		lw	t0, -24(s0)
		li	t2, 4
		mul	t0, t0, t2
		add	ra, ra, t0
		lw	t0, 0(ra)
		li	ra, 2
		mul	t2, t0, ra
		lw	t0, my_prime
		lw	a0, -20(s0)
		li	ra, 4
		mul	ra, a0, ra
		add	ra, t0, ra
		lw	ra, 0(ra)
		sub	t0, t2, ra
		li	ra, 4
		mul	ra, t0, ra
		add	ra, t1, ra
		lw	ra, 0(ra)
		li	t0, 0
		xor	ra, ra, t0
		sltiu	ra, ra, 1
		xori	ra, ra, 1
		bnez	ra, .getResult_45
		j	.getResult_69
.getResult_45:
		lw	ra, my_result
		lw	t0, -20(s0)
		li	t1, 8
		mul	t0, t0, t1
		add	ra, ra, t0
		lw	t1, 0(ra)
		lw	ra, -24(s0)
		li	t0, 4
		mul	ra, ra, t0
		add	s5, t1, ra
		lw	a0, -16(s0)
		lw	a1, -24(s0)
		lw	t1, my_gps
		lw	t0, my_prime
		lw	ra, -24(s0)
		li	t2, 4
		mul	ra, ra, t2
		add	ra, t0, ra
		lw	t0, 0(ra)
		li	ra, 2
		mul	a2, t0, ra
		lw	t2, my_prime
		lw	t0, -20(s0)
		li	ra, 4
		mul	ra, t0, ra
		add	ra, t2, ra
		lw	ra, 0(ra)
		sub	ra, a2, ra
		li	t0, 4
		mul	ra, ra, t0
		add	ra, t1, ra
		lw	a2, 0(ra)
		call	getResult
		li	ra, 1
		add	ra, a0, ra
		sw	ra, 0(s5)
		j	.getResult_69
.getResult_69:
		j	.getResult_70
.getResult_70:
		j	.getResult_71
.getResult_71:
		lw	t0, my_result
		lw	t1, -20(s0)
		li	ra, 8
		mul	ra, t1, ra
		add	ra, t0, ra
		lw	t0, 0(ra)
		lw	t1, -24(s0)
		li	ra, 4
		mul	ra, t1, ra
		add	ra, t0, ra
		lw	ra, 0(ra)
		li	t1, 0
		li	t0, 1
		sub	t0, t1, t0
		xor	ra, ra, t0
		sltiu	ra, ra, 1
		bnez	ra, .getResult_81
		j	.getResult_88
.getResult_81:
		lw	ra, my_result
		lw	t1, -20(s0)
		li	t0, 8
		mul	t0, t1, t0
		add	ra, ra, t0
		lw	ra, 0(ra)
		lw	t1, -24(s0)
		li	t0, 4
		mul	t0, t1, t0
		add	ra, ra, t0
		li	t0, 1
		sw	t0, 0(ra)
		j	.getResult_88
.getResult_88:
		lw	t0, my_result
		lw	t1, -20(s0)
		li	ra, 8
		mul	ra, t1, ra
		add	ra, t0, ra
		lw	ra, 0(ra)
		lw	t0, -24(s0)
		li	t1, 4
		mul	t0, t0, t1
		add	ra, ra, t0
		lw	ra, 0(ra)
		sw	ra, -12(s0)
		j	.getResultreturn_block
.getResultreturn_block:
		lw	a0, -12(s0)
		mv	s5, s1
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	printF
	.p2align	2
	.type	printF,@function
printF:
.printF_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.printF:
		sw	a0, -12(s0)
		sw	a1, -16(s0)
		sw	a2, -20(s0)
		lw	a0, -12(s0)
		call	toString
		call	print
		j	.printF_11
.printF_11:
		lw	ra, -20(s0)
		li	t0, 0
		slt	ra, t0, ra
		bnez	ra, .printF_14
		j	.printF_31
.printF_14:
		la	a0, my_.str.0
		call	print
		lw	a0, -16(s0)
		call	toString
		call	print
		lw	t0, -16(s0)
		li	ra, 2
		mul	t0, t0, ra
		lw	ra, -12(s0)
		sub	ra, t0, ra
		sw	ra, -16(s0)
		lw	ra, -12(s0)
		lw	t0, -16(s0)
		add	t0, ra, t0
		li	ra, 2
		div	ra, t0, ra
		sw	ra, -12(s0)
		lw	ra, -20(s0)
		li	t0, 1
		sub	ra, ra, t0
		sw	ra, -20(s0)
		j	.printF_11
.printF_31:
		la	a0, my_.str.1
		call	print
		j	.printFreturn_block
.printFreturn_block:
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.section	.sbss
	.type	my_N,@object
	.globl	my_N
	.p2align	2
my_N:
	.word	0
	.size	my_N, 8

	.section	.sbss
	.type	my_M,@object
	.globl	my_M
	.p2align	2
my_M:
	.word	0
	.size	my_M, 8

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
	.type	my_primeCount,@object
	.globl	my_primeCount
	.p2align	2
my_primeCount:
	.word	0
	.size	my_primeCount, 8

	.section	.sbss
	.type	my_resultCount,@object
	.globl	my_resultCount
	.p2align	2
my_resultCount:
	.word	0
	.size	my_resultCount, 8

	.section	.sbss
	.type	my_b,@object
	.globl	my_b
	.p2align	2
my_b:
	.word	0
	.size	my_b, 8

	.section	.sbss
	.type	my_prime,@object
	.globl	my_prime
	.p2align	2
my_prime:
	.word	0
	.size	my_prime, 8

	.section	.sbss
	.type	my_gps,@object
	.globl	my_gps
	.p2align	2
my_gps:
	.word	0
	.size	my_gps, 8

	.section	.sbss
	.type	my_tmp,@object
	.globl	my_tmp
	.p2align	2
my_tmp:
	.word	0
	.size	my_tmp, 8

	.section	.sbss
	.type	my_result,@object
	.globl	my_result
	.p2align	2
my_result:
	.word	0
	.size	my_result, 8

	.section	.rodata
	.type	my_.str.0,@object
my_.str.0:
	.asciz	"  "
	.size	my_.str.0, 2

	.section	.rodata
	.type	my_.str.1,@object
my_.str.1:
	.asciz	"\n "
	.size	my_.str.1, 3

	.section	.rodata
	.type	my_.str.2,@object
my_.str.2:
	.asciz	"Total:  "
	.size	my_.str.2, 8


