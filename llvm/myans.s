	.text

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_parameters:
		li	t0, 176
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.main:
		li	t0, 0
		sw	t0, -28(s0)
		lw	t0, -28(s0)
		sw	t0, -12(s0)
		call	init
		li	t0, 0
		sw	t0, -32(s0)
		lw	t0, -32(s0)
		sw	t0, -16(s0)
		j	.main_5
.main_5:
		lw	t1, -16(s0)
		sw	t1, -36(s0)
		lw	t1, my_n
		sw	t1, -40(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		slt	t2, t0, t1
		sw	t2, -44(s0)
		lw	t0, -44(s0)
		bnez	t0, .main_9
		j	.main_48
.main_9:
		lw	t1, -16(s0)
		sw	t1, -48(s0)
		lw	t0, -48(s0)
		mv	a0, t0
		call	spfa
		mv	t1, a0
		sw	t1, -52(s0)
		lw	t0, -52(s0)
		sw	t0, -24(s0)
		li	t0, 0
		sw	t0, -56(s0)
		lw	t0, -56(s0)
		sw	t0, -20(s0)
		j	.main_14
.main_14:
		lw	t1, -20(s0)
		sw	t1, -60(s0)
		lw	t1, my_n
		sw	t1, -64(s0)
		lw	t0, -60(s0)
		lw	t1, -64(s0)
		slt	t2, t0, t1
		sw	t2, -68(s0)
		lw	t0, -68(s0)
		bnez	t0, .main_18
		j	.main_42
.main_18:
		lw	t1, -24(s0)
		sw	t1, -72(s0)
		lw	t1, -20(s0)
		sw	t1, -76(s0)
		li	t0, 4
		sw	t0, -80(s0)
		lw	t0, -76(s0)
		lw	t1, -80(s0)
		mul	t2, t0, t1
		sw	t2, -84(s0)
		lw	t0, -72(s0)
		lw	t1, -84(s0)
		add	t2, t0, t1
		sw	t2, -88(s0)
		lw	t0, -88(s0)
		lw	t1, 0(t0)
		sw	t1, -92(s0)
		lw	t1, my_INF
		sw	t1, -96(s0)
		lw	t0, -92(s0)
		lw	t1, -96(s0)
		xor	t2, t0, t1
		sw	t2, -100(s0)
		lw	t0, -100(s0)
		sltiu	t1, t0, 1
		sw	t1, -100(s0)
		lw	t0, -100(s0)
		bnez	t0, .main_25
		j	.main_28
.main_25:
		la	t0, my_.str.1
		sw	t0, -104(s0)
		lw	t0, -104(s0)
		mv	a0, t0
		call	print
		j	.main_36
.main_28:
		lw	t1, -24(s0)
		sw	t1, -108(s0)
		lw	t1, -20(s0)
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
		lw	t0, -128(s0)
		mv	a0, t0
		call	toString
		mv	t1, a0
		sw	t1, -132(s0)
		lw	t0, -132(s0)
		mv	a0, t0
		call	print
		j	.main_36
.main_36:
		la	t0, my_.str.2
		sw	t0, -136(s0)
		lw	t0, -136(s0)
		mv	a0, t0
		call	print
		j	.main_39
.main_39:
		lw	t1, -20(s0)
		sw	t1, -140(s0)
		li	t0, 1
		sw	t0, -144(s0)
		lw	t0, -140(s0)
		lw	t1, -144(s0)
		add	t2, t0, t1
		sw	t2, -148(s0)
		lw	t0, -148(s0)
		sw	t0, -20(s0)
		j	.main_14
.main_42:
		la	t0, my_.str.3
		sw	t0, -152(s0)
		lw	t0, -152(s0)
		mv	a0, t0
		call	println
		j	.main_45
.main_45:
		lw	t1, -16(s0)
		sw	t1, -156(s0)
		li	t0, 1
		sw	t0, -160(s0)
		lw	t0, -156(s0)
		lw	t1, -160(s0)
		add	t2, t0, t1
		sw	t2, -164(s0)
		lw	t0, -164(s0)
		sw	t0, -16(s0)
		j	.main_5
.main_48:
		li	t0, 0
		sw	t0, -168(s0)
		lw	t0, -168(s0)
		sw	t0, -12(s0)
		j	.mainreturn_block
.mainreturn_block:
		lw	t1, -12(s0)
		sw	t1, -172(s0)
		lw	t0, -172(s0)
		mv	a0, t0
		li	t0, 176
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	Queue_int
	.p2align	2
	.type	Queue_int,@function
Queue_int:
.Queue_int_parameters:
		li	t0, 96
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -16(s0)
.Queue_int:
		lw	t0, -16(s0)
		sw	t0, -12(s0)
		lw	t1, -12(s0)
		sw	t1, -20(s0)
		lw	t0, -20(s0)
		addi	t1, t0, 8
		sw	t1, -24(s0)
		li	t0, 0
		sw	t0, -28(s0)
		lw	t0, -28(s0)
		lw	t1, -24(s0)
		sw	t0, 0(t1)
		lw	t1, -12(s0)
		sw	t1, -32(s0)
		lw	t0, -32(s0)
		addi	t1, t0, 12
		sw	t1, -36(s0)
		li	t0, 0
		sw	t0, -40(s0)
		lw	t0, -40(s0)
		lw	t1, -36(s0)
		sw	t0, 0(t1)
		lw	t1, -12(s0)
		sw	t1, -44(s0)
		lw	t0, -44(s0)
		addi	t1, t0, 0
		sw	t1, -48(s0)
		li	t0, 16
		sw	t0, -52(s0)
		li	t0, 4
		sw	t0, -56(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		mul	t2, t0, t1
		sw	t2, -60(s0)
		li	t0, 4
		sw	t0, -64(s0)
		lw	t0, -60(s0)
		lw	t1, -64(s0)
		add	t2, t0, t1
		sw	t2, -68(s0)
		lw	t0, -68(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -72(s0)
		li	t0, 16
		sw	t0, -76(s0)
		lw	t0, -76(s0)
		lw	t1, -72(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -80(s0)
		li	t0, 4
		sw	t0, -84(s0)
		lw	t0, -80(s0)
		lw	t1, -84(s0)
		mul	t2, t0, t1
		sw	t2, -88(s0)
		lw	t0, -72(s0)
		lw	t1, -88(s0)
		add	t2, t0, t1
		sw	t2, -92(s0)
		lw	t0, -92(s0)
		lw	t1, -48(s0)
		sw	t0, 0(t1)
		j	.Queue_intreturn_block
.Queue_intreturn_block:
		li	t0, 96
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classQueue_int_push
	.p2align	2
	.type	classQueue_int_push,@function
classQueue_int_push:
.classQueue_int_push_parameters:
		li	t0, 192
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
		mv	t1, a1
		sw	t1, -24(s0)
.classQueue_int_push:
		lw	t0, -20(s0)
		sw	t0, -12(s0)
		lw	t0, -24(s0)
		sw	t0, -16(s0)
		lw	t1, -12(s0)
		sw	t1, -28(s0)
		lw	t0, -28(s0)
		mv	a0, t0
		call	classQueue_int_size
		mv	t1, a0
		sw	t1, -32(s0)
		lw	t1, -12(s0)
		sw	t1, -36(s0)
		lw	t0, -36(s0)
		addi	t1, t0, 0
		sw	t1, -40(s0)
		lw	t0, -40(s0)
		lw	t1, 0(t0)
		sw	t1, -44(s0)
		li	t0, -1
		sw	t0, -48(s0)
		li	t0, 4
		sw	t0, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		mul	t2, t0, t1
		sb	t2, -56(s0)
		lw	t0, -44(s0)
		lb	t1, -56(s0)
		add	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -60(s0)
		lw	t1, 0(t0)
		sw	t1, -64(s0)
		li	t0, 1
		sw	t0, -68(s0)
		lw	t0, -64(s0)
		lw	t1, -68(s0)
		sub	t2, t0, t1
		sw	t2, -72(s0)
		lw	t0, -32(s0)
		lw	t1, -72(s0)
		xor	t2, t0, t1
		sw	t2, -76(s0)
		lw	t0, -76(s0)
		sltiu	t1, t0, 1
		sw	t1, -76(s0)
		lw	t0, -76(s0)
		bnez	t0, .classQueue_int_push_15
		j	.classQueue_int_push_18
.classQueue_int_push_15:
		lw	t1, -12(s0)
		sw	t1, -80(s0)
		lw	t0, -80(s0)
		mv	a0, t0
		call	classQueue_int_doubleStorage
		j	.classQueue_int_push_18
.classQueue_int_push_18:
		lw	t1, -12(s0)
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		addi	t1, t0, 0
		sw	t1, -88(s0)
		lw	t0, -88(s0)
		lw	t1, 0(t0)
		sw	t1, -92(s0)
		lw	t1, -12(s0)
		sw	t1, -96(s0)
		lw	t0, -96(s0)
		addi	t1, t0, 12
		sw	t1, -100(s0)
		lw	t0, -100(s0)
		lw	t1, 0(t0)
		sw	t1, -104(s0)
		li	t0, 4
		sw	t0, -108(s0)
		lw	t0, -104(s0)
		lw	t1, -108(s0)
		mul	t2, t0, t1
		sw	t2, -112(s0)
		lw	t0, -92(s0)
		lw	t1, -112(s0)
		add	t2, t0, t1
		sw	t2, -116(s0)
		lw	t1, -16(s0)
		sw	t1, -120(s0)
		lw	t0, -120(s0)
		lw	t1, -116(s0)
		sw	t0, 0(t1)
		lw	t1, -12(s0)
		sw	t1, -124(s0)
		lw	t0, -124(s0)
		addi	t1, t0, 12
		sw	t1, -128(s0)
		lw	t1, -12(s0)
		sw	t1, -132(s0)
		lw	t0, -132(s0)
		addi	t1, t0, 12
		sw	t1, -136(s0)
		lw	t0, -136(s0)
		lw	t1, 0(t0)
		sw	t1, -140(s0)
		li	t0, 1
		sw	t0, -144(s0)
		lw	t0, -140(s0)
		lw	t1, -144(s0)
		add	t2, t0, t1
		sw	t2, -148(s0)
		lw	t1, -12(s0)
		sw	t1, -152(s0)
		lw	t0, -152(s0)
		addi	t1, t0, 0
		sw	t1, -156(s0)
		lw	t0, -156(s0)
		lw	t1, 0(t0)
		sw	t1, -160(s0)
		li	t0, -1
		sw	t0, -164(s0)
		li	t0, 4
		sw	t0, -168(s0)
		lw	t0, -164(s0)
		lw	t1, -168(s0)
		mul	t2, t0, t1
		sb	t2, -172(s0)
		lw	t0, -160(s0)
		lb	t1, -172(s0)
		add	t2, t0, t1
		sw	t2, -176(s0)
		lw	t0, -176(s0)
		lw	t1, 0(t0)
		sw	t1, -180(s0)
		lw	t0, -148(s0)
		lw	t1, -180(s0)
		rem	t2, t0, t1
		sw	t2, -184(s0)
		lw	t0, -184(s0)
		lw	t1, -128(s0)
		sw	t0, 0(t1)
		j	.classQueue_int_pushreturn_block
.classQueue_int_pushreturn_block:
		li	t0, 192
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classQueue_int_top
	.p2align	2
	.type	classQueue_int_top,@function
classQueue_int_top:
.classQueue_int_top_parameters:
		li	t0, 64
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
.classQueue_int_top:
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -24(s0)
		lw	t0, -24(s0)
		addi	t1, t0, 0
		sw	t1, -28(s0)
		lw	t0, -28(s0)
		lw	t1, 0(t0)
		sw	t1, -32(s0)
		lw	t1, -16(s0)
		sw	t1, -36(s0)
		lw	t0, -36(s0)
		addi	t1, t0, 8
		sw	t1, -40(s0)
		lw	t0, -40(s0)
		lw	t1, 0(t0)
		sw	t1, -44(s0)
		li	t0, 4
		sw	t0, -48(s0)
		lw	t0, -44(s0)
		lw	t1, -48(s0)
		mul	t2, t0, t1
		sw	t2, -52(s0)
		lw	t0, -32(s0)
		lw	t1, -52(s0)
		add	t2, t0, t1
		sw	t2, -56(s0)
		lw	t0, -56(s0)
		lw	t1, 0(t0)
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		sw	t0, -12(s0)
		j	.classQueue_int_topreturn_block
.classQueue_int_topreturn_block:
		lw	t1, -12(s0)
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		mv	a0, t0
		li	t0, 64
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classQueue_int_pop
	.p2align	2
	.type	classQueue_int_pop,@function
classQueue_int_pop:
.classQueue_int_pop_parameters:
		li	t0, 128
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -24(s0)
.classQueue_int_pop:
		lw	t0, -24(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -28(s0)
		lw	t0, -28(s0)
		mv	a0, t0
		call	classQueue_int_size
		mv	t1, a0
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
		bnez	t0, .classQueue_int_pop_7
		j	.classQueue_int_pop_10
.classQueue_int_pop_7:
		la	t0, my_.str.0
		sw	t0, -44(s0)
		lw	t0, -44(s0)
		mv	a0, t0
		call	println
		j	.classQueue_int_pop_10
.classQueue_int_pop_10:
		lw	t1, -16(s0)
		sw	t1, -48(s0)
		lw	t0, -48(s0)
		mv	a0, t0
		call	classQueue_int_top
		mv	t1, a0
		sw	t1, -52(s0)
		lw	t0, -52(s0)
		sw	t0, -20(s0)
		lw	t1, -16(s0)
		sw	t1, -56(s0)
		lw	t0, -56(s0)
		addi	t1, t0, 8
		sw	t1, -60(s0)
		lw	t1, -16(s0)
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		addi	t1, t0, 8
		sw	t1, -68(s0)
		lw	t0, -68(s0)
		lw	t1, 0(t0)
		sw	t1, -72(s0)
		li	t0, 1
		sw	t0, -76(s0)
		lw	t0, -72(s0)
		lw	t1, -76(s0)
		add	t2, t0, t1
		sw	t2, -80(s0)
		lw	t1, -16(s0)
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		addi	t1, t0, 0
		sw	t1, -88(s0)
		lw	t0, -88(s0)
		lw	t1, 0(t0)
		sw	t1, -92(s0)
		li	t0, -1
		sw	t0, -96(s0)
		li	t0, 4
		sw	t0, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		mul	t2, t0, t1
		sb	t2, -104(s0)
		lw	t0, -92(s0)
		lb	t1, -104(s0)
		add	t2, t0, t1
		sw	t2, -108(s0)
		lw	t0, -108(s0)
		lw	t1, 0(t0)
		sw	t1, -112(s0)
		lw	t0, -80(s0)
		lw	t1, -112(s0)
		rem	t2, t0, t1
		sw	t2, -116(s0)
		lw	t0, -116(s0)
		lw	t1, -60(s0)
		sw	t0, 0(t1)
		lw	t1, -20(s0)
		sw	t1, -120(s0)
		lw	t0, -120(s0)
		sw	t0, -12(s0)
		j	.classQueue_int_popreturn_block
.classQueue_int_popreturn_block:
		lw	t1, -12(s0)
		sw	t1, -124(s0)
		lw	t0, -124(s0)
		mv	a0, t0
		li	t0, 128
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classQueue_int_size
	.p2align	2
	.type	classQueue_int_size,@function
classQueue_int_size:
.classQueue_int_size_parameters:
		li	t0, 128
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
.classQueue_int_size:
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -24(s0)
		lw	t0, -24(s0)
		addi	t1, t0, 12
		sw	t1, -28(s0)
		lw	t0, -28(s0)
		lw	t1, 0(t0)
		sw	t1, -32(s0)
		lw	t1, -16(s0)
		sw	t1, -36(s0)
		lw	t0, -36(s0)
		addi	t1, t0, 0
		sw	t1, -40(s0)
		lw	t0, -40(s0)
		lw	t1, 0(t0)
		sw	t1, -44(s0)
		li	t0, -1
		sw	t0, -48(s0)
		li	t0, 4
		sw	t0, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		mul	t2, t0, t1
		sb	t2, -56(s0)
		lw	t0, -44(s0)
		lb	t1, -56(s0)
		add	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -60(s0)
		lw	t1, 0(t0)
		sw	t1, -64(s0)
		lw	t0, -32(s0)
		lw	t1, -64(s0)
		add	t2, t0, t1
		sw	t2, -68(s0)
		lw	t1, -16(s0)
		sw	t1, -72(s0)
		lw	t0, -72(s0)
		addi	t1, t0, 8
		sw	t1, -76(s0)
		lw	t0, -76(s0)
		lw	t1, 0(t0)
		sw	t1, -80(s0)
		lw	t0, -68(s0)
		lw	t1, -80(s0)
		sub	t2, t0, t1
		sw	t2, -84(s0)
		lw	t1, -16(s0)
		sw	t1, -88(s0)
		lw	t0, -88(s0)
		addi	t1, t0, 0
		sw	t1, -92(s0)
		lw	t0, -92(s0)
		lw	t1, 0(t0)
		sw	t1, -96(s0)
		li	t0, -1
		sw	t0, -100(s0)
		li	t0, 4
		sw	t0, -104(s0)
		lw	t0, -100(s0)
		lw	t1, -104(s0)
		mul	t2, t0, t1
		sb	t2, -108(s0)
		lw	t0, -96(s0)
		lb	t1, -108(s0)
		add	t2, t0, t1
		sw	t2, -112(s0)
		lw	t0, -112(s0)
		lw	t1, 0(t0)
		sw	t1, -116(s0)
		lw	t0, -84(s0)
		lw	t1, -116(s0)
		rem	t2, t0, t1
		sw	t2, -120(s0)
		lw	t0, -120(s0)
		sw	t0, -12(s0)
		j	.classQueue_int_sizereturn_block
.classQueue_int_sizereturn_block:
		lw	t1, -12(s0)
		sw	t1, -124(s0)
		lw	t0, -124(s0)
		mv	a0, t0
		li	t0, 128
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classQueue_int_doubleStorage
	.p2align	2
	.type	classQueue_int_doubleStorage,@function
classQueue_int_doubleStorage:
.classQueue_int_doubleStorage_parameters:
		li	t0, 320
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -44(s0)
.classQueue_int_doubleStorage:
		lw	t0, -44(s0)
		sw	t0, -12(s0)
		lw	t1, -12(s0)
		sw	t1, -48(s0)
		lw	t0, -48(s0)
		addi	t1, t0, 0
		sw	t1, -52(s0)
		lw	t0, -52(s0)
		lw	t1, 0(t0)
		sw	t1, -56(s0)
		lw	t0, -56(s0)
		sw	t0, -16(s0)
		lw	t1, -12(s0)
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		addi	t1, t0, 8
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		lw	t1, 0(t0)
		sw	t1, -68(s0)
		lw	t0, -68(s0)
		sw	t0, -20(s0)
		lw	t1, -12(s0)
		sw	t1, -72(s0)
		lw	t0, -72(s0)
		addi	t1, t0, 12
		sw	t1, -76(s0)
		lw	t0, -76(s0)
		lw	t1, 0(t0)
		sw	t1, -80(s0)
		lw	t0, -80(s0)
		sw	t0, -24(s0)
		lw	t1, -12(s0)
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		addi	t1, t0, 0
		sw	t1, -88(s0)
		lw	t1, -16(s0)
		sw	t1, -92(s0)
		li	t0, -1
		sw	t0, -96(s0)
		li	t0, 4
		sw	t0, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		mul	t2, t0, t1
		sb	t2, -104(s0)
		lw	t0, -92(s0)
		lb	t1, -104(s0)
		add	t2, t0, t1
		sw	t2, -108(s0)
		lw	t0, -108(s0)
		lw	t1, 0(t0)
		sw	t1, -112(s0)
		li	t0, 2
		sw	t0, -116(s0)
		lw	t0, -112(s0)
		lw	t1, -116(s0)
		mul	t2, t0, t1
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
		lw	t1, -88(s0)
		sw	t0, 0(t1)
		lw	t1, -12(s0)
		sw	t1, -160(s0)
		lw	t0, -160(s0)
		addi	t1, t0, 8
		sw	t1, -164(s0)
		li	t0, 0
		sw	t0, -168(s0)
		lw	t0, -168(s0)
		lw	t1, -164(s0)
		sw	t0, 0(t1)
		lw	t1, -12(s0)
		sw	t1, -172(s0)
		lw	t0, -172(s0)
		addi	t1, t0, 12
		sw	t1, -176(s0)
		li	t0, 0
		sw	t0, -180(s0)
		lw	t0, -180(s0)
		lw	t1, -176(s0)
		sw	t0, 0(t1)
		lw	t1, -20(s0)
		sw	t1, -184(s0)
		lw	t0, -184(s0)
		sw	t0, -28(s0)
		j	.classQueue_int_doubleStorage_37
.classQueue_int_doubleStorage_37:
		lw	t1, -28(s0)
		sw	t1, -188(s0)
		lw	t1, -24(s0)
		sw	t1, -192(s0)
		lw	t0, -188(s0)
		lw	t1, -192(s0)
		xor	t2, t0, t1
		sw	t2, -196(s0)
		lw	t0, -196(s0)
		sltiu	t1, t0, 1
		sw	t1, -196(s0)
		lw	t0, -196(s0)
		xori	t1, t0, 1
		sw	t1, -196(s0)
		lw	t0, -196(s0)
		bnez	t0, .classQueue_int_doubleStorage_41
		j	.classQueue_int_doubleStorage_64
.classQueue_int_doubleStorage_41:
		lw	t1, -12(s0)
		sw	t1, -200(s0)
		lw	t0, -200(s0)
		addi	t1, t0, 0
		sw	t1, -204(s0)
		lw	t0, -204(s0)
		lw	t1, 0(t0)
		sw	t1, -208(s0)
		lw	t1, -12(s0)
		sw	t1, -212(s0)
		lw	t0, -212(s0)
		addi	t1, t0, 12
		sw	t1, -216(s0)
		lw	t0, -216(s0)
		lw	t1, 0(t0)
		sw	t1, -220(s0)
		li	t0, 4
		sw	t0, -224(s0)
		lw	t0, -220(s0)
		lw	t1, -224(s0)
		mul	t2, t0, t1
		sw	t2, -228(s0)
		lw	t0, -208(s0)
		lw	t1, -228(s0)
		add	t2, t0, t1
		sw	t2, -232(s0)
		lw	t1, -16(s0)
		sw	t1, -236(s0)
		lw	t1, -28(s0)
		sw	t1, -240(s0)
		li	t0, 4
		sw	t0, -244(s0)
		lw	t0, -240(s0)
		lw	t1, -244(s0)
		mul	t2, t0, t1
		sw	t2, -248(s0)
		lw	t0, -236(s0)
		lw	t1, -248(s0)
		add	t2, t0, t1
		sw	t2, -252(s0)
		lw	t0, -252(s0)
		lw	t1, 0(t0)
		sw	t1, -256(s0)
		lw	t0, -256(s0)
		lw	t1, -232(s0)
		sw	t0, 0(t1)
		lw	t1, -12(s0)
		sw	t1, -260(s0)
		lw	t0, -260(s0)
		addi	t1, t0, 12
		sw	t1, -264(s0)
		lw	t0, -264(s0)
		lw	t1, 0(t0)
		sw	t1, -268(s0)
		li	t0, 1
		sw	t0, -272(s0)
		lw	t0, -268(s0)
		lw	t1, -272(s0)
		add	t2, t0, t1
		sw	t2, -276(s0)
		lw	t0, -276(s0)
		lw	t1, -264(s0)
		sw	t0, 0(t1)
		lw	t1, -28(s0)
		sw	t1, -280(s0)
		li	t0, 1
		sw	t0, -284(s0)
		lw	t0, -280(s0)
		lw	t1, -284(s0)
		add	t2, t0, t1
		sw	t2, -288(s0)
		lw	t1, -16(s0)
		sw	t1, -292(s0)
		li	t0, -1
		sw	t0, -296(s0)
		li	t0, 4
		sw	t0, -300(s0)
		lw	t0, -296(s0)
		lw	t1, -300(s0)
		mul	t2, t0, t1
		sb	t2, -304(s0)
		lw	t0, -292(s0)
		lb	t1, -304(s0)
		add	t2, t0, t1
		sw	t2, -308(s0)
		lw	t0, -308(s0)
		lw	t1, 0(t0)
		sw	t1, -312(s0)
		lw	t0, -288(s0)
		lw	t1, -312(s0)
		rem	t2, t0, t1
		sw	t2, -316(s0)
		lw	t0, -316(s0)
		sw	t0, -28(s0)
		j	.classQueue_int_doubleStorage_37
.classQueue_int_doubleStorage_64:
		j	.classQueue_int_doubleStoragereturn_block
.classQueue_int_doubleStoragereturn_block:
		li	t0, 320
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

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

	.globl	EdgeList
	.p2align	2
	.type	EdgeList,@function
EdgeList:
.EdgeList_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -16(s0)
.EdgeList:
		lw	t0, -16(s0)
		sw	t0, -12(s0)
		j	.EdgeListreturn_block
.EdgeListreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classEdgeList_init
	.p2align	2
	.type	classEdgeList_init,@function
classEdgeList_init:
.classEdgeList_init_parameters:
		li	t0, 336
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -28(s0)
		mv	t1, a1
		sw	t1, -32(s0)
		mv	t1, a2
		sw	t1, -36(s0)
.classEdgeList_init:
		lw	t0, -28(s0)
		sw	t0, -12(s0)
		lw	t0, -32(s0)
		sw	t0, -16(s0)
		lw	t0, -36(s0)
		sw	t0, -20(s0)
		lw	t1, -12(s0)
		sw	t1, -40(s0)
		lw	t0, -40(s0)
		addi	t1, t0, 0
		sw	t1, -44(s0)
		lw	t1, -20(s0)
		sw	t1, -48(s0)
		li	t0, 12
		sw	t0, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		mul	t2, t0, t1
		sw	t2, -56(s0)
		li	t0, 4
		sw	t0, -60(s0)
		lw	t0, -56(s0)
		lw	t1, -60(s0)
		add	t2, t0, t1
		sw	t2, -64(s0)
		lw	t0, -64(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -68(s0)
		lw	t0, -48(s0)
		lw	t1, -68(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -72(s0)
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
		lw	t0, -84(s0)
		lw	t1, -44(s0)
		sw	t0, 0(t1)
		lw	t1, -12(s0)
		sw	t1, -88(s0)
		lw	t0, -88(s0)
		addi	t1, t0, 8
		sw	t1, -92(s0)
		lw	t1, -20(s0)
		sw	t1, -96(s0)
		li	t0, 4
		sw	t0, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		mul	t2, t0, t1
		sw	t2, -104(s0)
		li	t0, 4
		sw	t0, -108(s0)
		lw	t0, -104(s0)
		lw	t1, -108(s0)
		add	t2, t0, t1
		sw	t2, -112(s0)
		lw	t0, -112(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -116(s0)
		lw	t0, -96(s0)
		lw	t1, -116(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -120(s0)
		li	t0, 4
		sw	t0, -124(s0)
		lw	t0, -120(s0)
		lw	t1, -124(s0)
		mul	t2, t0, t1
		sw	t2, -128(s0)
		lw	t0, -116(s0)
		lw	t1, -128(s0)
		add	t2, t0, t1
		sw	t2, -132(s0)
		lw	t0, -132(s0)
		lw	t1, -92(s0)
		sw	t0, 0(t1)
		lw	t1, -12(s0)
		sw	t1, -136(s0)
		lw	t0, -136(s0)
		addi	t1, t0, 16
		sw	t1, -140(s0)
		lw	t1, -16(s0)
		sw	t1, -144(s0)
		li	t0, 4
		sw	t0, -148(s0)
		lw	t0, -144(s0)
		lw	t1, -148(s0)
		mul	t2, t0, t1
		sw	t2, -152(s0)
		li	t0, 4
		sw	t0, -156(s0)
		lw	t0, -152(s0)
		lw	t1, -156(s0)
		add	t2, t0, t1
		sw	t2, -160(s0)
		lw	t0, -160(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -164(s0)
		lw	t0, -144(s0)
		lw	t1, -164(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -168(s0)
		li	t0, 4
		sw	t0, -172(s0)
		lw	t0, -168(s0)
		lw	t1, -172(s0)
		mul	t2, t0, t1
		sw	t2, -176(s0)
		lw	t0, -164(s0)
		lw	t1, -176(s0)
		add	t2, t0, t1
		sw	t2, -180(s0)
		lw	t0, -180(s0)
		lw	t1, -140(s0)
		sw	t0, 0(t1)
		li	t0, 0
		sw	t0, -184(s0)
		lw	t0, -184(s0)
		sw	t0, -24(s0)
		j	.classEdgeList_init_41
.classEdgeList_init_41:
		lw	t1, -24(s0)
		sw	t1, -188(s0)
		lw	t1, -20(s0)
		sw	t1, -192(s0)
		lw	t0, -188(s0)
		lw	t1, -192(s0)
		slt	t2, t0, t1
		sw	t2, -196(s0)
		lw	t0, -196(s0)
		bnez	t0, .classEdgeList_init_45
		j	.classEdgeList_init_55
.classEdgeList_init_45:
		lw	t1, -12(s0)
		sw	t1, -200(s0)
		lw	t0, -200(s0)
		addi	t1, t0, 8
		sw	t1, -204(s0)
		lw	t0, -204(s0)
		lw	t1, 0(t0)
		sw	t1, -208(s0)
		lw	t1, -24(s0)
		sw	t1, -212(s0)
		li	t0, 4
		sw	t0, -216(s0)
		lw	t0, -212(s0)
		lw	t1, -216(s0)
		mul	t2, t0, t1
		sw	t2, -220(s0)
		lw	t0, -208(s0)
		lw	t1, -220(s0)
		add	t2, t0, t1
		sw	t2, -224(s0)
		li	t0, 0
		sw	t0, -228(s0)
		li	t0, 1
		sw	t0, -232(s0)
		lw	t0, -228(s0)
		lw	t1, -232(s0)
		sub	t2, t0, t1
		sw	t2, -236(s0)
		lw	t0, -236(s0)
		lw	t1, -224(s0)
		sw	t0, 0(t1)
		j	.classEdgeList_init_52
.classEdgeList_init_52:
		lw	t1, -24(s0)
		sw	t1, -240(s0)
		li	t0, 1
		sw	t0, -244(s0)
		lw	t0, -240(s0)
		lw	t1, -244(s0)
		add	t2, t0, t1
		sw	t2, -248(s0)
		lw	t0, -248(s0)
		sw	t0, -24(s0)
		j	.classEdgeList_init_41
.classEdgeList_init_55:
		li	t0, 0
		sw	t0, -252(s0)
		lw	t0, -252(s0)
		sw	t0, -24(s0)
		j	.classEdgeList_init_56
.classEdgeList_init_56:
		lw	t1, -24(s0)
		sw	t1, -256(s0)
		lw	t1, -16(s0)
		sw	t1, -260(s0)
		lw	t0, -256(s0)
		lw	t1, -260(s0)
		slt	t2, t0, t1
		sw	t2, -264(s0)
		lw	t0, -264(s0)
		bnez	t0, .classEdgeList_init_60
		j	.classEdgeList_init_70
.classEdgeList_init_60:
		lw	t1, -12(s0)
		sw	t1, -268(s0)
		lw	t0, -268(s0)
		addi	t1, t0, 16
		sw	t1, -272(s0)
		lw	t0, -272(s0)
		lw	t1, 0(t0)
		sw	t1, -276(s0)
		lw	t1, -24(s0)
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
		li	t0, 0
		sw	t0, -296(s0)
		li	t0, 1
		sw	t0, -300(s0)
		lw	t0, -296(s0)
		lw	t1, -300(s0)
		sub	t2, t0, t1
		sw	t2, -304(s0)
		lw	t0, -304(s0)
		lw	t1, -292(s0)
		sw	t0, 0(t1)
		j	.classEdgeList_init_67
.classEdgeList_init_67:
		lw	t1, -24(s0)
		sw	t1, -308(s0)
		li	t0, 1
		sw	t0, -312(s0)
		lw	t0, -308(s0)
		lw	t1, -312(s0)
		add	t2, t0, t1
		sw	t2, -316(s0)
		lw	t0, -316(s0)
		sw	t0, -24(s0)
		j	.classEdgeList_init_56
.classEdgeList_init_70:
		lw	t1, -12(s0)
		sw	t1, -320(s0)
		lw	t0, -320(s0)
		addi	t1, t0, 24
		sw	t1, -324(s0)
		li	t0, 0
		sw	t0, -328(s0)
		lw	t0, -328(s0)
		lw	t1, -324(s0)
		sw	t0, 0(t1)
		j	.classEdgeList_initreturn_block
.classEdgeList_initreturn_block:
		li	t0, 336
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classEdgeList_addEdge
	.p2align	2
	.type	classEdgeList_addEdge,@function
classEdgeList_addEdge:
.classEdgeList_addEdge_parameters:
		li	t0, 256
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
		mv	t1, a3
		sw	t1, -56(s0)
.classEdgeList_addEdge:
		lw	t0, -44(s0)
		sw	t0, -12(s0)
		lw	t0, -48(s0)
		sw	t0, -16(s0)
		lw	t0, -52(s0)
		sw	t0, -20(s0)
		lw	t0, -56(s0)
		sw	t0, -24(s0)
		li	t0, 12
		sw	t0, -60(s0)
		lw	t0, -60(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		mv	a0, t0
		call	Edge
		lw	t0, -64(s0)
		sw	t0, -28(s0)
		lw	t1, -16(s0)
		sw	t1, -68(s0)
		lw	t0, -68(s0)
		sw	t0, -32(s0)
		lw	t1, -20(s0)
		sw	t1, -72(s0)
		lw	t0, -72(s0)
		sw	t0, -36(s0)
		lw	t1, -24(s0)
		sw	t1, -76(s0)
		lw	t0, -76(s0)
		sw	t0, -40(s0)
		lw	t1, -12(s0)
		sw	t1, -80(s0)
		lw	t0, -80(s0)
		addi	t1, t0, 0
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		lw	t1, 0(t0)
		sw	t1, -88(s0)
		lw	t1, -12(s0)
		sw	t1, -92(s0)
		lw	t0, -92(s0)
		addi	t1, t0, 24
		sw	t1, -96(s0)
		lw	t0, -96(s0)
		lw	t1, 0(t0)
		sw	t1, -100(s0)
		li	t0, 12
		sw	t0, -104(s0)
		lw	t0, -100(s0)
		lw	t1, -104(s0)
		mul	t2, t0, t1
		sw	t2, -108(s0)
		lw	t0, -88(s0)
		lw	t1, -108(s0)
		add	t2, t0, t1
		sw	t2, -112(s0)
		lw	t1, -28(s0)
		sw	t1, -116(s0)
		lw	t0, -116(s0)
		lw	t1, -112(s0)
		sw	t0, 0(t1)
		lw	t1, -12(s0)
		sw	t1, -120(s0)
		lw	t0, -120(s0)
		addi	t1, t0, 8
		sw	t1, -124(s0)
		lw	t0, -124(s0)
		lw	t1, 0(t0)
		sw	t1, -128(s0)
		lw	t1, -12(s0)
		sw	t1, -132(s0)
		lw	t0, -132(s0)
		addi	t1, t0, 24
		sw	t1, -136(s0)
		lw	t0, -136(s0)
		lw	t1, 0(t0)
		sw	t1, -140(s0)
		li	t0, 4
		sw	t0, -144(s0)
		lw	t0, -140(s0)
		lw	t1, -144(s0)
		mul	t2, t0, t1
		sw	t2, -148(s0)
		lw	t0, -128(s0)
		lw	t1, -148(s0)
		add	t2, t0, t1
		sw	t2, -152(s0)
		lw	t1, -12(s0)
		sw	t1, -156(s0)
		lw	t0, -156(s0)
		addi	t1, t0, 16
		sw	t1, -160(s0)
		lw	t0, -160(s0)
		lw	t1, 0(t0)
		sw	t1, -164(s0)
		lw	t1, -16(s0)
		sw	t1, -168(s0)
		li	t0, 4
		sw	t0, -172(s0)
		lw	t0, -168(s0)
		lw	t1, -172(s0)
		mul	t2, t0, t1
		sw	t2, -176(s0)
		lw	t0, -164(s0)
		lw	t1, -176(s0)
		add	t2, t0, t1
		sw	t2, -180(s0)
		lw	t0, -180(s0)
		lw	t1, 0(t0)
		sw	t1, -184(s0)
		lw	t0, -184(s0)
		lw	t1, -152(s0)
		sw	t0, 0(t1)
		lw	t1, -12(s0)
		sw	t1, -188(s0)
		lw	t0, -188(s0)
		addi	t1, t0, 16
		sw	t1, -192(s0)
		lw	t0, -192(s0)
		lw	t1, 0(t0)
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
		lw	t1, -12(s0)
		sw	t1, -216(s0)
		lw	t0, -216(s0)
		addi	t1, t0, 24
		sw	t1, -220(s0)
		lw	t0, -220(s0)
		lw	t1, 0(t0)
		sw	t1, -224(s0)
		lw	t0, -224(s0)
		lw	t1, -212(s0)
		sw	t0, 0(t1)
		lw	t1, -12(s0)
		sw	t1, -228(s0)
		lw	t0, -228(s0)
		addi	t1, t0, 24
		sw	t1, -232(s0)
		lw	t0, -232(s0)
		lw	t1, 0(t0)
		sw	t1, -236(s0)
		li	t0, 1
		sw	t0, -240(s0)
		lw	t0, -236(s0)
		lw	t1, -240(s0)
		add	t2, t0, t1
		sw	t2, -244(s0)
		lw	t0, -244(s0)
		lw	t1, -232(s0)
		sw	t0, 0(t1)
		j	.classEdgeList_addEdgereturn_block
.classEdgeList_addEdgereturn_block:
		li	t0, 256
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classEdgeList_nVertices
	.p2align	2
	.type	classEdgeList_nVertices,@function
classEdgeList_nVertices:
.classEdgeList_nVertices_parameters:
		li	t0, 64
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
.classEdgeList_nVertices:
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -24(s0)
		lw	t0, -24(s0)
		addi	t1, t0, 16
		sw	t1, -28(s0)
		lw	t0, -28(s0)
		lw	t1, 0(t0)
		sw	t1, -32(s0)
		li	t0, -1
		sw	t0, -36(s0)
		li	t0, 4
		sw	t0, -40(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		mul	t2, t0, t1
		sb	t2, -44(s0)
		lw	t0, -32(s0)
		lb	t1, -44(s0)
		add	t2, t0, t1
		sw	t2, -48(s0)
		lw	t0, -48(s0)
		lw	t1, 0(t0)
		sw	t1, -52(s0)
		lw	t0, -52(s0)
		sw	t0, -12(s0)
		j	.classEdgeList_nVerticesreturn_block
.classEdgeList_nVerticesreturn_block:
		lw	t1, -12(s0)
		sw	t1, -56(s0)
		lw	t0, -56(s0)
		mv	a0, t0
		li	t0, 64
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classEdgeList_nEdges
	.p2align	2
	.type	classEdgeList_nEdges,@function
classEdgeList_nEdges:
.classEdgeList_nEdges_parameters:
		li	t0, 64
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
.classEdgeList_nEdges:
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -24(s0)
		lw	t0, -24(s0)
		addi	t1, t0, 0
		sw	t1, -28(s0)
		lw	t0, -28(s0)
		lw	t1, 0(t0)
		sw	t1, -32(s0)
		li	t0, -1
		sw	t0, -36(s0)
		li	t0, 4
		sw	t0, -40(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		mul	t2, t0, t1
		sb	t2, -44(s0)
		lw	t0, -32(s0)
		lb	t1, -44(s0)
		add	t2, t0, t1
		sw	t2, -48(s0)
		lw	t0, -48(s0)
		lw	t1, 0(t0)
		sw	t1, -52(s0)
		lw	t0, -52(s0)
		sw	t0, -12(s0)
		j	.classEdgeList_nEdgesreturn_block
.classEdgeList_nEdgesreturn_block:
		lw	t1, -12(s0)
		sw	t1, -56(s0)
		lw	t0, -56(s0)
		mv	a0, t0
		li	t0, 64
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
		li	t0, 128
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.init:
		call	getInt
		mv	t1, a0
		sw	t1, -28(s0)
		lw	t0, -28(s0)
		lw	t1, -32(s0)
		sw	t0, my_n, t1
		call	getInt
		mv	t1, a0
		sw	t1, -36(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		sw	t0, my_m, t1
		li	t0, 28
		sw	t0, -44(s0)
		lw	t0, -44(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -48(s0)
		lw	t0, -48(s0)
		mv	a0, t0
		call	EdgeList
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		sw	t0, my_g, t1
		lw	t1, my_g
		sw	t1, -56(s0)
		lw	t1, my_n
		sw	t1, -60(s0)
		lw	t1, my_m
		sw	t1, -64(s0)
		lw	t0, -56(s0)
		mv	a0, t0
		lw	t0, -60(s0)
		mv	a1, t0
		lw	t0, -64(s0)
		mv	a2, t0
		call	classEdgeList_init
		li	t0, 0
		sw	t0, -68(s0)
		lw	t0, -68(s0)
		sw	t0, -12(s0)
		j	.init_11
.init_11:
		lw	t1, -12(s0)
		sw	t1, -72(s0)
		lw	t1, my_m
		sw	t1, -76(s0)
		lw	t0, -72(s0)
		lw	t1, -76(s0)
		slt	t2, t0, t1
		sw	t2, -80(s0)
		lw	t0, -80(s0)
		bnez	t0, .init_15
		j	.init_30
.init_15:
		call	getInt
		mv	t1, a0
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		sw	t0, -16(s0)
		call	getInt
		mv	t1, a0
		sw	t1, -88(s0)
		lw	t0, -88(s0)
		sw	t0, -20(s0)
		call	getInt
		mv	t1, a0
		sw	t1, -92(s0)
		lw	t0, -92(s0)
		sw	t0, -24(s0)
		lw	t1, my_g
		sw	t1, -96(s0)
		lw	t1, -16(s0)
		sw	t1, -100(s0)
		lw	t1, -20(s0)
		sw	t1, -104(s0)
		lw	t1, -24(s0)
		sw	t1, -108(s0)
		lw	t0, -96(s0)
		mv	a0, t0
		lw	t0, -100(s0)
		mv	a1, t0
		lw	t0, -104(s0)
		mv	a2, t0
		lw	t0, -108(s0)
		mv	a3, t0
		call	classEdgeList_addEdge
		j	.init_27
.init_27:
		lw	t1, -12(s0)
		sw	t1, -112(s0)
		li	t0, 1
		sw	t0, -116(s0)
		lw	t0, -112(s0)
		lw	t1, -116(s0)
		add	t2, t0, t1
		sw	t2, -120(s0)
		lw	t0, -120(s0)
		sw	t0, -12(s0)
		j	.init_11
.init_30:
		j	.initreturn_block
.initreturn_block:
		li	t0, 128
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	spfa
	.p2align	2
	.type	spfa,@function
spfa:
.spfa_parameters:
		li	t0, 464
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -48(s0)
.spfa:
		lw	t0, -48(s0)
		sw	t0, -16(s0)
		lw	t1, my_n
		sw	t1, -52(s0)
		li	t0, 4
		sw	t0, -56(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		mul	t2, t0, t1
		sw	t2, -60(s0)
		li	t0, 4
		sw	t0, -64(s0)
		lw	t0, -60(s0)
		lw	t1, -64(s0)
		add	t2, t0, t1
		sw	t2, -68(s0)
		lw	t0, -68(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -72(s0)
		lw	t0, -52(s0)
		lw	t1, -72(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -76(s0)
		li	t0, 4
		sw	t0, -80(s0)
		lw	t0, -76(s0)
		lw	t1, -80(s0)
		mul	t2, t0, t1
		sw	t2, -84(s0)
		lw	t0, -72(s0)
		lw	t1, -84(s0)
		add	t2, t0, t1
		sw	t2, -88(s0)
		lw	t0, -88(s0)
		sw	t0, -20(s0)
		li	t0, 0
		sw	t0, -92(s0)
		lw	t0, -92(s0)
		sw	t0, -24(s0)
		j	.spfa_15
.spfa_15:
		lw	t1, -24(s0)
		sw	t1, -96(s0)
		lw	t1, my_n
		sw	t1, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		slt	t2, t0, t1
		sw	t2, -104(s0)
		lw	t0, -104(s0)
		bnez	t0, .spfa_19
		j	.spfa_27
.spfa_19:
		lw	t1, -20(s0)
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
		lw	t1, my_INF
		sw	t1, -128(s0)
		lw	t0, -128(s0)
		lw	t1, -124(s0)
		sw	t0, 0(t1)
		j	.spfa_24
.spfa_24:
		lw	t1, -24(s0)
		sw	t1, -132(s0)
		li	t0, 1
		sw	t0, -136(s0)
		lw	t0, -132(s0)
		lw	t1, -136(s0)
		add	t2, t0, t1
		sw	t2, -140(s0)
		lw	t0, -140(s0)
		sw	t0, -24(s0)
		j	.spfa_15
.spfa_27:
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
		li	t0, 0
		sw	t0, -164(s0)
		lw	t0, -164(s0)
		lw	t1, -160(s0)
		sw	t0, 0(t1)
		li	t0, 16
		sw	t0, -168(s0)
		lw	t0, -168(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -172(s0)
		lw	t0, -172(s0)
		mv	a0, t0
		call	Queue_int
		lw	t0, -172(s0)
		sw	t0, -28(s0)
		lw	t1, -28(s0)
		sw	t1, -176(s0)
		lw	t1, -16(s0)
		sw	t1, -180(s0)
		lw	t0, -176(s0)
		mv	a0, t0
		lw	t0, -180(s0)
		mv	a1, t0
		call	classQueue_int_push
		j	.spfa_38
.spfa_38:
		lw	t1, -28(s0)
		sw	t1, -184(s0)
		lw	t0, -184(s0)
		mv	a0, t0
		call	classQueue_int_size
		mv	t1, a0
		sw	t1, -188(s0)
		li	t0, 0
		sw	t0, -192(s0)
		lw	t0, -188(s0)
		lw	t1, -192(s0)
		xor	t2, t0, t1
		sw	t2, -196(s0)
		lw	t0, -196(s0)
		sltiu	t1, t0, 1
		sw	t1, -196(s0)
		lw	t0, -196(s0)
		xori	t1, t0, 1
		sw	t1, -196(s0)
		lw	t0, -196(s0)
		bnez	t0, .spfa_42
		j	.spfa_101
.spfa_42:
		lw	t1, -28(s0)
		sw	t1, -200(s0)
		lw	t0, -200(s0)
		mv	a0, t0
		call	classQueue_int_pop
		mv	t1, a0
		sw	t1, -204(s0)
		lw	t0, -204(s0)
		sw	t0, -32(s0)
		lw	t1, my_g
		sw	t1, -208(s0)
		lw	t0, -208(s0)
		addi	t1, t0, 16
		sw	t1, -212(s0)
		lw	t0, -212(s0)
		lw	t1, 0(t0)
		sw	t1, -216(s0)
		lw	t1, -32(s0)
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
		lw	t0, -236(s0)
		sw	t0, -36(s0)
		j	.spfa_53
.spfa_53:
		lw	t1, -36(s0)
		sw	t1, -240(s0)
		li	t0, 0
		sw	t0, -244(s0)
		li	t0, 1
		sw	t0, -248(s0)
		lw	t0, -244(s0)
		lw	t1, -248(s0)
		sub	t2, t0, t1
		sw	t2, -252(s0)
		lw	t0, -240(s0)
		lw	t1, -252(s0)
		xor	t2, t0, t1
		sw	t2, -256(s0)
		lw	t0, -256(s0)
		sltiu	t1, t0, 1
		sw	t1, -256(s0)
		lw	t0, -256(s0)
		xori	t1, t0, 1
		sw	t1, -256(s0)
		lw	t0, -256(s0)
		bnez	t0, .spfa_57
		j	.spfa_100
.spfa_57:
		lw	t1, my_g
		sw	t1, -260(s0)
		lw	t0, -260(s0)
		addi	t1, t0, 0
		sw	t1, -264(s0)
		lw	t0, -264(s0)
		lw	t1, 0(t0)
		sw	t1, -268(s0)
		lw	t1, -36(s0)
		sw	t1, -272(s0)
		li	t0, 12
		sw	t0, -276(s0)
		lw	t0, -272(s0)
		lw	t1, -276(s0)
		mul	t2, t0, t1
		sw	t2, -280(s0)
		lw	t0, -268(s0)
		lw	t1, -280(s0)
		add	t2, t0, t1
		sw	t2, -284(s0)
		lw	t0, -284(s0)
		lw	t1, 0(t0)
		sw	t1, -288(s0)
		lw	t0, -288(s0)
		sw	t0, -40(s0)
		lw	t1, -44(s0)
		sw	t1, -292(s0)
		lw	t0, -292(s0)
		sw	t0, -44(s0)
		lw	t1, -20(s0)
		sw	t1, -296(s0)
		lw	t1, -44(s0)
		sw	t1, -300(s0)
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
		lw	t0, -312(s0)
		lw	t1, 0(t0)
		sw	t1, -316(s0)
		lw	t1, -20(s0)
		sw	t1, -320(s0)
		lw	t1, -32(s0)
		sw	t1, -324(s0)
		li	t0, 4
		sw	t0, -328(s0)
		lw	t0, -324(s0)
		lw	t1, -328(s0)
		mul	t2, t0, t1
		sw	t2, -332(s0)
		lw	t0, -320(s0)
		lw	t1, -332(s0)
		add	t2, t0, t1
		sw	t2, -336(s0)
		lw	t0, -336(s0)
		lw	t1, 0(t0)
		sw	t1, -340(s0)
		lw	t0, -292(s0)
		lw	t1, 0(t0)
		sw	t1, -344(s0)
		lw	t0, -340(s0)
		lw	t1, -344(s0)
		add	t2, t0, t1
		sw	t2, -348(s0)
		lw	t0, -348(s0)
		lw	t1, -316(s0)
		slt	t2, t0, t1
		sw	t2, -352(s0)
		lw	t0, -352(s0)
		bnez	t0, .spfa_79
		j	.spfa_92
.spfa_79:
		lw	t1, -20(s0)
		sw	t1, -356(s0)
		lw	t1, -44(s0)
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
		lw	t1, -20(s0)
		sw	t1, -376(s0)
		lw	t1, -32(s0)
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
		lw	t0, -392(s0)
		lw	t1, 0(t0)
		sw	t1, -396(s0)
		lw	t0, -292(s0)
		lw	t1, 0(t0)
		sw	t1, -400(s0)
		lw	t0, -396(s0)
		lw	t1, -400(s0)
		add	t2, t0, t1
		sw	t2, -404(s0)
		lw	t0, -404(s0)
		lw	t1, -372(s0)
		sw	t0, 0(t1)
		lw	t1, -28(s0)
		sw	t1, -408(s0)
		lw	t1, -44(s0)
		sw	t1, -412(s0)
		lw	t0, -408(s0)
		mv	a0, t0
		lw	t0, -412(s0)
		mv	a1, t0
		call	classQueue_int_push
		j	.spfa_92
.spfa_92:
		j	.spfa_93
.spfa_93:
		lw	t1, my_g
		sw	t1, -416(s0)
		lw	t0, -416(s0)
		addi	t1, t0, 8
		sw	t1, -420(s0)
		lw	t0, -420(s0)
		lw	t1, 0(t0)
		sw	t1, -424(s0)
		lw	t1, -36(s0)
		sw	t1, -428(s0)
		li	t0, 4
		sw	t0, -432(s0)
		lw	t0, -428(s0)
		lw	t1, -432(s0)
		mul	t2, t0, t1
		sw	t2, -436(s0)
		lw	t0, -424(s0)
		lw	t1, -436(s0)
		add	t2, t0, t1
		sw	t2, -440(s0)
		lw	t0, -440(s0)
		lw	t1, 0(t0)
		sw	t1, -444(s0)
		lw	t0, -444(s0)
		sw	t0, -36(s0)
		j	.spfa_53
.spfa_100:
		j	.spfa_38
.spfa_101:
		lw	t1, -20(s0)
		sw	t1, -448(s0)
		lw	t0, -448(s0)
		sw	t0, -12(s0)
		j	.spfareturn_block
.spfareturn_block:
		lw	t1, -12(s0)
		sw	t1, -452(s0)
		lw	t0, -452(s0)
		mv	a0, t0
		li	t0, 464
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.section	.sbss
	.type	my_storage,@object
	.globl	my_storage
	.p2align	2
my_storage:
	.word	0
	.size	my_storage, 8

	.section	.sbss
	.type	my_beg,@object
	.globl	my_beg
	.p2align	2
my_beg:
	.word	0
	.size	my_beg, 8

	.section	.sbss
	.type	my_end,@object
	.globl	my_end
	.p2align	2
my_end:
	.word	0
	.size	my_end, 8

	.section	.rodata
	.type	my_.str.0,@object
my_.str.0:
	.asciz	"Warning: Queue_int::pop: empty queue "
	.size	my_.str.0, 37

	.section	.sbss
	.type	my_edges,@object
	.globl	my_edges
	.p2align	2
my_edges:
	.word	0
	.size	my_edges, 8

	.section	.sbss
	.type	my_next,@object
	.globl	my_next
	.p2align	2
my_next:
	.word	0
	.size	my_next, 8

	.section	.sbss
	.type	my_first,@object
	.globl	my_first
	.p2align	2
my_first:
	.word	0
	.size	my_first, 8

	.section	.sbss
	.type	my_size,@object
	.globl	my_size
	.p2align	2
my_size:
	.word	0
	.size	my_size, 8

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
	.type	my_g,@object
	.globl	my_g
	.p2align	2
my_g:
	.word	0
	.size	my_g, 8

	.section	.sbss
	.type	my_INF,@object
	.globl	my_INF
	.p2align	2
my_INF:
	.word	10000000
	.size	my_INF, 8

	.section	.rodata
	.type	my_.str.1,@object
my_.str.1:
	.asciz	"-1 "
	.size	my_.str.1, 3

	.section	.rodata
	.type	my_.str.2,@object
my_.str.2:
	.asciz	"  "
	.size	my_.str.2, 2

	.section	.rodata
	.type	my_.str.3,@object
my_.str.3:
	.asciz	" "
	.size	my_.str.3, 1



