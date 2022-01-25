.text

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
		li	t0, 1
		sw	t0, -24(s0)
		lw	t0, -24(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -28(s0)
		li	t0, 1
		sw	t0, -32(s0)
		lw	t0, -28(s0)
		lw	t1, -32(s0)
		add	t2, t0, t1
		sw	t2, -36(s0)
		lw	t0, -36(s0)
		sw	t0, -20(s0)
		lw	t1, -20(s0)
		sw	t1, -40(s0)
		lw	t0, -40(s0)
		mv	a0, t0
		call	printlnInt
		li	t0, 0
		sw	t0, -44(s0)
		lw	t0, -44(s0)
		sw	t0, -12(s0)
		j	.mainreturn_block
.mainreturn_block:
		lw	t1, -12(s0)
		sw	t1, -48(s0)
		lw	t0, -48(s0)
		mv	a0, t0
		li	t0, 48
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	