	.text

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
.Edge:
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
.EdgeList:
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
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -20(s0)
		sw	s11, -24(s0)
		sw	s8, -12(s0)
		sw	s6, -16(s0)
.classEdgeList_init:
		mv	s6, a0
		mv	s1, a1
		mv	s11, a2
		mv	ra, s6
		addi	s8, ra, 0
		li	ra, 12
		mul	t0, s11, ra
		li	ra, 4
		add	a0, t0, ra
		call	malloc
		sw	s11, 0(a0)
		li	ra, 1
		li	t0, 4
		mul	ra, ra, t0
		add	ra, a0, ra
		sw	ra, 0(s8)
		mv	ra, s6
		addi	s8, ra, 8
		li	ra, 4
		mul	ra, s11, ra
		li	t0, 4
		add	a0, ra, t0
		call	malloc
		sw	s11, 0(a0)
		li	t0, 1
		li	ra, 4
		mul	ra, t0, ra
		add	ra, a0, ra
		sw	ra, 0(s8)
		addi	s8, s6, 16
		li	ra, 4
		mul	t0, s1, ra
		li	ra, 4
		add	a0, t0, ra
		call	malloc
		sw	s1, 0(a0)
		li	t0, 1
		li	ra, 4
		mul	ra, t0, ra
		add	ra, a0, ra
		sw	ra, 0(s8)
		li	t0, 0
		j	.classEdgeList_init_41
.classEdgeList_init_41:
		mv	ra, s11
		slt	ra, t0, ra
		bnez	ra, .classEdgeList_init_45
		j	.classEdgeList_init_55
.classEdgeList_init_45:
		mv	ra, s6
		addi	ra, ra, 8
		lw	t1, 0(ra)
		li	ra, 4
		mul	ra, t0, ra
		add	t1, t1, ra
		li	t2, 0
		li	ra, 1
		sub	ra, t2, ra
		sw	ra, 0(t1)
		j	.classEdgeList_init_52
.classEdgeList_init_52:
		li	ra, 1
		add	t0, t0, ra
		j	.classEdgeList_init_41
.classEdgeList_init_55:
		li	t0, 0
		j	.classEdgeList_init_56
.classEdgeList_init_56:
		slt	ra, t0, s1
		bnez	ra, .classEdgeList_init_60
		j	.classEdgeList_init_70
.classEdgeList_init_60:
		mv	ra, s6
		addi	ra, ra, 16
		lw	t1, 0(ra)
		li	ra, 4
		mul	ra, t0, ra
		add	t2, t1, ra
		li	t1, 0
		li	ra, 1
		sub	ra, t1, ra
		sw	ra, 0(t2)
		j	.classEdgeList_init_67
.classEdgeList_init_67:
		li	ra, 1
		add	t0, t0, ra
		j	.classEdgeList_init_56
.classEdgeList_init_70:
		addi	t0, s6, 24
		li	ra, 0
		sw	ra, 0(t0)
		j	.classEdgeList_initreturn_block
.classEdgeList_initreturn_block:
		lw	s8, -12(s0)
		lw	s6, -16(s0)
		lw	s1, -20(s0)
		lw	s11, -24(s0)
		li	t0, 32
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
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -20(s0)
		sw	s11, -16(s0)
		sw	s6, -28(s0)
		sw	s5, -12(s0)
		sw	s2, -24(s0)
		mv	s6, a0
.classEdgeList_addEdge:
		mv	s2, a1
		mv	s11, a2
		mv	s5, a3
		li	a0, 12
		call	malloc
		mv	s1, a0
		mv	a0, s1
		call	Edge
		addi	ra, s1, 0
		sw	s2, 0(ra)
		addi	ra, s1, 4
		sw	s11, 0(ra)
		addi	ra, s1, 8
		sw	s5, 0(ra)
		addi	ra, s6, 0
		lw	ra, 0(ra)
		addi	t0, s6, 24
		lw	t0, 0(t0)
		li	t1, 12
		mul	t0, t0, t1
		add	ra, ra, t0
		sw	s1, 0(ra)
		addi	ra, s6, 8
		lw	t1, 0(ra)
		addi	ra, s6, 24
		lw	t0, 0(ra)
		li	ra, 4
		mul	ra, t0, ra
		add	t1, t1, ra
		addi	ra, s6, 16
		lw	t0, 0(ra)
		li	ra, 4
		mul	ra, s2, ra
		add	ra, t0, ra
		lw	ra, 0(ra)
		sw	ra, 0(t1)
		addi	ra, s6, 16
		lw	t0, 0(ra)
		li	ra, 4
		mul	ra, s2, ra
		add	ra, t0, ra
		addi	t0, s6, 24
		lw	t0, 0(t0)
		sw	t0, 0(ra)
		addi	ra, s6, 24
		lw	t1, 0(ra)
		li	t0, 1
		add	t0, t1, t0
		sw	t0, 0(ra)
		j	.classEdgeList_addEdgereturn_block
.classEdgeList_addEdgereturn_block:
		lw	s6, -28(s0)
		lw	s5, -12(s0)
		lw	s2, -24(s0)
		lw	s1, -20(s0)
		lw	s11, -16(s0)
		li	t0, 32
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
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classEdgeList_nVertices:
		addi	ra, a0, 16
		lw	t0, 0(ra)
		li	t1, -1
		li	ra, 4
		mul	ra, t1, ra
		add	ra, t0, ra
		lw	a0, 0(ra)
		j	.classEdgeList_nVerticesreturn_block
.classEdgeList_nVerticesreturn_block:
		li	t0, 16
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
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classEdgeList_nEdges:
		addi	ra, a0, 0
		lw	ra, 0(ra)
		li	t1, -1
		li	t0, 4
		mul	t0, t1, t0
		add	ra, ra, t0
		lw	a0, 0(ra)
		j	.classEdgeList_nEdgesreturn_block
.classEdgeList_nEdgesreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	Array_Node
	.p2align	2
	.type	Array_Node,@function
Array_Node:
.Array_Node_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -12(s0)
.Array_Node:
		addi	t0, a0, 8
		li	ra, 0
		sw	ra, 0(t0)
		addi	s1, a0, 0
		li	ra, 16
		li	t0, 8
		mul	t0, ra, t0
		li	ra, 4
		add	a0, t0, ra
		call	malloc
		li	ra, 16
		sw	ra, 0(a0)
		li	t0, 1
		li	ra, 4
		mul	ra, t0, ra
		add	ra, a0, ra
		sw	ra, 0(s1)
		j	.Array_Nodereturn_block
.Array_Nodereturn_block:
		lw	s1, -12(s0)
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classArray_Node_push_back
	.p2align	2
	.type	classArray_Node_push_back,@function
classArray_Node_push_back:
.classArray_Node_push_back_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -16(s0)
		sw	s11, -12(s0)
.classArray_Node_push_back:
		mv	s1, a0
		mv	s11, a1
		mv	a0, s1
		call	classArray_Node_size
		addi	ra, s1, 0
		lw	t0, 0(ra)
		li	ra, -1
		li	t1, 4
		mul	ra, ra, t1
		add	ra, t0, ra
		lw	ra, 0(ra)
		xor	ra, a0, ra
		sltiu	ra, ra, 1
		bnez	ra, .classArray_Node_push_back_14
		j	.classArray_Node_push_back_17
.classArray_Node_push_back_14:
		mv	a0, s1
		call	classArray_Node_doubleStorage
		j	.classArray_Node_push_back_17
.classArray_Node_push_back_17:
		addi	ra, s1, 0
		lw	t1, 0(ra)
		addi	ra, s1, 8
		lw	t0, 0(ra)
		li	ra, 8
		mul	ra, t0, ra
		add	ra, t1, ra
		sw	s11, 0(ra)
		addi	ra, s1, 8
		lw	t1, 0(ra)
		li	t0, 1
		add	t0, t1, t0
		sw	t0, 0(ra)
		j	.classArray_Node_push_backreturn_block
.classArray_Node_push_backreturn_block:
		lw	s1, -16(s0)
		lw	s11, -12(s0)
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classArray_Node_pop_back
	.p2align	2
	.type	classArray_Node_pop_back,@function
classArray_Node_pop_back:
.classArray_Node_pop_back_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classArray_Node_pop_back:
		addi	ra, a0, 8
		lw	t1, 0(ra)
		li	t0, -1
		add	t0, t1, t0
		sw	t0, 0(ra)
		addi	ra, a0, 0
		lw	ra, 0(ra)
		addi	t0, a0, 8
		lw	t0, 0(t0)
		li	t1, 8
		mul	t0, t0, t1
		add	ra, ra, t0
		lw	a0, 0(ra)
		j	.classArray_Node_pop_backreturn_block
.classArray_Node_pop_backreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classArray_Node_back
	.p2align	2
	.type	classArray_Node_back,@function
classArray_Node_back:
.classArray_Node_back_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classArray_Node_back:
		addi	ra, a0, 0
		lw	t0, 0(ra)
		addi	ra, a0, 8
		lw	t1, 0(ra)
		li	ra, 1
		sub	t1, t1, ra
		li	ra, 8
		mul	ra, t1, ra
		add	ra, t0, ra
		lw	a0, 0(ra)
		j	.classArray_Node_backreturn_block
.classArray_Node_backreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classArray_Node_front
	.p2align	2
	.type	classArray_Node_front,@function
classArray_Node_front:
.classArray_Node_front_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classArray_Node_front:
		addi	ra, a0, 0
		lw	ra, 0(ra)
		li	t1, 0
		li	t0, 8
		mul	t0, t1, t0
		add	ra, ra, t0
		lw	a0, 0(ra)
		j	.classArray_Node_frontreturn_block
.classArray_Node_frontreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classArray_Node_size
	.p2align	2
	.type	classArray_Node_size,@function
classArray_Node_size:
.classArray_Node_size_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classArray_Node_size:
		addi	ra, a0, 8
		lw	a0, 0(ra)
		j	.classArray_Node_sizereturn_block
.classArray_Node_sizereturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classArray_Node_resize
	.p2align	2
	.type	classArray_Node_resize,@function
classArray_Node_resize:
.classArray_Node_resize_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -12(s0)
		sw	s11, -16(s0)
		mv	s1, a0
		mv	s11, a1
.classArray_Node_resize:
		j	.classArray_Node_resize_5
.classArray_Node_resize_5:
		addi	ra, s1, 0
		lw	t1, 0(ra)
		li	t0, -1
		li	ra, 4
		mul	ra, t0, ra
		add	ra, t1, ra
		lw	ra, 0(ra)
		slt	ra, ra, s11
		bnez	ra, .classArray_Node_resize_14
		j	.classArray_Node_resize_17
.classArray_Node_resize_14:
		mv	a0, s1
		call	classArray_Node_doubleStorage
		j	.classArray_Node_resize_5
.classArray_Node_resize_17:
		addi	ra, s1, 8
		sw	s11, 0(ra)
		j	.classArray_Node_resizereturn_block
.classArray_Node_resizereturn_block:
		lw	s1, -12(s0)
		lw	s11, -16(s0)
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classArray_Node_get
	.p2align	2
	.type	classArray_Node_get,@function
classArray_Node_get:
.classArray_Node_get_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classArray_Node_get:
		addi	ra, a0, 0
		lw	t0, 0(ra)
		li	ra, 8
		mul	ra, a1, ra
		add	ra, t0, ra
		lw	a0, 0(ra)
		j	.classArray_Node_getreturn_block
.classArray_Node_getreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classArray_Node_set
	.p2align	2
	.type	classArray_Node_set,@function
classArray_Node_set:
.classArray_Node_set_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classArray_Node_set:
		addi	ra, a0, 0
		lw	ra, 0(ra)
		li	t0, 8
		mul	t0, a1, t0
		add	ra, ra, t0
		sw	a2, 0(ra)
		j	.classArray_Node_setreturn_block
.classArray_Node_setreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classArray_Node_swap
	.p2align	2
	.type	classArray_Node_swap,@function
classArray_Node_swap:
.classArray_Node_swap_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classArray_Node_swap:
		addi	ra, a0, 0
		lw	t0, 0(ra)
		li	ra, 8
		mul	ra, a1, ra
		add	ra, t0, ra
		lw	ra, 0(ra)
		addi	t0, a0, 0
		lw	t1, 0(t0)
		li	t0, 8
		mul	t0, a1, t0
		add	t2, t1, t0
		addi	t0, a0, 0
		lw	t1, 0(t0)
		li	t0, 8
		mul	t0, a2, t0
		add	t0, t1, t0
		lw	t0, 0(t0)
		sw	t0, 0(t2)
		addi	t0, a0, 0
		lw	t0, 0(t0)
		li	t1, 8
		mul	t1, a2, t1
		add	t0, t0, t1
		sw	ra, 0(t0)
		j	.classArray_Node_swapreturn_block
.classArray_Node_swapreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classArray_Node_doubleStorage
	.p2align	2
	.type	classArray_Node_doubleStorage,@function
classArray_Node_doubleStorage:
.classArray_Node_doubleStorage_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -28(s0)
		sw	s11, -24(s0)
		sw	s9, -12(s0)
		sw	s7, -16(s0)
		sw	s5, -20(s0)
.classArray_Node_doubleStorage:
		mv	s1, a0
		addi	ra, s1, 0
		lw	s7, 0(ra)
		addi	ra, s1, 8
		lw	s5, 0(ra)
		addi	s11, s1, 0
		li	t0, -1
		li	ra, 4
		mul	ra, t0, ra
		add	ra, s7, ra
		lw	ra, 0(ra)
		li	t0, 2
		mul	s9, ra, t0
		li	ra, 8
		mul	t0, s9, ra
		li	ra, 4
		add	a0, t0, ra
		call	malloc
		sw	s9, 0(a0)
		li	ra, 1
		li	t0, 4
		mul	ra, ra, t0
		add	ra, a0, ra
		sw	ra, 0(s11)
		addi	ra, s1, 8
		li	t0, 0
		sw	t0, 0(ra)
		j	.classArray_Node_doubleStorage_29
.classArray_Node_doubleStorage_29:
		addi	ra, s1, 8
		lw	ra, 0(ra)
		xor	ra, ra, s5
		sltiu	ra, ra, 1
		xori	ra, ra, 1
		bnez	ra, .classArray_Node_doubleStorage_35
		j	.classArray_Node_doubleStorage_55
.classArray_Node_doubleStorage_35:
		addi	ra, s1, 0
		lw	t0, 0(ra)
		addi	ra, s1, 8
		lw	t1, 0(ra)
		li	ra, 8
		mul	ra, t1, ra
		add	t1, t0, ra
		addi	ra, s1, 8
		lw	t0, 0(ra)
		li	ra, 8
		mul	ra, t0, ra
		add	ra, s7, ra
		lw	ra, 0(ra)
		sw	ra, 0(t1)
		j	.classArray_Node_doubleStorage_50
.classArray_Node_doubleStorage_50:
		addi	t1, s1, 8
		lw	t0, 0(t1)
		li	ra, 1
		add	ra, t0, ra
		sw	ra, 0(t1)
		j	.classArray_Node_doubleStorage_29
.classArray_Node_doubleStorage_55:
		j	.classArray_Node_doubleStoragereturn_block
.classArray_Node_doubleStoragereturn_block:
		lw	s9, -12(s0)
		lw	s7, -16(s0)
		lw	s5, -20(s0)
		lw	s1, -28(s0)
		lw	s11, -24(s0)
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	Heap_Node
	.p2align	2
	.type	Heap_Node,@function
Heap_Node:
.Heap_Node_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -12(s0)
		sw	s11, -16(s0)
.Heap_Node:
		addi	s11, a0, 0
		li	a0, 12
		call	malloc
		mv	s1, a0
		mv	a0, s1
		call	Array_Node
		sw	s1, 0(s11)
		j	.Heap_Nodereturn_block
.Heap_Nodereturn_block:
		lw	s1, -12(s0)
		lw	s11, -16(s0)
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classHeap_Node_push
	.p2align	2
	.type	classHeap_Node_push,@function
classHeap_Node_push:
.classHeap_Node_push_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -12(s0)
		sw	s11, -24(s0)
		sw	s8, -20(s0)
		sw	s7, -16(s0)
.classHeap_Node_push:
		mv	s8, a0
		addi	ra, s8, 0
		lw	a0, 0(ra)
		call	classArray_Node_push_back
		mv	a0, s8
		call	classHeap_Node_size
		li	ra, 1
		sub	s1, a0, ra
		j	.classHeap_Node_push_15
.classHeap_Node_push_15:
		li	ra, 0
		slt	ra, ra, s1
		bnez	ra, .classHeap_Node_push_18
		j	.classHeap_Node_push_45
.classHeap_Node_push_18:
		mv	a0, s8
		mv	a1, s1
		call	classHeap_Node_pnt
		mv	s7, a0
		addi	ra, s8, 0
		lw	a0, 0(ra)
		mv	a1, s7
		call	classArray_Node_get
		call	classNode_key_
		mv	s11, a0
		addi	ra, s8, 0
		lw	a0, 0(ra)
		mv	a1, s1
		call	classArray_Node_get
		call	classNode_key_
		slt	ra, s11, a0
		xori	ra, ra, 1
		bnez	ra, .classHeap_Node_push_36
		j	.classHeap_Node_push_37
.classHeap_Node_push_36:
		j	.classHeap_Node_push_45
.classHeap_Node_push_37:
		addi	ra, s8, 0
		lw	a0, 0(ra)
		mv	a1, s7
		mv	a2, s1
		call	classArray_Node_swap
		mv	s1, s7
		j	.classHeap_Node_push_15
.classHeap_Node_push_45:
		j	.classHeap_Node_pushreturn_block
.classHeap_Node_pushreturn_block:
		lw	s8, -20(s0)
		lw	s7, -16(s0)
		lw	s1, -12(s0)
		lw	s11, -24(s0)
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classHeap_Node_pop
	.p2align	2
	.type	classHeap_Node_pop,@function
classHeap_Node_pop:
.classHeap_Node_pop_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -12(s0)
		sw	s8, -16(s0)
		sw	s4, -20(s0)
		mv	s1, a0
.classHeap_Node_pop:
		addi	ra, s1, 0
		lw	a0, 0(ra)
		call	classArray_Node_front
		mv	s4, a0
		addi	ra, s1, 0
		lw	s8, 0(ra)
		mv	a0, s1
		call	classHeap_Node_size
		li	ra, 1
		sub	a2, a0, ra
		mv	a0, s8
		li	a1, 0
		call	classArray_Node_swap
		addi	ra, s1, 0
		lw	a0, 0(ra)
		call	classArray_Node_pop_back
		mv	a0, s1
		li	a1, 0
		call	classHeap_Node_maxHeapify
		mv	a0, s4
		j	.classHeap_Node_popreturn_block
.classHeap_Node_popreturn_block:
		lw	s8, -16(s0)
		lw	s4, -20(s0)
		lw	s1, -12(s0)
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classHeap_Node_top
	.p2align	2
	.type	classHeap_Node_top,@function
classHeap_Node_top:
.classHeap_Node_top_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classHeap_Node_top:
		addi	ra, a0, 0
		lw	a0, 0(ra)
		call	classArray_Node_front
		j	.classHeap_Node_topreturn_block
.classHeap_Node_topreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classHeap_Node_size
	.p2align	2
	.type	classHeap_Node_size,@function
classHeap_Node_size:
.classHeap_Node_size_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classHeap_Node_size:
		addi	ra, a0, 0
		lw	a0, 0(ra)
		call	classArray_Node_size
		j	.classHeap_Node_sizereturn_block
.classHeap_Node_sizereturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classHeap_Node_lchild
	.p2align	2
	.type	classHeap_Node_lchild,@function
classHeap_Node_lchild:
.classHeap_Node_lchild_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classHeap_Node_lchild:
		li	ra, 2
		mul	t0, a1, ra
		li	ra, 1
		add	a0, t0, ra
		j	.classHeap_Node_lchildreturn_block
.classHeap_Node_lchildreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classHeap_Node_rchild
	.p2align	2
	.type	classHeap_Node_rchild,@function
classHeap_Node_rchild:
.classHeap_Node_rchild_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classHeap_Node_rchild:
		li	ra, 2
		mul	t0, a1, ra
		li	ra, 2
		add	a0, t0, ra
		j	.classHeap_Node_rchildreturn_block
.classHeap_Node_rchildreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classHeap_Node_pnt
	.p2align	2
	.type	classHeap_Node_pnt,@function
classHeap_Node_pnt:
.classHeap_Node_pnt_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classHeap_Node_pnt:
		li	ra, 1
		sub	ra, a1, ra
		li	t0, 2
		div	a0, ra, t0
		j	.classHeap_Node_pntreturn_block
.classHeap_Node_pntreturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classHeap_Node_maxHeapify
	.p2align	2
	.type	classHeap_Node_maxHeapify,@function
classHeap_Node_maxHeapify:
.classHeap_Node_maxHeapify_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -16(s0)
		sw	s11, -12(s0)
		sw	s10, -32(s0)
		sw	s9, -20(s0)
		sw	s5, -24(s0)
		sw	s4, -28(s0)
.classHeap_Node_maxHeapify:
		mv	s9, a0
		mv	s10, a1
		mv	a0, s9
		mv	a1, s10
		call	classHeap_Node_lchild
		mv	s1, a0
		mv	a0, s9
		mv	a1, s10
		call	classHeap_Node_rchild
		mv	s5, a0
		mv	s4, s10
		mv	a0, s9
		call	classHeap_Node_size
		slt	t0, s1, a0
		li	ra, 0
		bnez	t0, .classHeap_Node_maxHeapify_18AND_AND_TRUE
		j	.classHeap_Node_maxHeapify_18AND_AND_OUT
.classHeap_Node_maxHeapify_18AND_AND_TRUE:
		addi	ra, s9, 0
		lw	a0, 0(ra)
		mv	a1, s1
		call	classArray_Node_get
		call	classNode_key_
		mv	s11, a0
		addi	ra, s9, 0
		lw	a0, 0(ra)
		mv	a1, s4
		call	classArray_Node_get
		call	classNode_key_
		slt	ra, a0, s11
		j	.classHeap_Node_maxHeapify_18AND_AND_OUT
.classHeap_Node_maxHeapify_18AND_AND_OUT:
		bnez	ra, .classHeap_Node_maxHeapify_33
		j	.classHeap_Node_maxHeapify_35
.classHeap_Node_maxHeapify_33:
		mv	s4, s1
		j	.classHeap_Node_maxHeapify_35
.classHeap_Node_maxHeapify_35:
		mv	a0, s9
		call	classHeap_Node_size
		slt	t0, s5, a0
		li	ra, 0
		bnez	t0, .classHeap_Node_maxHeapify_39AND_AND_TRUE
		j	.classHeap_Node_maxHeapify_39AND_AND_OUT
.classHeap_Node_maxHeapify_39AND_AND_TRUE:
		addi	ra, s9, 0
		lw	a0, 0(ra)
		mv	a1, s5
		call	classArray_Node_get
		call	classNode_key_
		mv	s1, a0
		addi	ra, s9, 0
		lw	a0, 0(ra)
		mv	a1, s4
		call	classArray_Node_get
		call	classNode_key_
		slt	ra, a0, s1
		j	.classHeap_Node_maxHeapify_39AND_AND_OUT
.classHeap_Node_maxHeapify_39AND_AND_OUT:
		bnez	ra, .classHeap_Node_maxHeapify_54
		j	.classHeap_Node_maxHeapify_56
.classHeap_Node_maxHeapify_54:
		mv	s4, s5
		j	.classHeap_Node_maxHeapify_56
.classHeap_Node_maxHeapify_56:
		xor	ra, s4, s10
		sltiu	ra, ra, 1
		bnez	ra, .classHeap_Node_maxHeapify_60
		j	.classHeap_Node_maxHeapify_61
.classHeap_Node_maxHeapify_60:
		j	.classHeap_Node_maxHeapifyreturn_block
.classHeap_Node_maxHeapify_61:
		addi	ra, s9, 0
		lw	a0, 0(ra)
		mv	a1, s10
		mv	a2, s4
		call	classArray_Node_swap
		mv	a0, s9
		mv	a1, s4
		call	classHeap_Node_maxHeapify
		j	.classHeap_Node_maxHeapifyreturn_block
.classHeap_Node_maxHeapifyreturn_block:
		lw	s10, -32(s0)
		lw	s9, -20(s0)
		lw	s5, -24(s0)
		lw	s4, -28(s0)
		lw	s1, -16(s0)
		lw	s11, -12(s0)
		li	t0, 32
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
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -20(s0)
		sw	s8, -12(s0)
		sw	s3, -16(s0)
.main:
		li	a0, 0
		call	init
		li	s3, 0
		j	.main_5
.main_5:
		lw	ra, my_n
		slt	ra, s3, ra
		bnez	ra, .main_9
		j	.main_48
.main_9:
		mv	a0, s3
		call	dijkstra
		mv	s1, a0
		li	s8, 0
		j	.main_14
.main_14:
		lw	ra, my_n
		slt	ra, s8, ra
		bnez	ra, .main_18
		j	.main_42
.main_18:
		li	ra, 4
		mul	ra, s8, ra
		add	ra, s1, ra
		lw	t0, 0(ra)
		lw	ra, my_INF
		xor	ra, t0, ra
		sltiu	ra, ra, 1
		bnez	ra, .main_25
		j	.main_28
.main_25:
		la	a0, my_.str.0
		call	print
		j	.main_36
.main_28:
		li	ra, 4
		mul	ra, s8, ra
		add	ra, s1, ra
		lw	a0, 0(ra)
		call	toString
		call	print
		j	.main_36
.main_36:
		la	a0, my_.str.1
		call	print
		j	.main_39
.main_39:
		li	ra, 1
		add	s8, s8, ra
		j	.main_14
.main_42:
		la	a0, my_.str.2
		call	println
		j	.main_45
.main_45:
		li	ra, 1
		add	s3, s3, ra
		j	.main_5
.main_48:
		li	a0, 0
		j	.mainreturn_block
.mainreturn_block:
		lw	s8, -12(s0)
		lw	s3, -16(s0)
		lw	s1, -20(s0)
		li	t0, 32
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
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -20(s0)
		mv	ra, s11
		sw	ra, -12(s0)
		sw	s6, -16(s0)
.init:
		call	getInt
		sw	a0, my_n, s11
		call	getInt
		sw	a0, my_m, s11
		li	a0, 28
		call	malloc
		mv	s1, a0
		mv	a0, s1
		call	EdgeList
		sw	s1, my_g, s11
		lw	a0, my_g
		lw	a1, my_n
		lw	a2, my_m
		call	classEdgeList_init
		li	s1, 0
		j	.init_11
.init_11:
		lw	ra, my_m
		slt	ra, s1, ra
		bnez	ra, .init_15
		j	.init_30
.init_15:
		call	getInt
		mv	s11, a0
		call	getInt
		mv	s6, a0
		call	getInt
		mv	a3, a0
		lw	a0, my_g
		mv	a2, s6
		mv	a1, s11
		call	classEdgeList_addEdge
		j	.init_27
.init_27:
		li	ra, 1
		add	s1, s1, ra
		j	.init_11
.init_30:
		j	.initreturn_block
.initreturn_block:
		lw	s6, -16(s0)
		lw	s1, -20(s0)
		lw	s11, -12(s0)
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

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
.Node:
		j	.Nodereturn_block
.Nodereturn_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classNode_key_
	.p2align	2
	.type	classNode_key_,@function
classNode_key_:
.classNode_key__parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
.classNode_key_:
		addi	ra, a0, 4
		lw	ra, 0(ra)
		li	t0, 0
		sub	a0, t0, ra
		j	.classNode_key_return_block
.classNode_key_return_block:
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	dijkstra
	.p2align	2
	.type	dijkstra,@function
dijkstra:
.dijkstra_parameters:
		li	t0, 48
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		sw	s1, -24(s0)
		sw	s11, -16(s0)
		sw	s9, -20(s0)
		sw	s6, -12(s0)
		sw	s5, -36(s0)
		sw	s4, -28(s0)
		sw	s2, -32(s0)
.dijkstra:
		mv	s2, a0
		lw	s1, my_n
		li	ra, 4
		mul	ra, s1, ra
		li	t0, 4
		add	a0, ra, t0
		call	malloc
		sw	s1, 0(a0)
		li	ra, 1
		li	t0, 4
		mul	ra, ra, t0
		add	s6, a0, ra
		lw	s1, my_n
		li	ra, 4
		mul	ra, s1, ra
		li	t0, 4
		add	a0, ra, t0
		call	malloc
		sw	s1, 0(a0)
		li	ra, 1
		li	t0, 4
		mul	ra, ra, t0
		add	s1, a0, ra
		li	ra, 0
		j	.dijkstra_25
.dijkstra_25:
		lw	t0, my_n
		slt	t0, ra, t0
		bnez	t0, .dijkstra_29
		j	.dijkstra_40
.dijkstra_29:
		li	t0, 4
		mul	t0, ra, t0
		add	t0, s1, t0
		lw	t1, my_INF
		sw	t1, 0(t0)
		li	t0, 4
		mul	t0, ra, t0
		add	t0, s6, t0
		li	t1, 0
		sw	t1, 0(t0)
		j	.dijkstra_37
.dijkstra_37:
		li	t0, 1
		add	ra, ra, t0
		j	.dijkstra_25
.dijkstra_40:
		li	ra, 4
		mul	ra, s2, ra
		add	ra, s1, ra
		li	t0, 0
		sw	t0, 0(ra)
		li	a0, 8
		call	malloc
		mv	s4, a0
		mv	a0, s4
		call	Heap_Node
		li	a0, 8
		call	malloc
		mv	s5, a0
		mv	a0, s5
		call	Node
		addi	t0, s5, 4
		li	ra, 0
		sw	ra, 0(t0)
		addi	ra, s5, 0
		sw	s2, 0(ra)
		mv	a0, s4
		mv	a1, s5
		call	classHeap_Node_push
		j	.dijkstra_61
.dijkstra_61:
		mv	a0, s4
		call	classHeap_Node_size
		li	ra, 0
		xor	ra, a0, ra
		sltiu	ra, ra, 1
		xori	ra, ra, 1
		bnez	ra, .dijkstra_65
		j	.dijkstra_157
.dijkstra_65:
		mv	a0, s4
		call	classHeap_Node_pop
		mv	a1, a0
		addi	ra, a1, 0
		lw	s2, 0(ra)
		li	ra, 4
		mul	ra, s2, ra
		add	ra, s6, ra
		lw	ra, 0(ra)
		li	t0, 1
		xor	ra, ra, t0
		sltiu	ra, ra, 1
		bnez	ra, .dijkstra_79
		j	.dijkstra_80
.dijkstra_79:
		j	.dijkstra_61
.dijkstra_80:
		li	ra, 4
		mul	ra, s2, ra
		add	t0, s6, ra
		li	ra, 1
		sw	ra, 0(t0)
		lw	ra, my_g
		addi	ra, ra, 16
		lw	t0, 0(ra)
		li	ra, 4
		mul	ra, s2, ra
		add	ra, t0, ra
		lw	s9, 0(ra)
		j	.dijkstra_91
.dijkstra_91:
		li	t0, 0
		li	ra, 1
		sub	ra, t0, ra
		xor	ra, s9, ra
		sltiu	ra, ra, 1
		xori	ra, ra, 1
		bnez	ra, .dijkstra_95
		j	.dijkstra_156
.dijkstra_95:
		lw	ra, my_g
		addi	ra, ra, 0
		lw	t0, 0(ra)
		li	ra, 12
		mul	ra, s9, ra
		add	ra, t0, ra
		lw	ra, 0(ra)
		addi	ra, ra, 4
		lw	s5, 0(ra)
		lw	ra, my_g
		addi	ra, ra, 0
		lw	t0, 0(ra)
		li	ra, 12
		mul	ra, s9, ra
		add	ra, t0, ra
		lw	ra, 0(ra)
		addi	ra, ra, 8
		lw	ra, 0(ra)
		li	t0, 4
		mul	t0, s2, t0
		add	t0, s1, t0
		lw	t0, 0(t0)
		add	ra, t0, ra
		li	t0, 4
		mul	t0, s5, t0
		add	t0, s1, t0
		lw	t0, 0(t0)
		slt	t0, ra, t0
		xori	t0, t0, 1
		bnez	t0, .dijkstra_127
		j	.dijkstra_128
.dijkstra_127:
		j	.dijkstra_149
.dijkstra_128:
		li	t0, 4
		mul	t0, s5, t0
		add	t0, s1, t0
		sw	ra, 0(t0)
		li	a0, 8
		call	malloc
		mv	s11, a0
		mv	a0, s11
		call	Node
		mv	a1, s11
		addi	ra, a1, 0
		sw	s5, 0(ra)
		addi	t0, a1, 4
		li	ra, 4
		mul	ra, s5, ra
		add	ra, s1, ra
		lw	ra, 0(ra)
		sw	ra, 0(t0)
		mv	a0, s4
		call	classHeap_Node_push
		j	.dijkstra_149
.dijkstra_149:
		lw	ra, my_g
		addi	ra, ra, 8
		lw	ra, 0(ra)
		li	t0, 4
		mul	t0, s9, t0
		add	ra, ra, t0
		lw	s9, 0(ra)
		j	.dijkstra_91
.dijkstra_156:
		j	.dijkstra_61
.dijkstra_157:
		mv	a0, s1
		j	.dijkstrareturn_block
.dijkstrareturn_block:
		lw	s11, -16(s0)
		lw	s9, -20(s0)
		lw	s6, -12(s0)
		lw	s5, -36(s0)
		lw	s4, -28(s0)
		lw	s2, -32(s0)
		lw	s1, -24(s0)
		li	t0, 48
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
	.type	my_.str.0,@object
my_.str.0:
	.asciz	"-1 "
	.size	my_.str.0, 3

	.section	.rodata
	.type	my_.str.1,@object
my_.str.1:
	.asciz	"  "
	.size	my_.str.1, 2

	.section	.rodata
	.type	my_.str.2,@object
my_.str.2:
	.asciz	" "
	.size	my_.str.2, 1


