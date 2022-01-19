	.text

	.globl	qpow
	.p2align	2
	.type	qpow,@function
qpow:
.qpow_parameters:
		li	t0, 240
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		li	t3, -36
		add	t3, s0, t3
		sw	t1, 0(t3)
		mv	t1, a1
		li	t3, -40
		add	t3, s0, t3
		sw	t1, 0(t3)
		mv	t1, a2
		li	t3, -44
		add	t3, s0, t3
		sw	t1, 0(t3)
.qpow:
		li	t0, -16
		li	t3, -48
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -48
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -48
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -36
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -48
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		li	t0, -20
		li	t3, -52
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -52
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -52
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -40
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -52
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		li	t0, -24
		li	t3, -56
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -56
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -56
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -44
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -56
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		li	t0, 1
		li	t3, -60
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t0, -28
		li	t3, -64
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -64
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -64
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -60
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -64
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		li	t0, -16
		li	t3, -68
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -68
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -68
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -68
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -72
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t0, -32
		li	t3, -76
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -76
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -76
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -72
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -76
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		j	.qpow_11
.qpow_11:
		li	t0, -20
		li	t3, -80
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -80
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -80
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -80
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -84
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t0, 0
		li	t3, -88
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -88
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -84
		add	t3, s0, t3
		lw	t1, 0(t3)
		slt	t2, t0, t1
		li	t3, -92
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -92
		add	t3, s0, t3
		lw	t0, 0(t3)
		bnez	t0, .qpow_14
		j	.qpow_32
.qpow_14:
		li	t0, -20
		li	t3, -96
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -96
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -96
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -96
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -100
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t0, 1
		li	t3, -104
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -100
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -104
		add	t3, s0, t3
		lw	t1, 0(t3)
		and	t2, t0, t1
		li	t3, -108
		add	t3, s0, t3
		sw	t2, 0(t3)
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
		xor	t2, t0, t1
		li	t3, -116
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -116
		add	t3, s0, t3
		lw	t0, 0(t3)
		sltiu	t1, t0, 1
		li	t3, -116
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -116
		add	t3, s0, t3
		lw	t0, 0(t3)
		bnez	t0, .qpow_18
		j	.qpow_24
.qpow_18:
		li	t0, -28
		li	t3, -120
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -120
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -120
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -120
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -124
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t0, -32
		li	t3, -128
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -128
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -128
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -128
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -132
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -124
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -132
		add	t3, s0, t3
		lw	t1, 0(t3)
		mul	t2, t0, t1
		li	t3, -136
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t0, -24
		li	t3, -140
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -140
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -140
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -140
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -144
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -136
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -144
		add	t3, s0, t3
		lw	t1, 0(t3)
		rem	t2, t0, t1
		li	t3, -148
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t0, -28
		li	t3, -152
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -152
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -152
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -148
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -152
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		j	.qpow_24
.qpow_24:
		li	t0, -32
		li	t3, -156
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -156
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -156
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -156
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -160
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t0, -32
		li	t3, -164
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -164
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -164
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -164
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -168
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -160
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -168
		add	t3, s0, t3
		lw	t1, 0(t3)
		mul	t2, t0, t1
		li	t3, -172
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t0, -24
		li	t3, -176
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -176
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -176
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -176
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -180
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -172
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -180
		add	t3, s0, t3
		lw	t1, 0(t3)
		rem	t2, t0, t1
		li	t3, -184
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t0, -32
		li	t3, -188
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -188
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -188
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -184
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -188
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		li	t0, -20
		li	t3, -192
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -192
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -192
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -192
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -196
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t0, 2
		li	t3, -200
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -196
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -200
		add	t3, s0, t3
		lw	t1, 0(t3)
		div	t2, t0, t1
		li	t3, -204
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t0, -20
		li	t3, -208
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -208
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -208
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -204
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -208
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		j	.qpow_11
.qpow_32:
		li	t0, -28
		li	t3, -212
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -212
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -212
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -212
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -216
		add	t3, s0, t3
		sw	t1, 0(t3)
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
		j	.qpowreturn_block
.qpowreturn_block:
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

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_parameters:
		li	t0, 48
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.main:
		li	t0, 2
		li	t3, -16
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -16
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		li	t0, 10
		li	t3, -20
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -20
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a1, t0
		li	t0, 10000
		li	t3, -24
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -24
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a2, t0
		call	qpow
		mv	t1, a0
		li	t3, -28
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -28
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		call	toString
		mv	t1, a0
		li	t3, -32
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -32
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		call	println
		li	t0, 0
		li	t3, -36
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t0, -12
		li	t3, -40
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -40
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -40
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -36
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -40
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		j	.mainreturn_block
.mainreturn_block:
		li	t0, -12
		li	t3, -44
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -44
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -44
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -44
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -48
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -48
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		li	t0, 48
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	
