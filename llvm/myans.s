	.text

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_parameters:
		li	t0, 240
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.main:
		li	t0, 0
		li	t3, -16
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t0, -12
		li	t3, -20
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -20
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -20
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -16
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -20
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		call	getInt
		mv	t1, a0
		li	t3, -24
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -24
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -28
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, my_n, t1
		call	getInt
		mv	t1, a0
		li	t3, -32
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -32
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -36
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, my_p, t1
		call	getInt
		mv	t1, a0
		li	t3, -40
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -40
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -44
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, my_k, t1
		lw	t1, my_p
		li	t3, -48
		add	t3, s0, t3
		sw	t1, 0(t3)
		lw	t1, my_k
		li	t3, -52
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -48
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -52
		add	t3, s0, t3
		lw	t1, 0(t3)
		sub	t2, t0, t1
		li	t3, -56
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t0, 1
		li	t3, -60
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -60
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -56
		add	t3, s0, t3
		lw	t1, 0(t3)
		slt	t2, t0, t1
		li	t3, -64
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -64
		add	t3, s0, t3
		lw	t0, 0(t3)
		bnez	t0, .main_9
		j	.main_12
.main_9:
		la	t0 my_.str.0
		li	t3, -68
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -68
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		call	print
		j	.main_12
.main_12:
		lw	t1, my_p
		li	t3, -72
		add	t3, s0, t3
		sw	t1, 0(t3)
		lw	t1, my_k
		li	t3, -76
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -72
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -76
		add	t3, s0, t3
		lw	t1, 0(t3)
		sub	t2, t0, t1
		li	t3, -80
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -80
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -84
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, my_i, t1
		j	.main_16
.main_16:
		lw	t1, my_i
		li	t3, -88
		add	t3, s0, t3
		sw	t1, 0(t3)
		lw	t1, my_p
		li	t3, -92
		add	t3, s0, t3
		sw	t1, 0(t3)
		lw	t1, my_k
		li	t3, -96
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -92
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -96
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, t0, t1
		li	t3, -100
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -100
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -88
		add	t3, s0, t3
		lw	t1, 0(t3)
		slt	t2, t0, t1
		li	t3, -104
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -104
		add	t3, s0, t3
		lw	t0, 0(t3)
		xori	t1, t0, 1
		li	t3, -104
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -104
		add	t3, s0, t3
		lw	t0, 0(t3)
		bnez	t0, .main_22
		j	.main_52
.main_22:
		lw	t1, my_i
		li	t3, -108
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t0, 1
		li	t3, -112
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -108
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -112
		add	t3, s0, t3
		lw	t1, 0(t3)
		slt	t2, t0, t1
		li	t3, -116
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -116
		add	t3, s0, t3
		lw	t0, 0(t3)
		xori	t1, t0, 1
		li	t3, -116
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t0, 0
		li	t3, -120
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -120
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	t1, t0
		li	t3, -124
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -116
		add	t3, s0, t3
		lw	t0, 0(t3)
		bnez	t0, .main_24AND_AND_TRUE
		li	t3, -120
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	t1, t0
		li	t3, -124
		add	t3, s0, t3
		sw	t1, 0(t3)
		j	.main_24AND_AND_OUT
.main_24AND_AND_TRUE:
		lw	t1, my_i
		li	t3, -128
		add	t3, s0, t3
		sw	t1, 0(t3)
		lw	t1, my_n
		li	t3, -132
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -132
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -128
		add	t3, s0, t3
		lw	t1, 0(t3)
		slt	t2, t0, t1
		li	t3, -136
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -136
		add	t3, s0, t3
		lw	t0, 0(t3)
		xori	t1, t0, 1
		li	t3, -136
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -136
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	t1, t0
		li	t3, -124
		add	t3, s0, t3
		sw	t1, 0(t3)
		j	.main_24AND_AND_OUT
.main_24AND_AND_OUT:
		li	t3, -124
		add	t3, s0, t3
		lw	t0, 0(t3)
		bnez	t0, .main_29
		j	.main_48
.main_29:
		lw	t1, my_i
		li	t3, -140
		add	t3, s0, t3
		sw	t1, 0(t3)
		lw	t1, my_p
		li	t3, -144
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -140
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -144
		add	t3, s0, t3
		lw	t1, 0(t3)
		xor	t2, t0, t1
		li	t3, -148
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -148
		add	t3, s0, t3
		lw	t0, 0(t3)
		sltiu	t1, t0, 1
		li	t3, -148
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -148
		add	t3, s0, t3
		lw	t0, 0(t3)
		bnez	t0, .main_33
		j	.main_42
.main_33:
		la	t0 my_.str.1
		li	t3, -152
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -152
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		call	print
		lw	t1, my_i
		li	t3, -156
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -156
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		call	toString
		mv	t1, a0
		li	t3, -160
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -160
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		call	print
		la	t0 my_.str.2
		li	t3, -164
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -164
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		call	print
		j	.main_47
.main_42:
		lw	t1, my_i
		li	t3, -168
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -168
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		call	printInt
		la	t0 my_.str.3
		li	t3, -172
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -172
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		call	print
		j	.main_47
.main_47:
		j	.main_48
.main_48:
		j	.main_49
.main_49:
		lw	t1, my_i
		li	t3, -176
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t0, 1
		li	t3, -180
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -176
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -180
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, t0, t1
		li	t3, -184
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -184
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -188
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, my_i, t1
		j	.main_16
.main_52:
		lw	t1, my_p
		li	t3, -192
		add	t3, s0, t3
		sw	t1, 0(t3)
		lw	t1, my_k
		li	t3, -196
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -192
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -196
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, t0, t1
		li	t3, -200
		add	t3, s0, t3
		sw	t2, 0(t3)
		lw	t1, my_n
		li	t3, -204
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -200
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -204
		add	t3, s0, t3
		lw	t1, 0(t3)
		slt	t2, t0, t1
		li	t3, -208
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -208
		add	t3, s0, t3
		lw	t0, 0(t3)
		bnez	t0, .main_58
		j	.main_61
.main_58:
		la	t0 my_.str.4
		li	t3, -212
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -212
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		call	print
		j	.main_61
.main_61:
		li	t0, 0
		li	t3, -216
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t0, -12
		li	t3, -220
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -220
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -220
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -216
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -220
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		j	.mainreturn_block
.mainreturn_block:
		li	t0, -12
		li	t3, -224
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -224
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -224
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -224
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -228
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -228
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		li	t0, 240
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.section	.sbss
	.type	my_n,@object
	.globl	my_n
	.p2align	2
my_n:
	.word	0
	.size	my_n, 8

	.section	.sbss
	.type	my_p,@object
	.globl	my_p
	.p2align	2
my_p:
	.word	0
	.size	my_p, 8

	.section	.sbss
	.type	my_k,@object
	.globl	my_k
	.p2align	2
my_k:
	.word	0
	.size	my_k, 8

	.section	.sbss
	.type	my_i,@object
	.globl	my_i
	.p2align	2
my_i:
	.word	0
	.size	my_i, 8

	.section	.rodata
	.type	my_.str.0,@object
my_.str.0:
	.asciz	"<<  "
	.size	my_.str.0, 4

	.section	.rodata
	.type	my_.str.1,@object
my_.str.1:
	.asciz	"( "
	.size	my_.str.1, 2

	.section	.rodata
	.type	my_.str.2,@object
my_.str.2:
	.asciz	")  "
	.size	my_.str.2, 3

	.section	.rodata
	.type	my_.str.3,@object
my_.str.3:
	.asciz	"  "
	.size	my_.str.3, 2

	.section	.rodata
	.type	my_.str.4,@object
my_.str.4:
	.asciz	">>  "
	.size	my_.str.4, 4



