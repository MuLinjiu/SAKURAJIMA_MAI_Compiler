.text

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_parameters:
		li	t0, 80
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.main:
		li	t0, 1
		sw	t0, -24(s0)
		li	t0, -16
		sw	t0, -28(s0)
		lw	t1, -28(s0)
		add	t2, s0, t1
		sw	t2, -28(s0)
		lw	t0, -24(s0)
		lw	t1, -28(s0)
		sw	t0, 0(t1)
		li	t0, -16
		sw	t0, -32(s0)
		lw	t1, -32(s0)
		add	t2, s0, t1
		sw	t2, -32(s0)
		lw	t0, -32(s0)
		lw	t1, 0(t0)
		sw	t1, -36(s0)
		li	t0, 1
		sw	t0, -40(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		add	t2, t0, t1
		sw	t2, -44(s0)
		li	t0, -20
		sw	t0, -48(s0)
		lw	t1, -48(s0)
		add	t2, s0, t1
		sw	t2, -48(s0)
		lw	t0, -44(s0)
		lw	t1, -48(s0)
		sw	t0, 0(t1)
		li	t0, -20
		sw	t0, -52(s0)
		lw	t1, -52(s0)
		add	t2, s0, t1
		sw	t2, -52(s0)
		lw	t0, -52(s0)
		lw	t1, 0(t0)
		sw	t1, -56(s0)
		lw	t0, -56(s0)
		mv	a0, t0
		call	printlnInt
		li	t0, 0
		sw	t0, -60(s0)
		li	t0, -12
		sw	t0, -64(s0)
		lw	t1, -64(s0)
		add	t2, s0, t1
		sw	t2, -64(s0)
		lw	t0, -60(s0)
		lw	t1, -64(s0)
		sw	t0, 0(t1)
		j	.mainreturn_block
.mainreturn_block:
		li	t0, -12
		sw	t0, -68(s0)
		lw	t1, -68(s0)
		add	t2, s0, t1
		sw	t2, -68(s0)
		lw	t0, -68(s0)
		lw	t1, 0(t0)
		sw	t1, -72(s0)
		lw	t0, -72(s0)
		mv	a0, t0
		li	t0, 80
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

