	.text

	.globl	Node
	.p2align	2
	.type	Node,@function
Node:
.Node_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -16(s0)
.Node:
		lw	t0, -16(s0)
		sw	t0, -12(s0)
		j	.Nodereturn_block
.Nodereturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	constructNode
	.p2align	2
	.type	constructNode,@function
constructNode:
.constructNode_parameters:
		li	t0, 224
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -36(s0)
		mv	t1, a1
		sw	t1, -40(s0)
		mv	t1, a2
		sw	t1, -44(s0)
		mv	t1, a3
		sw	t1, -48(s0)
.constructNode:
		lw	t0, -36(s0)
		sw	t0, -16(s0)
		lw	t0, -40(s0)
		sw	t0, -20(s0)
		lw	t0, -44(s0)
		sw	t0, -24(s0)
		lw	t0, -48(s0)
		sw	t0, -28(s0)
		li	t0, 24
		sw	t0, -52(s0)
		lw	t0, -52(s0)
		mv	a0, t0
		call	malloc
		mv	t1, a0
		sw	t1, -56(s0)
		lw	t0, -56(s0)
		mv	a0, t0
		call	Node
		lw	t0, -56(s0)
		sw	t0, -32(s0)
		lw	t1, -32(s0)
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		addi	t1, t0, 24
		sw	t1, -64(s0)
		li	t0, 2
		sw	t0, -68(s0)
		li	t0, 24
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
		li	t0, 2
		sw	t0, -92(s0)
		lw	t0, -92(s0)
		lw	t1, -88(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -96(s0)
		li	t0, 4
		sw	t0, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		mul	t2, t0, t1
		sw	t2, -104(s0)
		lw	t0, -88(s0)
		lw	t1, -104(s0)
		add	t2, t0, t1
		sw	t2, -108(s0)
		lw	t0, -108(s0)
		lw	t1, -64(s0)
		sw	t0, 0(t1)
		lw	t1, -32(s0)
		sw	t1, -112(s0)
		lw	t0, -112(s0)
		addi	t1, t0, 32
		sw	t1, -116(s0)
		lw	t1, -16(s0)
		sw	t1, -120(s0)
		lw	t0, -120(s0)
		lw	t1, -116(s0)
		sw	t0, 0(t1)
		lw	t1, -32(s0)
		sw	t1, -124(s0)
		lw	t0, -124(s0)
		addi	t1, t0, 36
		sw	t1, -128(s0)
		li	t0, 1
		sw	t0, -132(s0)
		lw	t0, -132(s0)
		lw	t1, -128(s0)
		sw	t0, 0(t1)
		lw	t1, -32(s0)
		sw	t1, -136(s0)
		lw	t0, -136(s0)
		addi	t1, t0, 0
		sw	t1, -140(s0)
		lw	t1, -20(s0)
		sw	t1, -144(s0)
		lw	t0, -144(s0)
		lw	t1, -140(s0)
		sw	t0, 0(t1)
		lw	t1, -32(s0)
		sw	t1, -148(s0)
		lw	t0, -148(s0)
		addi	t1, t0, 24
		sw	t1, -152(s0)
		lw	t0, -152(s0)
		lw	t1, 0(t0)
		sw	t1, -156(s0)
		li	t0, 0
		sw	t0, -160(s0)
		li	t0, 24
		sw	t0, -164(s0)
		lw	t0, -160(s0)
		lw	t1, -164(s0)
		mul	t2, t0, t1
		sw	t2, -168(s0)
		lw	t0, -156(s0)
		lw	t1, -168(s0)
		add	t2, t0, t1
		sw	t2, -172(s0)
		lw	t1, -24(s0)
		sw	t1, -176(s0)
		lw	t0, -176(s0)
		lw	t1, -172(s0)
		sw	t0, 0(t1)
		lw	t1, -32(s0)
		sw	t1, -180(s0)
		lw	t0, -180(s0)
		addi	t1, t0, 24
		sw	t1, -184(s0)
		lw	t0, -184(s0)
		lw	t1, 0(t0)
		sw	t1, -188(s0)
		li	t0, 1
		sw	t0, -192(s0)
		li	t0, 24
		sw	t0, -196(s0)
		lw	t0, -192(s0)
		lw	t1, -196(s0)
		mul	t2, t0, t1
		sw	t2, -200(s0)
		lw	t0, -188(s0)
		lw	t1, -200(s0)
		add	t2, t0, t1
		sw	t2, -204(s0)
		lw	t1, -28(s0)
		sw	t1, -208(s0)
		lw	t0, -208(s0)
		lw	t1, -204(s0)
		sw	t0, 0(t1)
		lw	t1, -32(s0)
		sw	t1, -212(s0)
		lw	t0, -212(s0)
		sw	t0, -12(s0)
		j	.constructNodereturn_block
.constructNodereturn_block:
		lw	t1, -12(s0)
		sw	t1, -216(s0)
		lw	t0, -216(s0)
		mv	a0, t0
		li	t0, 224
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
		li	t0, 160
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.main:
		li	t0, 0
		sw	t0, -20(s0)
		lw	t0, -20(s0)
		sw	t0, -12(s0)
		li	t0, 0
		sw	t0, -24(s0)
		lw	t0, -24(s0)
		lw	t1, -28(s0)
		sw	t0, my_root, t1
		li	t0, 1
		sw	t0, -32(s0)
		li	t0, 31
		sw	t0, -36(s0)
		lw	t0, -32(s0)
		lw	t1, -36(s0)
		sll	t2, t0, t1
		sw	t2, -40(s0)
		li	t0, -1
		sw	t0, -44(s0)
		lw	t0, -44(s0)
		lw	t1, -40(s0)
		xor	t2, t0, t1
		sw	t2, -48(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		sw	t0, my_MaxRandInt, t1
		call	getInt
		mv	t1, a0
		sw	t1, -56(s0)
		lw	t0, -56(s0)
		lw	t1, -60(s0)
		sw	t0, my_seed, t1
		li	t0, 50000
		sw	t0, -64(s0)
		lw	t0, -64(s0)
		sw	t0, -16(s0)
		lw	t1, my_MaxRandInt
		sw	t1, -68(s0)
		li	t0, 10
		sw	t0, -72(s0)
		lw	t0, -68(s0)
		lw	t1, -72(s0)
		div	t2, t0, t1
		sw	t2, -76(s0)
		li	t0, 8
		sw	t0, -80(s0)
		lw	t0, -80(s0)
		lw	t1, -76(s0)
		mul	t2, t0, t1
		sw	t2, -84(s0)
		lw	t1, -16(s0)
		sw	t1, -88(s0)
		lw	t0, -84(s0)
		mv	a0, t0
		lw	t0, -88(s0)
		mv	a1, t0
		call	generateOperations
		lw	t1, my_MaxRandInt
		sw	t1, -92(s0)
		li	t0, 10
		sw	t0, -96(s0)
		lw	t0, -92(s0)
		lw	t1, -96(s0)
		div	t2, t0, t1
		sw	t2, -100(s0)
		li	t0, 2
		sw	t0, -104(s0)
		lw	t0, -104(s0)
		lw	t1, -100(s0)
		mul	t2, t0, t1
		sw	t2, -108(s0)
		lw	t1, -16(s0)
		sw	t1, -112(s0)
		li	t0, 2
		sw	t0, -116(s0)
		lw	t0, -116(s0)
		lw	t1, -112(s0)
		mul	t2, t0, t1
		sw	t2, -120(s0)
		lw	t0, -108(s0)
		mv	a0, t0
		lw	t0, -120(s0)
		mv	a1, t0
		call	generateOperations
		lw	t1, my_MaxRandInt
		sw	t1, -124(s0)
		li	t0, 10
		sw	t0, -128(s0)
		lw	t0, -124(s0)
		lw	t1, -128(s0)
		div	t2, t0, t1
		sw	t2, -132(s0)
		li	t0, 4
		sw	t0, -136(s0)
		lw	t0, -136(s0)
		lw	t1, -132(s0)
		mul	t2, t0, t1
		sw	t2, -140(s0)
		lw	t1, -16(s0)
		sw	t1, -144(s0)
		lw	t0, -140(s0)
		mv	a0, t0
		lw	t0, -144(s0)
		mv	a1, t0
		call	generateOperations
		lw	t1, my_root
		sw	t1, -148(s0)
		lw	t0, -148(s0)
		mv	a0, t0
		call	printTree
		li	t0, 0
		sw	t0, -152(s0)
		lw	t0, -152(s0)
		sw	t0, -12(s0)
		j	.mainreturn_block
.mainreturn_block:
		lw	t1, -12(s0)
		sw	t1, -156(s0)
		lw	t0, -156(s0)
		mv	a0, t0
		li	t0, 160
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	insertImpl
	.p2align	2
	.type	insertImpl,@function
insertImpl:
.insertImpl_parameters:
		li	t0, 240
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -36(s0)
		mv	t1, a1
		sw	t1, -40(s0)
		mv	t1, a2
		sw	t1, -44(s0)
		mv	t1, a3
		sw	t1, -48(s0)
.insertImpl:
		lw	t0, -36(s0)
		sw	t0, -16(s0)
		lw	t0, -40(s0)
		sw	t0, -20(s0)
		lw	t0, -44(s0)
		sw	t0, -24(s0)
		lw	t0, -48(s0)
		sw	t0, -28(s0)
		lw	t1, -16(s0)
		sw	t1, -52(s0)
		li	t0, 0
		sw	t0, -56(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		xor	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -60(s0)
		sltiu	t1, t0, 1
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		bnez	t0, .insertImpl_12
		j	.insertImpl_25
.insertImpl_12:
		lw	t1, -28(s0)
		sw	t1, -64(s0)
		lw	t1, -20(s0)
		sw	t1, -68(s0)
		lw	t0, -64(s0)
		mv	a0, t0
		lw	t0, -68(s0)
		mv	a1, t0
		li	t0, 0
		sw	t0, -72(s0)
		lw	t0, -72(s0)
		mv	a2, t0
		li	t0, 0
		sw	t0, -76(s0)
		lw	t0, -76(s0)
		mv	a3, t0
		call	constructNode
		mv	t1, a0
		sw	t1, -80(s0)
		lw	t0, -80(s0)
		sw	t0, -16(s0)
		lw	t1, -20(s0)
		sw	t1, -84(s0)
		lw	t0, -84(s0)
		addi	t1, t0, 24
		sw	t1, -88(s0)
		lw	t0, -88(s0)
		lw	t1, 0(t0)
		sw	t1, -92(s0)
		lw	t1, -24(s0)
		sw	t1, -96(s0)
		li	t0, 24
		sw	t0, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		mul	t2, t0, t1
		sw	t2, -104(s0)
		lw	t0, -92(s0)
		lw	t1, -104(s0)
		add	t2, t0, t1
		sw	t2, -108(s0)
		lw	t1, -16(s0)
		sw	t1, -112(s0)
		lw	t0, -112(s0)
		lw	t1, -108(s0)
		sw	t0, 0(t1)
		li	t0, 0
		sw	t0, -116(s0)
		lw	t0, -116(s0)
		sw	t0, -12(s0)
		j	.insertImplreturn_block
.insertImpl_25:
		lw	t1, -16(s0)
		sw	t1, -120(s0)
		lw	t0, -120(s0)
		addi	t1, t0, 32
		sw	t1, -124(s0)
		lw	t0, -124(s0)
		lw	t1, 0(t0)
		sw	t1, -128(s0)
		lw	t1, -28(s0)
		sw	t1, -132(s0)
		lw	t0, -128(s0)
		lw	t1, -132(s0)
		xor	t2, t0, t1
		sw	t2, -136(s0)
		lw	t0, -136(s0)
		sltiu	t1, t0, 1
		sw	t1, -136(s0)
		lw	t0, -136(s0)
		bnez	t0, .insertImpl_31
		j	.insertImpl_36
.insertImpl_31:
		lw	t1, -16(s0)
		sw	t1, -140(s0)
		lw	t0, -140(s0)
		addi	t1, t0, 36
		sw	t1, -144(s0)
		lw	t0, -144(s0)
		lw	t1, 0(t0)
		sw	t1, -148(s0)
		li	t0, 1
		sw	t0, -152(s0)
		lw	t0, -148(s0)
		lw	t1, -152(s0)
		add	t2, t0, t1
		sw	t2, -156(s0)
		lw	t0, -156(s0)
		lw	t1, -144(s0)
		sw	t0, 0(t1)
		li	t0, 1
		sw	t0, -160(s0)
		lw	t0, -160(s0)
		sw	t0, -12(s0)
		j	.insertImplreturn_block
.insertImpl_36:
		li	t0, 0
		sw	t0, -164(s0)
		lw	t0, -164(s0)
		sw	t0, -32(s0)
		lw	t1, -16(s0)
		sw	t1, -168(s0)
		lw	t0, -168(s0)
		addi	t1, t0, 32
		sw	t1, -172(s0)
		lw	t0, -172(s0)
		lw	t1, 0(t0)
		sw	t1, -176(s0)
		lw	t1, -28(s0)
		sw	t1, -180(s0)
		lw	t0, -176(s0)
		lw	t1, -180(s0)
		slt	t2, t0, t1
		sw	t2, -184(s0)
		lw	t0, -184(s0)
		bnez	t0, .insertImpl_43
		j	.insertImpl_44
.insertImpl_43:
		li	t0, 1
		sw	t0, -188(s0)
		lw	t0, -188(s0)
		sw	t0, -32(s0)
		j	.insertImpl_44
.insertImpl_44:
		lw	t1, -16(s0)
		sw	t1, -192(s0)
		lw	t0, -192(s0)
		addi	t1, t0, 24
		sw	t1, -196(s0)
		lw	t0, -196(s0)
		lw	t1, 0(t0)
		sw	t1, -200(s0)
		lw	t1, -32(s0)
		sw	t1, -204(s0)
		li	t0, 24
		sw	t0, -208(s0)
		lw	t0, -204(s0)
		lw	t1, -208(s0)
		mul	t2, t0, t1
		sw	t2, -212(s0)
		lw	t0, -200(s0)
		lw	t1, -212(s0)
		add	t2, t0, t1
		sw	t2, -216(s0)
		lw	t0, -216(s0)
		lw	t1, 0(t0)
		sw	t1, -220(s0)
		lw	t1, -16(s0)
		sw	t1, -224(s0)
		lw	t1, -32(s0)
		sw	t1, -228(s0)
		lw	t1, -28(s0)
		sw	t1, -232(s0)
		lw	t0, -220(s0)
		mv	a0, t0
		lw	t0, -224(s0)
		mv	a1, t0
		lw	t0, -228(s0)
		mv	a2, t0
		lw	t0, -232(s0)
		mv	a3, t0
		call	insertImpl
		mv	t1, a0
		sw	t1, -236(s0)
		lw	t0, -236(s0)
		sw	t0, -12(s0)
		j	.insertImplreturn_block
.insertImplreturn_block:
		lw	t1, -12(s0)
		sw	t1, -240(s0)
		lw	t0, -240(s0)
		mv	a0, t0
		li	t0, 240
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	insert
	.p2align	2
	.type	insert,@function
insert:
.insert_parameters:
		li	t0, 96
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
.insert:
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		lw	t1, my_root
		sw	t1, -24(s0)
		li	t0, 0
		sw	t0, -28(s0)
		lw	t0, -24(s0)
		lw	t1, -28(s0)
		xor	t2, t0, t1
		sw	t2, -32(s0)
		lw	t0, -32(s0)
		sltiu	t1, t0, 1
		sw	t1, -32(s0)
		lw	t0, -32(s0)
		xori	t1, t0, 1
		sw	t1, -32(s0)
		lw	t0, -32(s0)
		bnez	t0, .insert_6
		j	.insert_12
.insert_6:
		lw	t1, my_root
		sw	t1, -36(s0)
		li	t0, 0
		sw	t0, -40(s0)
		li	t0, 1
		sw	t0, -44(s0)
		lw	t0, -40(s0)
		lw	t1, -44(s0)
		sub	t2, t0, t1
		sw	t2, -48(s0)
		lw	t1, -16(s0)
		sw	t1, -52(s0)
		lw	t0, -36(s0)
		mv	a0, t0
		li	t0, 0
		sw	t0, -56(s0)
		lw	t0, -56(s0)
		mv	a1, t0
		lw	t0, -48(s0)
		mv	a2, t0
		lw	t0, -52(s0)
		mv	a3, t0
		call	insertImpl
		mv	t1, a0
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		sw	t0, -12(s0)
		j	.insertreturn_block
.insert_12:
		lw	t1, -16(s0)
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		mv	a0, t0
		li	t0, 0
		sw	t0, -68(s0)
		lw	t0, -68(s0)
		mv	a1, t0
		li	t0, 0
		sw	t0, -72(s0)
		lw	t0, -72(s0)
		mv	a2, t0
		li	t0, 0
		sw	t0, -76(s0)
		lw	t0, -76(s0)
		mv	a3, t0
		call	constructNode
		mv	t1, a0
		sw	t1, -80(s0)
		lw	t0, -80(s0)
		lw	t1, -84(s0)
		sw	t0, my_root, t1
		li	t0, 0
		sw	t0, -88(s0)
		lw	t0, -88(s0)
		sw	t0, -12(s0)
		j	.insertreturn_block
.insertreturn_block:
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

	.globl	findLargest
	.p2align	2
	.type	findLargest,@function
findLargest:
.findLargest_parameters:
		li	t0, 112
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
.findLargest:
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -24(s0)
		lw	t0, -24(s0)
		addi	t1, t0, 24
		sw	t1, -28(s0)
		lw	t0, -28(s0)
		lw	t1, 0(t0)
		sw	t1, -32(s0)
		li	t0, 1
		sw	t0, -36(s0)
		li	t0, 24
		sw	t0, -40(s0)
		lw	t0, -36(s0)
		lw	t1, -40(s0)
		mul	t2, t0, t1
		sw	t2, -44(s0)
		lw	t0, -32(s0)
		lw	t1, -44(s0)
		add	t2, t0, t1
		sw	t2, -48(s0)
		lw	t0, -48(s0)
		lw	t1, 0(t0)
		sw	t1, -52(s0)
		li	t0, 0
		sw	t0, -56(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		xor	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -60(s0)
		sltiu	t1, t0, 1
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		bnez	t0, .findLargest_10
		j	.findLargest_13
.findLargest_10:
		lw	t1, -16(s0)
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		sw	t0, -12(s0)
		j	.findLargestreturn_block
.findLargest_13:
		lw	t1, -16(s0)
		sw	t1, -68(s0)
		lw	t0, -68(s0)
		addi	t1, t0, 24
		sw	t1, -72(s0)
		lw	t0, -72(s0)
		lw	t1, 0(t0)
		sw	t1, -76(s0)
		li	t0, 1
		sw	t0, -80(s0)
		li	t0, 24
		sw	t0, -84(s0)
		lw	t0, -80(s0)
		lw	t1, -84(s0)
		mul	t2, t0, t1
		sw	t2, -88(s0)
		lw	t0, -76(s0)
		lw	t1, -88(s0)
		add	t2, t0, t1
		sw	t2, -92(s0)
		lw	t0, -92(s0)
		lw	t1, 0(t0)
		sw	t1, -96(s0)
		lw	t0, -96(s0)
		mv	a0, t0
		call	findLargest
		mv	t1, a0
		sw	t1, -100(s0)
		lw	t0, -100(s0)
		sw	t0, -12(s0)
		j	.findLargestreturn_block
.findLargestreturn_block:
		lw	t1, -12(s0)
		sw	t1, -104(s0)
		lw	t0, -104(s0)
		mv	a0, t0
		li	t0, 112
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	eraseImpl
	.p2align	2
	.type	eraseImpl,@function
eraseImpl:
.eraseImpl_parameters:
		li	t0, 1136
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -36(s0)
		mv	t1, a1
		sw	t1, -40(s0)
		mv	t1, a2
		sw	t1, -44(s0)
		mv	t1, a3
		sw	t1, -48(s0)
.eraseImpl:
		lw	t0, -36(s0)
		sw	t0, -16(s0)
		lw	t0, -40(s0)
		sw	t0, -20(s0)
		lw	t0, -44(s0)
		sw	t0, -24(s0)
		lw	t0, -48(s0)
		sw	t0, -28(s0)
		lw	t1, -16(s0)
		sw	t1, -52(s0)
		li	t0, 0
		sw	t0, -56(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		xor	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -60(s0)
		sltiu	t1, t0, 1
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		bnez	t0, .eraseImpl_12
		j	.eraseImpl_13
.eraseImpl_12:
		li	t0, 0
		sw	t0, -64(s0)
		lw	t0, -64(s0)
		sw	t0, -12(s0)
		j	.eraseImplreturn_block
.eraseImpl_13:
		lw	t1, -16(s0)
		sw	t1, -68(s0)
		lw	t0, -68(s0)
		addi	t1, t0, 32
		sw	t1, -72(s0)
		lw	t0, -72(s0)
		lw	t1, 0(t0)
		sw	t1, -76(s0)
		lw	t1, -28(s0)
		sw	t1, -80(s0)
		lw	t0, -80(s0)
		lw	t1, -76(s0)
		slt	t2, t0, t1
		sw	t2, -84(s0)
		lw	t0, -84(s0)
		bnez	t0, .eraseImpl_19
		j	.eraseImpl_30
.eraseImpl_19:
		lw	t1, -16(s0)
		sw	t1, -88(s0)
		lw	t0, -88(s0)
		addi	t1, t0, 24
		sw	t1, -92(s0)
		lw	t0, -92(s0)
		lw	t1, 0(t0)
		sw	t1, -96(s0)
		li	t0, 0
		sw	t0, -100(s0)
		li	t0, 24
		sw	t0, -104(s0)
		lw	t0, -100(s0)
		lw	t1, -104(s0)
		mul	t2, t0, t1
		sw	t2, -108(s0)
		lw	t0, -96(s0)
		lw	t1, -108(s0)
		add	t2, t0, t1
		sw	t2, -112(s0)
		lw	t0, -112(s0)
		lw	t1, 0(t0)
		sw	t1, -116(s0)
		lw	t1, -16(s0)
		sw	t1, -120(s0)
		lw	t1, -28(s0)
		sw	t1, -124(s0)
		lw	t0, -116(s0)
		mv	a0, t0
		lw	t0, -120(s0)
		mv	a1, t0
		li	t0, 0
		sw	t0, -128(s0)
		lw	t0, -128(s0)
		mv	a2, t0
		lw	t0, -124(s0)
		mv	a3, t0
		call	eraseImpl
		mv	t1, a0
		sw	t1, -132(s0)
		lw	t0, -132(s0)
		sw	t0, -12(s0)
		j	.eraseImplreturn_block
.eraseImpl_30:
		lw	t1, -16(s0)
		sw	t1, -136(s0)
		lw	t0, -136(s0)
		addi	t1, t0, 32
		sw	t1, -140(s0)
		lw	t0, -140(s0)
		lw	t1, 0(t0)
		sw	t1, -144(s0)
		lw	t1, -28(s0)
		sw	t1, -148(s0)
		lw	t0, -144(s0)
		lw	t1, -148(s0)
		slt	t2, t0, t1
		sw	t2, -152(s0)
		lw	t0, -152(s0)
		bnez	t0, .eraseImpl_36
		j	.eraseImpl_47
.eraseImpl_36:
		lw	t1, -16(s0)
		sw	t1, -156(s0)
		lw	t0, -156(s0)
		addi	t1, t0, 24
		sw	t1, -160(s0)
		lw	t0, -160(s0)
		lw	t1, 0(t0)
		sw	t1, -164(s0)
		li	t0, 1
		sw	t0, -168(s0)
		li	t0, 24
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
		lw	t1, -16(s0)
		sw	t1, -188(s0)
		lw	t1, -28(s0)
		sw	t1, -192(s0)
		lw	t0, -184(s0)
		mv	a0, t0
		lw	t0, -188(s0)
		mv	a1, t0
		li	t0, 1
		sw	t0, -196(s0)
		lw	t0, -196(s0)
		mv	a2, t0
		lw	t0, -192(s0)
		mv	a3, t0
		call	eraseImpl
		mv	t1, a0
		sw	t1, -200(s0)
		lw	t0, -200(s0)
		sw	t0, -12(s0)
		j	.eraseImplreturn_block
.eraseImpl_47:
		lw	t1, -16(s0)
		sw	t1, -204(s0)
		lw	t0, -204(s0)
		addi	t1, t0, 36
		sw	t1, -208(s0)
		lw	t0, -208(s0)
		lw	t1, 0(t0)
		sw	t1, -212(s0)
		li	t0, -1
		sw	t0, -216(s0)
		lw	t0, -212(s0)
		lw	t1, -216(s0)
		add	t2, t0, t1
		sw	t2, -220(s0)
		lw	t0, -220(s0)
		lw	t1, -208(s0)
		sw	t0, 0(t1)
		lw	t1, -16(s0)
		sw	t1, -224(s0)
		lw	t0, -224(s0)
		addi	t1, t0, 36
		sw	t1, -228(s0)
		lw	t0, -228(s0)
		lw	t1, 0(t0)
		sw	t1, -232(s0)
		li	t0, 0
		sw	t0, -236(s0)
		lw	t0, -236(s0)
		lw	t1, -232(s0)
		slt	t2, t0, t1
		sw	t2, -240(s0)
		lw	t0, -240(s0)
		bnez	t0, .eraseImpl_56
		j	.eraseImpl_57
.eraseImpl_56:
		li	t0, 1
		sw	t0, -244(s0)
		lw	t0, -244(s0)
		sw	t0, -12(s0)
		j	.eraseImplreturn_block
.eraseImpl_57:
		lw	t1, -16(s0)
		sw	t1, -248(s0)
		lw	t0, -248(s0)
		addi	t1, t0, 24
		sw	t1, -252(s0)
		lw	t0, -252(s0)
		lw	t1, 0(t0)
		sw	t1, -256(s0)
		li	t0, 0
		sw	t0, -260(s0)
		li	t0, 24
		sw	t0, -264(s0)
		lw	t0, -260(s0)
		lw	t1, -264(s0)
		mul	t2, t0, t1
		sw	t2, -268(s0)
		lw	t0, -256(s0)
		lw	t1, -268(s0)
		add	t2, t0, t1
		sw	t2, -272(s0)
		lw	t0, -272(s0)
		lw	t1, 0(t0)
		sw	t1, -276(s0)
		li	t0, 0
		sw	t0, -280(s0)
		lw	t0, -276(s0)
		lw	t1, -280(s0)
		xor	t2, t0, t1
		sw	t2, -284(s0)
		lw	t0, -284(s0)
		sltiu	t1, t0, 1
		sw	t1, -284(s0)
		lw	t0, -284(s0)
		bnez	t0, .eraseImpl_64
		j	.eraseImpl_109
.eraseImpl_64:
		lw	t1, -20(s0)
		sw	t1, -288(s0)
		li	t0, 0
		sw	t0, -292(s0)
		lw	t0, -288(s0)
		lw	t1, -292(s0)
		xor	t2, t0, t1
		sw	t2, -296(s0)
		lw	t0, -296(s0)
		sltiu	t1, t0, 1
		sw	t1, -296(s0)
		lw	t0, -296(s0)
		xori	t1, t0, 1
		sw	t1, -296(s0)
		lw	t0, -296(s0)
		bnez	t0, .eraseImpl_67
		j	.eraseImpl_79
.eraseImpl_67:
		lw	t1, -20(s0)
		sw	t1, -300(s0)
		lw	t0, -300(s0)
		addi	t1, t0, 24
		sw	t1, -304(s0)
		lw	t0, -304(s0)
		lw	t1, 0(t0)
		sw	t1, -308(s0)
		lw	t1, -24(s0)
		sw	t1, -312(s0)
		li	t0, 24
		sw	t0, -316(s0)
		lw	t0, -312(s0)
		lw	t1, -316(s0)
		mul	t2, t0, t1
		sw	t2, -320(s0)
		lw	t0, -308(s0)
		lw	t1, -320(s0)
		add	t2, t0, t1
		sw	t2, -324(s0)
		lw	t1, -16(s0)
		sw	t1, -328(s0)
		lw	t0, -328(s0)
		addi	t1, t0, 24
		sw	t1, -332(s0)
		lw	t0, -332(s0)
		lw	t1, 0(t0)
		sw	t1, -336(s0)
		li	t0, 1
		sw	t0, -340(s0)
		li	t0, 24
		sw	t0, -344(s0)
		lw	t0, -340(s0)
		lw	t1, -344(s0)
		mul	t2, t0, t1
		sw	t2, -348(s0)
		lw	t0, -336(s0)
		lw	t1, -348(s0)
		add	t2, t0, t1
		sw	t2, -352(s0)
		lw	t0, -352(s0)
		lw	t1, 0(t0)
		sw	t1, -356(s0)
		lw	t0, -356(s0)
		lw	t1, -324(s0)
		sw	t0, 0(t1)
		j	.eraseImpl_79
.eraseImpl_79:
		lw	t1, -16(s0)
		sw	t1, -360(s0)
		lw	t0, -360(s0)
		addi	t1, t0, 24
		sw	t1, -364(s0)
		lw	t0, -364(s0)
		lw	t1, 0(t0)
		sw	t1, -368(s0)
		li	t0, 1
		sw	t0, -372(s0)
		li	t0, 24
		sw	t0, -376(s0)
		lw	t0, -372(s0)
		lw	t1, -376(s0)
		mul	t2, t0, t1
		sw	t2, -380(s0)
		lw	t0, -368(s0)
		lw	t1, -380(s0)
		add	t2, t0, t1
		sw	t2, -384(s0)
		lw	t0, -384(s0)
		lw	t1, 0(t0)
		sw	t1, -388(s0)
		li	t0, 0
		sw	t0, -392(s0)
		lw	t0, -388(s0)
		lw	t1, -392(s0)
		xor	t2, t0, t1
		sw	t2, -396(s0)
		lw	t0, -396(s0)
		sltiu	t1, t0, 1
		sw	t1, -396(s0)
		lw	t0, -396(s0)
		xori	t1, t0, 1
		sw	t1, -396(s0)
		lw	t0, -396(s0)
		bnez	t0, .eraseImpl_86
		j	.eraseImpl_95
.eraseImpl_86:
		lw	t1, -16(s0)
		sw	t1, -400(s0)
		lw	t0, -400(s0)
		addi	t1, t0, 24
		sw	t1, -404(s0)
		lw	t0, -404(s0)
		lw	t1, 0(t0)
		sw	t1, -408(s0)
		li	t0, 1
		sw	t0, -412(s0)
		li	t0, 24
		sw	t0, -416(s0)
		lw	t0, -412(s0)
		lw	t1, -416(s0)
		mul	t2, t0, t1
		sw	t2, -420(s0)
		lw	t0, -408(s0)
		lw	t1, -420(s0)
		add	t2, t0, t1
		sw	t2, -424(s0)
		lw	t0, -424(s0)
		lw	t1, 0(t0)
		sw	t1, -428(s0)
		lw	t0, -428(s0)
		addi	t1, t0, 0
		sw	t1, -432(s0)
		lw	t1, -20(s0)
		sw	t1, -436(s0)
		lw	t0, -436(s0)
		lw	t1, -432(s0)
		sw	t0, 0(t1)
		j	.eraseImpl_95
.eraseImpl_95:
		lw	t1, -28(s0)
		sw	t1, -440(s0)
		lw	t1, my_root
		sw	t1, -444(s0)
		lw	t0, -444(s0)
		addi	t1, t0, 32
		sw	t1, -448(s0)
		lw	t0, -448(s0)
		lw	t1, 0(t0)
		sw	t1, -452(s0)
		lw	t0, -440(s0)
		lw	t1, -452(s0)
		xor	t2, t0, t1
		sw	t2, -456(s0)
		lw	t0, -456(s0)
		sltiu	t1, t0, 1
		sw	t1, -456(s0)
		lw	t0, -456(s0)
		bnez	t0, .eraseImpl_101
		j	.eraseImpl_108
.eraseImpl_101:
		lw	t1, -16(s0)
		sw	t1, -460(s0)
		lw	t0, -460(s0)
		addi	t1, t0, 24
		sw	t1, -464(s0)
		lw	t0, -464(s0)
		lw	t1, 0(t0)
		sw	t1, -468(s0)
		li	t0, 1
		sw	t0, -472(s0)
		li	t0, 24
		sw	t0, -476(s0)
		lw	t0, -472(s0)
		lw	t1, -476(s0)
		mul	t2, t0, t1
		sw	t2, -480(s0)
		lw	t0, -468(s0)
		lw	t1, -480(s0)
		add	t2, t0, t1
		sw	t2, -484(s0)
		lw	t0, -484(s0)
		lw	t1, 0(t0)
		sw	t1, -488(s0)
		lw	t0, -488(s0)
		lw	t1, -492(s0)
		sw	t0, my_root, t1
		j	.eraseImpl_108
.eraseImpl_108:
		li	t0, 1
		sw	t0, -496(s0)
		lw	t0, -496(s0)
		sw	t0, -12(s0)
		j	.eraseImplreturn_block
.eraseImpl_109:
		lw	t1, -16(s0)
		sw	t1, -500(s0)
		lw	t0, -500(s0)
		addi	t1, t0, 24
		sw	t1, -504(s0)
		lw	t0, -504(s0)
		lw	t1, 0(t0)
		sw	t1, -508(s0)
		li	t0, 0
		sw	t0, -512(s0)
		li	t0, 24
		sw	t0, -516(s0)
		lw	t0, -512(s0)
		lw	t1, -516(s0)
		mul	t2, t0, t1
		sw	t2, -520(s0)
		lw	t0, -508(s0)
		lw	t1, -520(s0)
		add	t2, t0, t1
		sw	t2, -524(s0)
		lw	t0, -524(s0)
		lw	t1, 0(t0)
		sw	t1, -528(s0)
		lw	t0, -528(s0)
		mv	a0, t0
		call	findLargest
		mv	t1, a0
		sw	t1, -532(s0)
		lw	t0, -532(s0)
		sw	t0, -32(s0)
		lw	t1, -28(s0)
		sw	t1, -536(s0)
		lw	t1, my_root
		sw	t1, -540(s0)
		lw	t0, -540(s0)
		addi	t1, t0, 32
		sw	t1, -544(s0)
		lw	t0, -544(s0)
		lw	t1, 0(t0)
		sw	t1, -548(s0)
		lw	t0, -536(s0)
		lw	t1, -548(s0)
		xor	t2, t0, t1
		sw	t2, -552(s0)
		lw	t0, -552(s0)
		sltiu	t1, t0, 1
		sw	t1, -552(s0)
		lw	t0, -552(s0)
		bnez	t0, .eraseImpl_124
		j	.eraseImpl_127
.eraseImpl_124:
		lw	t1, -32(s0)
		sw	t1, -556(s0)
		lw	t0, -556(s0)
		lw	t1, -560(s0)
		sw	t0, my_root, t1
		j	.eraseImpl_127
.eraseImpl_127:
		lw	t1, -32(s0)
		sw	t1, -564(s0)
		lw	t0, -564(s0)
		addi	t1, t0, 32
		sw	t1, -568(s0)
		lw	t0, -568(s0)
		lw	t1, 0(t0)
		sw	t1, -572(s0)
		lw	t1, -16(s0)
		sw	t1, -576(s0)
		lw	t0, -576(s0)
		addi	t1, t0, 24
		sw	t1, -580(s0)
		lw	t0, -580(s0)
		lw	t1, 0(t0)
		sw	t1, -584(s0)
		li	t0, 0
		sw	t0, -588(s0)
		li	t0, 24
		sw	t0, -592(s0)
		lw	t0, -588(s0)
		lw	t1, -592(s0)
		mul	t2, t0, t1
		sw	t2, -596(s0)
		lw	t0, -584(s0)
		lw	t1, -596(s0)
		add	t2, t0, t1
		sw	t2, -600(s0)
		lw	t0, -600(s0)
		lw	t1, 0(t0)
		sw	t1, -604(s0)
		lw	t0, -604(s0)
		addi	t1, t0, 32
		sw	t1, -608(s0)
		lw	t0, -608(s0)
		lw	t1, 0(t0)
		sw	t1, -612(s0)
		lw	t0, -572(s0)
		lw	t1, -612(s0)
		xor	t2, t0, t1
		sw	t2, -616(s0)
		lw	t0, -616(s0)
		sltiu	t1, t0, 1
		sw	t1, -616(s0)
		lw	t0, -616(s0)
		xori	t1, t0, 1
		sw	t1, -616(s0)
		lw	t0, -616(s0)
		bnez	t0, .eraseImpl_139
		j	.eraseImpl_170
.eraseImpl_139:
		lw	t1, -32(s0)
		sw	t1, -620(s0)
		lw	t0, -620(s0)
		addi	t1, t0, 0
		sw	t1, -624(s0)
		lw	t0, -624(s0)
		lw	t1, 0(t0)
		sw	t1, -628(s0)
		lw	t0, -628(s0)
		addi	t1, t0, 24
		sw	t1, -632(s0)
		lw	t0, -632(s0)
		lw	t1, 0(t0)
		sw	t1, -636(s0)
		li	t0, 1
		sw	t0, -640(s0)
		li	t0, 24
		sw	t0, -644(s0)
		lw	t0, -640(s0)
		lw	t1, -644(s0)
		mul	t2, t0, t1
		sw	t2, -648(s0)
		lw	t0, -636(s0)
		lw	t1, -648(s0)
		add	t2, t0, t1
		sw	t2, -652(s0)
		lw	t1, -32(s0)
		sw	t1, -656(s0)
		lw	t0, -656(s0)
		addi	t1, t0, 24
		sw	t1, -660(s0)
		lw	t0, -660(s0)
		lw	t1, 0(t0)
		sw	t1, -664(s0)
		li	t0, 0
		sw	t0, -668(s0)
		li	t0, 24
		sw	t0, -672(s0)
		lw	t0, -668(s0)
		lw	t1, -672(s0)
		mul	t2, t0, t1
		sw	t2, -676(s0)
		lw	t0, -664(s0)
		lw	t1, -676(s0)
		add	t2, t0, t1
		sw	t2, -680(s0)
		lw	t0, -680(s0)
		lw	t1, 0(t0)
		sw	t1, -684(s0)
		lw	t0, -684(s0)
		lw	t1, -652(s0)
		sw	t0, 0(t1)
		lw	t1, -32(s0)
		sw	t1, -688(s0)
		lw	t0, -688(s0)
		addi	t1, t0, 24
		sw	t1, -692(s0)
		lw	t0, -692(s0)
		lw	t1, 0(t0)
		sw	t1, -696(s0)
		li	t0, 0
		sw	t0, -700(s0)
		li	t0, 24
		sw	t0, -704(s0)
		lw	t0, -700(s0)
		lw	t1, -704(s0)
		mul	t2, t0, t1
		sw	t2, -708(s0)
		lw	t0, -696(s0)
		lw	t1, -708(s0)
		add	t2, t0, t1
		sw	t2, -712(s0)
		lw	t0, -712(s0)
		lw	t1, 0(t0)
		sw	t1, -716(s0)
		li	t0, 0
		sw	t0, -720(s0)
		lw	t0, -716(s0)
		lw	t1, -720(s0)
		xor	t2, t0, t1
		sw	t2, -724(s0)
		lw	t0, -724(s0)
		sltiu	t1, t0, 1
		sw	t1, -724(s0)
		lw	t0, -724(s0)
		xori	t1, t0, 1
		sw	t1, -724(s0)
		lw	t0, -724(s0)
		bnez	t0, .eraseImpl_158
		j	.eraseImpl_169
.eraseImpl_158:
		lw	t1, -32(s0)
		sw	t1, -728(s0)
		lw	t0, -728(s0)
		addi	t1, t0, 24
		sw	t1, -732(s0)
		lw	t0, -732(s0)
		lw	t1, 0(t0)
		sw	t1, -736(s0)
		li	t0, 0
		sw	t0, -740(s0)
		li	t0, 24
		sw	t0, -744(s0)
		lw	t0, -740(s0)
		lw	t1, -744(s0)
		mul	t2, t0, t1
		sw	t2, -748(s0)
		lw	t0, -736(s0)
		lw	t1, -748(s0)
		add	t2, t0, t1
		sw	t2, -752(s0)
		lw	t0, -752(s0)
		lw	t1, 0(t0)
		sw	t1, -756(s0)
		lw	t0, -756(s0)
		addi	t1, t0, 0
		sw	t1, -760(s0)
		lw	t1, -32(s0)
		sw	t1, -764(s0)
		lw	t0, -764(s0)
		addi	t1, t0, 0
		sw	t1, -768(s0)
		lw	t0, -768(s0)
		lw	t1, 0(t0)
		sw	t1, -772(s0)
		lw	t0, -772(s0)
		lw	t1, -760(s0)
		sw	t0, 0(t1)
		j	.eraseImpl_169
.eraseImpl_169:
		j	.eraseImpl_170
.eraseImpl_170:
		lw	t1, -20(s0)
		sw	t1, -776(s0)
		li	t0, 0
		sw	t0, -780(s0)
		lw	t0, -776(s0)
		lw	t1, -780(s0)
		xor	t2, t0, t1
		sw	t2, -784(s0)
		lw	t0, -784(s0)
		sltiu	t1, t0, 1
		sw	t1, -784(s0)
		lw	t0, -784(s0)
		xori	t1, t0, 1
		sw	t1, -784(s0)
		lw	t0, -784(s0)
		bnez	t0, .eraseImpl_173
		j	.eraseImpl_181
.eraseImpl_173:
		lw	t1, -20(s0)
		sw	t1, -788(s0)
		lw	t0, -788(s0)
		addi	t1, t0, 24
		sw	t1, -792(s0)
		lw	t0, -792(s0)
		lw	t1, 0(t0)
		sw	t1, -796(s0)
		lw	t1, -24(s0)
		sw	t1, -800(s0)
		li	t0, 24
		sw	t0, -804(s0)
		lw	t0, -800(s0)
		lw	t1, -804(s0)
		mul	t2, t0, t1
		sw	t2, -808(s0)
		lw	t0, -796(s0)
		lw	t1, -808(s0)
		add	t2, t0, t1
		sw	t2, -812(s0)
		lw	t1, -32(s0)
		sw	t1, -816(s0)
		lw	t0, -816(s0)
		lw	t1, -812(s0)
		sw	t0, 0(t1)
		j	.eraseImpl_181
.eraseImpl_181:
		lw	t1, -32(s0)
		sw	t1, -820(s0)
		lw	t0, -820(s0)
		addi	t1, t0, 0
		sw	t1, -824(s0)
		lw	t1, -20(s0)
		sw	t1, -828(s0)
		lw	t0, -828(s0)
		lw	t1, -824(s0)
		sw	t0, 0(t1)
		lw	t1, -32(s0)
		sw	t1, -832(s0)
		lw	t0, -832(s0)
		addi	t1, t0, 24
		sw	t1, -836(s0)
		lw	t0, -836(s0)
		lw	t1, 0(t0)
		sw	t1, -840(s0)
		li	t0, 1
		sw	t0, -844(s0)
		li	t0, 24
		sw	t0, -848(s0)
		lw	t0, -844(s0)
		lw	t1, -848(s0)
		mul	t2, t0, t1
		sw	t2, -852(s0)
		lw	t0, -840(s0)
		lw	t1, -852(s0)
		add	t2, t0, t1
		sw	t2, -856(s0)
		lw	t1, -16(s0)
		sw	t1, -860(s0)
		lw	t0, -860(s0)
		addi	t1, t0, 24
		sw	t1, -864(s0)
		lw	t0, -864(s0)
		lw	t1, 0(t0)
		sw	t1, -868(s0)
		li	t0, 1
		sw	t0, -872(s0)
		li	t0, 24
		sw	t0, -876(s0)
		lw	t0, -872(s0)
		lw	t1, -876(s0)
		mul	t2, t0, t1
		sw	t2, -880(s0)
		lw	t0, -868(s0)
		lw	t1, -880(s0)
		add	t2, t0, t1
		sw	t2, -884(s0)
		lw	t0, -884(s0)
		lw	t1, 0(t0)
		sw	t1, -888(s0)
		lw	t0, -888(s0)
		lw	t1, -856(s0)
		sw	t0, 0(t1)
		lw	t1, -16(s0)
		sw	t1, -892(s0)
		lw	t0, -892(s0)
		addi	t1, t0, 24
		sw	t1, -896(s0)
		lw	t0, -896(s0)
		lw	t1, 0(t0)
		sw	t1, -900(s0)
		li	t0, 1
		sw	t0, -904(s0)
		li	t0, 24
		sw	t0, -908(s0)
		lw	t0, -904(s0)
		lw	t1, -908(s0)
		mul	t2, t0, t1
		sw	t2, -912(s0)
		lw	t0, -900(s0)
		lw	t1, -912(s0)
		add	t2, t0, t1
		sw	t2, -916(s0)
		lw	t0, -916(s0)
		lw	t1, 0(t0)
		sw	t1, -920(s0)
		li	t0, 0
		sw	t0, -924(s0)
		lw	t0, -920(s0)
		lw	t1, -924(s0)
		xor	t2, t0, t1
		sw	t2, -928(s0)
		lw	t0, -928(s0)
		sltiu	t1, t0, 1
		sw	t1, -928(s0)
		lw	t0, -928(s0)
		xori	t1, t0, 1
		sw	t1, -928(s0)
		lw	t0, -928(s0)
		bnez	t0, .eraseImpl_202
		j	.eraseImpl_211
.eraseImpl_202:
		lw	t1, -16(s0)
		sw	t1, -932(s0)
		lw	t0, -932(s0)
		addi	t1, t0, 24
		sw	t1, -936(s0)
		lw	t0, -936(s0)
		lw	t1, 0(t0)
		sw	t1, -940(s0)
		li	t0, 1
		sw	t0, -944(s0)
		li	t0, 24
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
		lw	t0, -960(s0)
		addi	t1, t0, 0
		sw	t1, -964(s0)
		lw	t1, -32(s0)
		sw	t1, -968(s0)
		lw	t0, -968(s0)
		lw	t1, -964(s0)
		sw	t0, 0(t1)
		j	.eraseImpl_211
.eraseImpl_211:
		lw	t1, -32(s0)
		sw	t1, -972(s0)
		lw	t0, -972(s0)
		addi	t1, t0, 32
		sw	t1, -976(s0)
		lw	t0, -976(s0)
		lw	t1, 0(t0)
		sw	t1, -980(s0)
		lw	t1, -16(s0)
		sw	t1, -984(s0)
		lw	t0, -984(s0)
		addi	t1, t0, 24
		sw	t1, -988(s0)
		lw	t0, -988(s0)
		lw	t1, 0(t0)
		sw	t1, -992(s0)
		li	t0, 0
		sw	t0, -996(s0)
		li	t0, 24
		sw	t0, -1000(s0)
		lw	t0, -996(s0)
		lw	t1, -1000(s0)
		mul	t2, t0, t1
		sw	t2, -1004(s0)
		lw	t0, -992(s0)
		lw	t1, -1004(s0)
		add	t2, t0, t1
		sw	t2, -1008(s0)
		lw	t0, -1008(s0)
		lw	t1, 0(t0)
		sw	t1, -1012(s0)
		lw	t0, -1012(s0)
		addi	t1, t0, 32
		sw	t1, -1016(s0)
		lw	t0, -1016(s0)
		lw	t1, 0(t0)
		sw	t1, -1020(s0)
		lw	t0, -980(s0)
		lw	t1, -1020(s0)
		xor	t2, t0, t1
		sw	t2, -1024(s0)
		lw	t0, -1024(s0)
		sltiu	t1, t0, 1
		sw	t1, -1024(s0)
		lw	t0, -1024(s0)
		xori	t1, t0, 1
		sw	t1, -1024(s0)
		lw	t0, -1024(s0)
		bnez	t0, .eraseImpl_223
		j	.eraseImpl_242
.eraseImpl_223:
		lw	t1, -32(s0)
		sw	t1, -1028(s0)
		lw	t0, -1028(s0)
		addi	t1, t0, 24
		sw	t1, -1032(s0)
		lw	t0, -1032(s0)
		lw	t1, 0(t0)
		sw	t1, -1036(s0)
		li	t0, 0
		sw	t0, -1040(s0)
		li	t0, 24
		sw	t0, -1044(s0)
		lw	t0, -1040(s0)
		lw	t1, -1044(s0)
		mul	t2, t0, t1
		sw	t2, -1048(s0)
		lw	t0, -1036(s0)
		lw	t1, -1048(s0)
		add	t2, t0, t1
		sw	t2, -1052(s0)
		lw	t1, -16(s0)
		sw	t1, -1056(s0)
		lw	t0, -1056(s0)
		addi	t1, t0, 24
		sw	t1, -1060(s0)
		lw	t0, -1060(s0)
		lw	t1, 0(t0)
		sw	t1, -1064(s0)
		li	t0, 0
		sw	t0, -1068(s0)
		li	t0, 24
		sw	t0, -1072(s0)
		lw	t0, -1068(s0)
		lw	t1, -1072(s0)
		mul	t2, t0, t1
		sw	t2, -1076(s0)
		lw	t0, -1064(s0)
		lw	t1, -1076(s0)
		add	t2, t0, t1
		sw	t2, -1080(s0)
		lw	t0, -1080(s0)
		lw	t1, 0(t0)
		sw	t1, -1084(s0)
		lw	t0, -1084(s0)
		lw	t1, -1052(s0)
		sw	t0, 0(t1)
		lw	t1, -16(s0)
		sw	t1, -1088(s0)
		lw	t0, -1088(s0)
		addi	t1, t0, 24
		sw	t1, -1092(s0)
		lw	t0, -1092(s0)
		lw	t1, 0(t0)
		sw	t1, -1096(s0)
		li	t0, 0
		sw	t0, -1100(s0)
		li	t0, 24
		sw	t0, -1104(s0)
		lw	t0, -1100(s0)
		lw	t1, -1104(s0)
		mul	t2, t0, t1
		sw	t2, -1108(s0)
		lw	t0, -1096(s0)
		lw	t1, -1108(s0)
		add	t2, t0, t1
		sw	t2, -1112(s0)
		lw	t0, -1112(s0)
		lw	t1, 0(t0)
		sw	t1, -1116(s0)
		lw	t0, -1116(s0)
		addi	t1, t0, 0
		sw	t1, -1120(s0)
		lw	t1, -32(s0)
		sw	t1, -1124(s0)
		lw	t0, -1124(s0)
		lw	t1, -1120(s0)
		sw	t0, 0(t1)
		j	.eraseImpl_242
.eraseImpl_242:
		li	t0, 1
		sw	t0, -1128(s0)
		lw	t0, -1128(s0)
		sw	t0, -12(s0)
		j	.eraseImplreturn_block
.eraseImplreturn_block:
		lw	t1, -12(s0)
		sw	t1, -1132(s0)
		lw	t0, -1132(s0)
		mv	a0, t0
		li	t0, 1136
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	erase
	.p2align	2
	.type	erase,@function
erase:
.erase_parameters:
		li	t0, 80
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
.erase:
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		lw	t1, my_root
		sw	t1, -24(s0)
		li	t0, 0
		sw	t0, -28(s0)
		lw	t0, -24(s0)
		lw	t1, -28(s0)
		xor	t2, t0, t1
		sw	t2, -32(s0)
		lw	t0, -32(s0)
		sltiu	t1, t0, 1
		sw	t1, -32(s0)
		lw	t0, -32(s0)
		bnez	t0, .erase_6
		j	.erase_7
.erase_6:
		li	t0, 0
		sw	t0, -36(s0)
		lw	t0, -36(s0)
		sw	t0, -12(s0)
		j	.erasereturn_block
.erase_7:
		lw	t1, my_root
		sw	t1, -40(s0)
		li	t0, 0
		sw	t0, -44(s0)
		li	t0, 1
		sw	t0, -48(s0)
		lw	t0, -44(s0)
		lw	t1, -48(s0)
		sub	t2, t0, t1
		sw	t2, -52(s0)
		lw	t1, -16(s0)
		sw	t1, -56(s0)
		lw	t0, -40(s0)
		mv	a0, t0
		li	t0, 0
		sw	t0, -60(s0)
		lw	t0, -60(s0)
		mv	a1, t0
		lw	t0, -52(s0)
		mv	a2, t0
		lw	t0, -56(s0)
		mv	a3, t0
		call	eraseImpl
		mv	t1, a0
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		sw	t0, -12(s0)
		j	.erasereturn_block
.erasereturn_block:
		lw	t1, -12(s0)
		sw	t1, -68(s0)
		lw	t0, -68(s0)
		mv	a0, t0
		li	t0, 80
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	printTree
	.p2align	2
	.type	printTree,@function
printTree:
.printTree_parameters:
		li	t0, 144
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -16(s0)
.printTree:
		lw	t0, -16(s0)
		sw	t0, -12(s0)
		lw	t1, -12(s0)
		sw	t1, -20(s0)
		li	t0, 0
		sw	t0, -24(s0)
		lw	t0, -20(s0)
		lw	t1, -24(s0)
		xor	t2, t0, t1
		sw	t2, -28(s0)
		lw	t0, -28(s0)
		sltiu	t1, t0, 1
		sw	t1, -28(s0)
		lw	t0, -28(s0)
		bnez	t0, .printTree_5
		j	.printTree_6
.printTree_5:
		j	.printTreereturn_block
.printTree_6:
		lw	t1, -12(s0)
		sw	t1, -32(s0)
		lw	t0, -32(s0)
		addi	t1, t0, 24
		sw	t1, -36(s0)
		lw	t0, -36(s0)
		lw	t1, 0(t0)
		sw	t1, -40(s0)
		li	t0, 0
		sw	t0, -44(s0)
		li	t0, 24
		sw	t0, -48(s0)
		lw	t0, -44(s0)
		lw	t1, -48(s0)
		mul	t2, t0, t1
		sw	t2, -52(s0)
		lw	t0, -40(s0)
		lw	t1, -52(s0)
		add	t2, t0, t1
		sw	t2, -56(s0)
		lw	t0, -56(s0)
		lw	t1, 0(t0)
		sw	t1, -60(s0)
		lw	t0, -60(s0)
		mv	a0, t0
		call	printTree
		lw	t1, -12(s0)
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		addi	t1, t0, 32
		sw	t1, -68(s0)
		lw	t0, -68(s0)
		lw	t1, 0(t0)
		sw	t1, -72(s0)
		lw	t0, -72(s0)
		mv	a0, t0
		call	toString
		mv	t1, a0
		sw	t1, -76(s0)
		la	t0, my_.str.0
		sw	t0, -80(s0)
		lw	t0, -76(s0)
		mv	a0, t0
		lw	t0, -80(s0)
		mv	a1, t0
		call	string_add
		mv	t1, a0
		sw	t1, -84(s0)
		lw	t1, -12(s0)
		sw	t1, -88(s0)
		lw	t0, -88(s0)
		addi	t1, t0, 36
		sw	t1, -92(s0)
		lw	t0, -92(s0)
		lw	t1, 0(t0)
		sw	t1, -96(s0)
		lw	t0, -96(s0)
		mv	a0, t0
		call	toString
		mv	t1, a0
		sw	t1, -100(s0)
		lw	t0, -84(s0)
		mv	a0, t0
		lw	t0, -100(s0)
		mv	a1, t0
		call	string_add
		mv	t1, a0
		sw	t1, -104(s0)
		lw	t0, -104(s0)
		mv	a0, t0
		call	println
		lw	t1, -12(s0)
		sw	t1, -108(s0)
		lw	t0, -108(s0)
		addi	t1, t0, 24
		sw	t1, -112(s0)
		lw	t0, -112(s0)
		lw	t1, 0(t0)
		sw	t1, -116(s0)
		li	t0, 1
		sw	t0, -120(s0)
		li	t0, 24
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
		lw	t1, 0(t0)
		sw	t1, -136(s0)
		lw	t0, -136(s0)
		mv	a0, t0
		call	printTree
		j	.printTreereturn_block
.printTreereturn_block:
		li	t0, 144
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	randInt31
	.p2align	2
	.type	randInt31,@function
randInt31:
.randInt31_parameters:
		li	t0, 160
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.randInt31:
		lw	t1, my_seed
		sw	t1, -20(s0)
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -24(s0)
		lw	t1, -16(s0)
		sw	t1, -28(s0)
		li	t0, 13
		sw	t0, -32(s0)
		lw	t0, -28(s0)
		lw	t1, -32(s0)
		sll	t2, t0, t1
		sw	t2, -36(s0)
		lw	t0, -24(s0)
		lw	t1, -36(s0)
		xor	t2, t0, t1
		sw	t2, -40(s0)
		lw	t0, -40(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -44(s0)
		li	t0, 1
		sw	t0, -48(s0)
		li	t0, 31
		sw	t0, -52(s0)
		lw	t0, -48(s0)
		lw	t1, -52(s0)
		sll	t2, t0, t1
		sw	t2, -56(s0)
		li	t0, -1
		sw	t0, -60(s0)
		lw	t0, -60(s0)
		lw	t1, -56(s0)
		xor	t2, t0, t1
		sw	t2, -64(s0)
		lw	t0, -44(s0)
		lw	t1, -64(s0)
		and	t2, t0, t1
		sw	t2, -68(s0)
		lw	t0, -68(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -72(s0)
		lw	t1, -16(s0)
		sw	t1, -76(s0)
		li	t0, 17
		sw	t0, -80(s0)
		lw	t0, -76(s0)
		lw	t1, -80(s0)
		sra	t2, t0, t1
		sw	t2, -84(s0)
		lw	t0, -72(s0)
		lw	t1, -84(s0)
		xor	t2, t0, t1
		sw	t2, -88(s0)
		lw	t0, -88(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -92(s0)
		lw	t1, -16(s0)
		sw	t1, -96(s0)
		li	t0, 5
		sw	t0, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		sll	t2, t0, t1
		sw	t2, -104(s0)
		lw	t0, -92(s0)
		lw	t1, -104(s0)
		xor	t2, t0, t1
		sw	t2, -108(s0)
		lw	t0, -108(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -112(s0)
		li	t0, 1
		sw	t0, -116(s0)
		li	t0, 31
		sw	t0, -120(s0)
		lw	t0, -116(s0)
		lw	t1, -120(s0)
		sll	t2, t0, t1
		sw	t2, -124(s0)
		li	t0, -1
		sw	t0, -128(s0)
		lw	t0, -128(s0)
		lw	t1, -124(s0)
		xor	t2, t0, t1
		sw	t2, -132(s0)
		lw	t0, -112(s0)
		lw	t1, -132(s0)
		and	t2, t0, t1
		sw	t2, -136(s0)
		lw	t0, -136(s0)
		sw	t0, -16(s0)
		lw	t1, -16(s0)
		sw	t1, -140(s0)
		lw	t0, -140(s0)
		lw	t1, -144(s0)
		sw	t0, my_seed, t1
		lw	t1, -16(s0)
		sw	t1, -148(s0)
		lw	t0, -148(s0)
		sw	t0, -12(s0)
		j	.randInt31return_block
.randInt31return_block:
		lw	t1, -12(s0)
		sw	t1, -152(s0)
		lw	t0, -152(s0)
		mv	a0, t0
		li	t0, 160
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	randOp
	.p2align	2
	.type	randOp,@function
randOp:
.randOp_parameters:
		li	t0, 48
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -20(s0)
.randOp:
		lw	t0, -20(s0)
		sw	t0, -16(s0)
		call	randInt31
		mv	t1, a0
		sw	t1, -24(s0)
		lw	t1, -16(s0)
		sw	t1, -28(s0)
		lw	t0, -24(s0)
		lw	t1, -28(s0)
		slt	t2, t0, t1
		sw	t2, -32(s0)
		lw	t0, -32(s0)
		bnez	t0, .randOp_7
		j	.randOp_8
.randOp_7:
		li	t0, 1
		sw	t0, -36(s0)
		lw	t0, -36(s0)
		sw	t0, -12(s0)
		j	.randOpreturn_block
.randOp_8:
		li	t0, 2
		sw	t0, -40(s0)
		lw	t0, -40(s0)
		sw	t0, -12(s0)
		j	.randOpreturn_block
.randOpreturn_block:
		lw	t1, -12(s0)
		sw	t1, -44(s0)
		lw	t0, -44(s0)
		mv	a0, t0
		li	t0, 48
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	generateOperations
	.p2align	2
	.type	generateOperations,@function
generateOperations:
.generateOperations_parameters:
		li	t0, 112
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t1, a0
		sw	t1, -28(s0)
		mv	t1, a1
		sw	t1, -32(s0)
.generateOperations:
		lw	t0, -28(s0)
		sw	t0, -12(s0)
		lw	t0, -32(s0)
		sw	t0, -16(s0)
		li	t0, 0
		sw	t0, -36(s0)
		lw	t0, -36(s0)
		sw	t0, -20(s0)
		j	.generateOperations_6
.generateOperations_6:
		lw	t1, -20(s0)
		sw	t1, -40(s0)
		lw	t1, -16(s0)
		sw	t1, -44(s0)
		lw	t0, -40(s0)
		lw	t1, -44(s0)
		slt	t2, t0, t1
		sw	t2, -48(s0)
		lw	t0, -48(s0)
		bnez	t0, .generateOperations_10
		j	.generateOperations_28
.generateOperations_10:
		call	randInt31
		mv	t1, a0
		sw	t1, -52(s0)
		lw	t1, my_MAX
		sw	t1, -56(s0)
		lw	t0, -52(s0)
		lw	t1, -56(s0)
		rem	t2, t0, t1
		sw	t2, -60(s0)
		lw	t0, -60(s0)
		sw	t0, -24(s0)
		lw	t1, -12(s0)
		sw	t1, -64(s0)
		lw	t0, -64(s0)
		mv	a0, t0
		call	randOp
		mv	t1, a0
		sw	t1, -68(s0)
		li	t0, 1
		sw	t0, -72(s0)
		lw	t0, -68(s0)
		lw	t1, -72(s0)
		xor	t2, t0, t1
		sw	t2, -76(s0)
		lw	t0, -76(s0)
		sltiu	t1, t0, 1
		sw	t1, -76(s0)
		lw	t0, -76(s0)
		bnez	t0, .generateOperations_18
		j	.generateOperations_21
.generateOperations_18:
		lw	t1, -24(s0)
		sw	t1, -80(s0)
		lw	t0, -80(s0)
		mv	a0, t0
		call	insert
		mv	t1, a0
		sw	t1, -84(s0)
		j	.generateOperations_24
.generateOperations_21:
		lw	t1, -24(s0)
		sw	t1, -88(s0)
		lw	t0, -88(s0)
		mv	a0, t0
		call	erase
		mv	t1, a0
		sw	t1, -92(s0)
		j	.generateOperations_24
.generateOperations_24:
		j	.generateOperations_25
.generateOperations_25:
		lw	t1, -20(s0)
		sw	t1, -96(s0)
		li	t0, 1
		sw	t0, -100(s0)
		lw	t0, -96(s0)
		lw	t1, -100(s0)
		add	t2, t0, t1
		sw	t2, -104(s0)
		lw	t0, -104(s0)
		sw	t0, -20(s0)
		j	.generateOperations_6
.generateOperations_28:
		j	.generateOperationsreturn_block
.generateOperationsreturn_block:
		li	t0, 112
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.section	.sbss
	.type	my_root,@object
	.globl	my_root
	.p2align	2
my_root:
	.word	0
	.size	my_root, 8

	.section	.rodata
	.type	my_.str.0,@object
my_.str.0:
	.asciz	":  "
	.size	my_.str.0, 3

	.section	.sbss
	.type	my_MAX,@object
	.globl	my_MAX
	.p2align	2
my_MAX:
	.word	128
	.size	my_MAX, 8

	.section	.sbss
	.type	my_MaxRandInt,@object
	.globl	my_MaxRandInt
	.p2align	2
my_MaxRandInt:
	.word	0
	.size	my_MaxRandInt, 8

	.section	.sbss
	.type	my_seed,@object
	.globl	my_seed
	.p2align	2
my_seed:
	.word	0
	.size	my_seed, 8



