	.text

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_parameters:
		li	t0, 64
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.main:
		la	t0, my_.str.0
		li	t3, -20
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t0, -16
		li	t3, -24
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -24
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -24
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -20
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -24
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		li	t0, -16
		li	t3, -28
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -28
		add	t3, s0, t3
		lw	t1, 0(t3)
		add	t2, s0, t1
		li	t3, -28
		add	t3, s0, t3
		sw	t2, 0(t3)
		li	t3, -28
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -32
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -32
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		li	t0, 2
		li	t3, -36
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -36
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a1, t0
		li	t0, 4
		li	t3, -40
		add	t3, s0, t3
		sw	t0, 0(t3)
		li	t3, -40
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a2, t0
		call	substring
		mv	t1, a0
		li	t3, -44
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -44
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		call	length
		mv	t1, a0
		li	t3, -48
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t0, -12
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
		li	t3, -48
		add	t3, s0, t3
		lw	t0, 0(t3)
		li	t3, -52
		add	t3, s0, t3
		lw	t1, 0(t3)
		sw	t0, 0(t1)
		j	.mainreturn_block
.mainreturn_block:
		li	t0, -12
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
		li	t3, -56
		add	t3, s0, t3
		lw	t0, 0(t3)
		lw	t1, 0(t0)
		li	t3, -60
		add	t3, s0, t3
		sw	t1, 0(t3)
		li	t3, -60
		add	t3, s0, t3
		lw	t0, 0(t3)
		mv	a0, t0
		li	t0, 64
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.section	.rodata
	.type	my_.str.0,@object
my_.str.0:
	.asciz	"hahaha "
	.size	my_.str.0, 7
