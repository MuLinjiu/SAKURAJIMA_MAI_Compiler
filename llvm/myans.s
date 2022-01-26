	.text

	.globl	TA
	.p2align	2
	.type	TA,@function
TA:
.TA_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -16(s0)
.TA:
		lw	t0, -16(s0)
		sw	t0, -12(s0)
		j	.TAreturn_block
.TAreturn_block:
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
		li	t0, 128
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.main:
		li	t0, 0
		sw	t0, -24(s0)
		lw	t0, -24(s0)
		sw	t0, -12(s0)
		li	t0, 12
		sw	t0, -28(s0)
		lw	t0, -28(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -32(s0)
		lw	t0, -32(s0)
		mv	a0, t0
		call	TA
		lw	t0, -32(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -36(s0)
		lw	t0, -36(s0)
		addi	t1, t0, 0
		sw	t1, -40(s0)
		la	t0, my_.str.4
		sw	t0, -44(s0)
		lw	t0, -44(s0)
		lw	t1, -40(s0)
		sw	t0, 0(t1)
		lw	t1, -16(s0)
		sw	t1, -48(s0)
		lw	t0, -48(s0)
		addi	t1, t0, 8
		sw	t1, -52(s0)
		li	t0, 0
		sw	t0, -56(s0)
		lw	t0, -56(s0)
		lw	t1, -52(s0)
		sw	t0, 0(t1)
		li	t0, 12
		sw	t0, -60(s0)
		lw	t0, -60(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		mv	a0, t0
		call	TA
		lw	t0, -64(s0)
		sw	t0, -20(s0)
		lw	t1, -20(s0)
		sw	t1, -68(s0)
		lw	t0, -68(s0)
		addi	t1, t0, 0
		sw	t1, -72(s0)
		la	t0, my_.str.5
		sw	t0, -76(s0)
		lw	t0, -76(s0)
		lw	t1, -72(s0)
		sw	t0, 0(t1)
		lw	t1, -20(s0)
		sw	t1, -80(s0)
		lw	t0, -80(s0)
		addi	t1, t0, 8
		sw	t1, -84(s0)
		lw	t1, my_init_anger
		sw	t1, -88(s0)
		lw	t0, -88(s0)
		lw	t1, -84(s0)
		sw	t0, 0(t1)
		la	t0, my_.str.6
		sw	t0, -92(s0)
		lw	t1, -16(s0)
		sw	t1, -96(s0)
		lw	t0, -92(s0)
		mv	a0, t0
		lw	t0, -96(s0)
		mv	a1, t0
		call	work
		la	t0, my_.str.7
		sw	t0, -100(s0)
		lw	t1, -20(s0)
		sw	t1, -104(s0)
		lw	t0, -100(s0)
		mv	a0, t0
		lw	t0, -104(s0)
		mv	a1, t0
		call	work
		la	t0, my_.str.8
		sw	t0, -108(s0)
		lw	t1, -20(s0)
		sw	t1, -112(s0)
		lw	t0, -108(s0)
		mv	a0, t0
		lw	t0, -112(s0)
		mv	a1, t0
		call	work
		li	t0, 0
		sw	t0, -116(s0)
		lw	t0, -116(s0)
		sw	t0, -12(s0)
		j	.mainreturn_block
.mainreturn_block:
		lw	t1, -12(s0)
		sw	t1, -120(s0)
		lw	t0, -120(s0)
		mv	a0, t0
		li	t0, 128
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	work
	.p2align	2
	.type	work,@function
work:
.work_parameters:
		li	t0, 144
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
		mv	t1, a1
		sw	t1, -24(s0)
.work:
		lw	t0, -20(s0)
		sw	t0, -12(s0)
		lw	t0, -24(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -28(s0)
		lw	t0, -28(s0)
		addi	t1, t0, 8
		sw	t1, -32(s0)
		lw	t0, -32(s0)
		lw	t1, 0(t0)
		sw	t1, -36(s0)
		li	t0, 100
		sw	t0, -40(s0)
		lw	t0, -40(s0)
		lw	t1, -36(s0)
		slt	t2, t0, t1
		sw	t2, -44(s0)
		lw	t0, -44(s0)
		xori	t1, t0, 1
		sw	t1, -44(s0)
		lw	t0, -44(s0)
		bnez	t0, .work_9
		j	.work_25
.work_9:
		lw	t1, -12(s0)
		sw	t1, -48(s0)
		la	t0, my_.str.0
		sw	t0, -52(s0)
		lw	t0, -48(s0)
		mv	a0, t0
		lw	t0, -52(s0)
		mv	a1, t0
		call	string_add
		mv	t1, a0
		sw	t1, -56(s0)
		lw	t1, -16(s0)
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		addi	t1, t0, 0
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		lw	t1, 0(t0)
		sw	t1, -68(s0)
		lw	t0, -56(s0)
		mv	a0, t0
		lw	t0, -68(s0)
		mv	a1, t0
		call	string_add
		mv	t1, a0
		sw	t1, -72(s0)
		la	t0, my_.str.1
		sw	t0, -76(s0)
		lw	t0, -72(s0)
		mv	a0, t0
		lw	t0, -76(s0)
		mv	a1, t0
		call	string_add
		mv	t1, a0
		sw	t1, -80(s0)
		lw	t0, -80(s0)
		mv	a0, t0
		call	println
		j	.work_41
.work_25:
		lw	t1, -12(s0)
		sw	t1, -84(s0)
		la	t0, my_.str.2
		sw	t0, -88(s0)
		lw	t0, -84(s0)
		mv	a0, t0
		lw	t0, -88(s0)
		mv	a1, t0
		call	string_add
		mv	t1, a0
		sw	t1, -92(s0)
		lw	t1, -16(s0)
		sw	t1, -96(s0)
		lw	t0, -96(s0)
		addi	t1, t0, 0
		sw	t1, -100(s0)
		lw	t0, -100(s0)
		lw	t1, 0(t0)
		sw	t1, -104(s0)
		lw	t0, -92(s0)
		mv	a0, t0
		lw	t0, -104(s0)
		mv	a1, t0
		call	string_add
		mv	t1, a0
		sw	t1, -108(s0)
		la	t0, my_.str.3
		sw	t0, -112(s0)
		lw	t0, -108(s0)
		mv	a0, t0
		lw	t0, -112(s0)
		mv	a1, t0
		call	string_add
		mv	t1, a0
		sw	t1, -116(s0)
		lw	t0, -116(s0)
		mv	a0, t0
		call	println
		j	.work_41
.work_41:
		lw	t1, -16(s0)
		sw	t1, -120(s0)
		lw	t0, -120(s0)
		addi	t1, t0, 8
		sw	t1, -124(s0)
		lw	t1, -16(s0)
		sw	t1, -128(s0)
		lw	t0, -128(s0)
		addi	t1, t0, 8
		sw	t1, -132(s0)
		lw	t0, -132(s0)
		lw	t1, 0(t0)
		sw	t1, -136(s0)
		lw	t1, my_work_anger
		sw	t1, -140(s0)
		lw	t0, -136(s0)
		lw	t1, -140(s0)
		add	t2, t0, t1
		sw	t2, -144(s0)
		lw	t0, -144(s0)
		lw	t1, -124(s0)
		sw	t0, 0(t1)
		j	.workreturn_block
.workreturn_block:
		li	t0, 144
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.section	.sbss
	.type	my_init_anger,@object
	.globl	my_init_anger
	.p2align	2
my_init_anger:
	.word	100
	.size	my_init_anger, 8

	.section	.sbss
	.type	my_work_anger,@object
	.globl	my_work_anger
	.p2align	2
my_work_anger:
	.word	10
	.size	my_work_anger, 8

	.section	.rodata
	.type	my_.str.0,@object
my_.str.0:
	.asciz	",  "
	.size	my_.str.0, 3

	.section	.rodata
	.type	my_.str.1,@object
my_.str.1:
	.asciz	" enjoys this work. XD "
	.size	my_.str.1, 22

	.section	.rodata
	.type	my_.str.2,@object
my_.str.2:
	.asciz	",  "
	.size	my_.str.2, 3

	.section	.rodata
	.type	my_.str.3,@object
my_.str.3:
	.asciz	" wants to give up!!!!! "
	.size	my_.str.3, 23

	.section	.rodata
	.type	my_.str.4,@object
my_.str.4:
	.asciz	"the leading TA "
	.size	my_.str.4, 15

	.section	.rodata
	.type	my_.str.5,@object
my_.str.5:
	.asciz	"the striking TA "
	.size	my_.str.5, 16

	.section	.rodata
	.type	my_.str.6,@object
my_.str.6:
	.asciz	"MR "
	.size	my_.str.6, 3

	.section	.rodata
	.type	my_.str.7,@object
my_.str.7:
	.asciz	"Mars "
	.size	my_.str.7, 5

	.section	.rodata
	.type	my_.str.8,@object
my_.str.8:
	.asciz	"Mars "
	.size	my_.str.8, 5



