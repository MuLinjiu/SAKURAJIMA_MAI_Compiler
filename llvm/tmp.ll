	.text

	.globl	Slice_int
	.p2align	2
	.type	Slice_int,@function
Slice_int:
.Slice_int_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	ra, s1
		mv	ra, s11
		mv	ra, s10
		mv	ra, s9
		mv	ra, s8
		mv	ra, s7
		mv	ra, s6
		mv	ra, s5
		mv	ra, s4
		mv	ra, s3
		mv	ra, s2
		mv	ra, a0
.Slice_int:
		sw	ra, -16(s0)
		j	.Slice_intreturn_block
.Slice_intreturn_block:
		mv	s10, ra
		mv	s9, ra
		mv	s8, ra
		mv	s7, ra
		mv	s6, ra
		mv	s5, ra
		mv	s4, ra
		mv	s3, ra
		mv	s2, ra
		mv	s1, ra
		mv	s11, ra
		li	t0, 16
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classSlice_int_init
	.p2align	2
	.type	classSlice_int_init,@function
classSlice_int_init:
.classSlice_int_init_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	ra, s1
		mv	ra, s11
		mv	ra, s10
		mv	ra, s9
		mv	ra, s8
		mv	ra, s7
		mv	ra, s6
		mv	ra, s5
		mv	ra, s4
		mv	ra, s3
		mv	ra, s2
		mv	ra, a0
		mv	ra, a1
.classSlice_int_init:
		sw	ra, -16(s0)
		sw	ra, -24(s0)
		lw	t0, -16(s0)
		addi	t1, t0, 0
		lw	t0, -24(s0)
		sw	t0, 0(t1)
		lw	t0, -16(s0)
		addi	t1, t0, 8
		li	t0, 0
		sw	t0, 0(t1)
		lw	t0, -16(s0)
		addi	t2, t0, 12
		lw	a0, -24(s0)
		li	t0, -1
		li	t1, 4
		mul	t0, t0, t1
		add	t0, a0, t0
		lw	t0, 0(t0)
		sw	t0, 0(t2)
		j	.classSlice_int_initreturn_block
.classSlice_int_initreturn_block:
		mv	s10, ra
		mv	s9, ra
		mv	s8, ra
		mv	s7, ra
		mv	s6, ra
		mv	s5, ra
		mv	s4, ra
		mv	s3, ra
		mv	s2, ra
		mv	s1, ra
		mv	s11, ra
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classSlice_int_size
	.p2align	2
	.type	classSlice_int_size,@function
classSlice_int_size:
.classSlice_int_size_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	t0, s1
		mv	t0, s11
		mv	t0, s10
		mv	t0, s9
		mv	t0, s8
		mv	t0, s7
		mv	t0, s6
		mv	t0, s5
		mv	t0, s4
		mv	t0, s3
		mv	t0, s2
		mv	ra, a0
.classSlice_int_size:
		sw	ra, -20(s0)
		lw	ra, -20(s0)
		addi	ra, ra, 12
		lw	t1, 0(ra)
		lw	ra, -20(s0)
		addi	ra, ra, 8
		lw	ra, 0(ra)
		sub	ra, t1, ra
		sw	ra, -12(s0)
		j	.classSlice_int_sizereturn_block
.classSlice_int_sizereturn_block:
		lw	ra, -12(s0)
		mv	s11, t0
		mv	s10, t0
		mv	s9, t0
		mv	s8, t0
		mv	s7, t0
		mv	s6, t0
		mv	s5, t0
		mv	s4, t0
		mv	s3, t0
		mv	s2, t0
		mv	s1, t0
		mv	a0, ra
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classSlice_int_get
	.p2align	2
	.type	classSlice_int_get,@function
classSlice_int_get:
.classSlice_int_get_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	ra, s1
		mv	ra, s11
		mv	ra, s10
		mv	ra, s9
		mv	ra, s8
		mv	ra, s7
		mv	ra, s6
		mv	ra, s5
		mv	ra, s4
		mv	ra, s3
		mv	ra, s2
		mv	ra, a0
		mv	ra, a1
.classSlice_int_get:
		sw	ra, -20(s0)
		sw	ra, -24(s0)
		lw	t0, -20(s0)
		addi	t0, t0, 0
		lw	t1, 0(t0)
		lw	t0, -20(s0)
		addi	t0, t0, 8
		lw	t0, 0(t0)
		lw	t2, -24(s0)
		add	t0, t0, t2
		li	t2, 4
		mul	t0, t0, t2
		add	t0, t1, t0
		lw	t0, 0(t0)
		sw	t0, -12(s0)
		j	.classSlice_int_getreturn_block
.classSlice_int_getreturn_block:
		lw	t0, -12(s0)
		mv	s11, ra
		mv	s10, ra
		mv	s9, ra
		mv	s8, ra
		mv	s7, ra
		mv	s6, ra
		mv	s5, ra
		mv	s4, ra
		mv	s3, ra
		mv	s2, ra
		mv	s1, ra
		mv	a0, t0
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classSlice_int_set
	.p2align	2
	.type	classSlice_int_set,@function
classSlice_int_set:
.classSlice_int_set_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	ra, s1
		mv	ra, s11
		mv	ra, s10
		mv	ra, s9
		mv	ra, s8
		mv	ra, s7
		mv	ra, s6
		mv	ra, s5
		mv	ra, s4
		mv	ra, s3
		mv	ra, s2
		mv	ra, a0
		mv	ra, a1
		mv	ra, a2
.classSlice_int_set:
		sw	ra, -16(s0)
		sw	ra, -20(s0)
		sw	ra, -24(s0)
		lw	t0, -16(s0)
		addi	t0, t0, 0
		lw	t2, 0(t0)
		lw	t0, -16(s0)
		addi	t0, t0, 8
		lw	t0, 0(t0)
		lw	t1, -20(s0)
		add	t0, t0, t1
		li	t1, 4
		mul	t0, t0, t1
		add	t1, t2, t0
		lw	t0, -24(s0)
		sw	t0, 0(t1)
		j	.classSlice_int_setreturn_block
.classSlice_int_setreturn_block:
		mv	s10, ra
		mv	s9, ra
		mv	s8, ra
		mv	s7, ra
		mv	s6, ra
		mv	s5, ra
		mv	s4, ra
		mv	s3, ra
		mv	s2, ra
		mv	s1, ra
		mv	s11, ra
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classSlice_int_slice
	.p2align	2
	.type	classSlice_int_slice,@function
classSlice_int_slice:
.classSlice_int_slice_parameters:
		li	t0, 64
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	s1, s11
		mv	s1, s10
		mv	s1, s9
		mv	s1, s8
		mv	s1, s7
		mv	s1, s6
		mv	s1, s5
		mv	s1, s4
		mv	s1, s3
		mv	s1, s2
		mv	ra, a0
		mv	ra, a1
		mv	ra, a2
.classSlice_int_slice:
		sw	ra, -32(s0)
		sw	ra, -36(s0)
		sw	ra, -40(s0)
		li	ra, 16
		mv	a0, ra
		call	malloc
		mv	s2, a0
		mv	a0, s2
		call	Slice_int
		sw	s2, -56(s0)
		lw	ra, -56(s0)
		addi	t0, ra, 0
		lw	ra, -32(s0)
		addi	ra, ra, 0
		lw	ra, 0(ra)
		sw	ra, 0(t0)
		lw	ra, -56(s0)
		addi	t1, ra, 8
		lw	ra, -32(s0)
		addi	ra, ra, 8
		lw	ra, 0(ra)
		lw	t0, -36(s0)
		add	ra, ra, t0
		sw	ra, 0(t1)
		lw	ra, -56(s0)
		addi	t1, ra, 12
		lw	ra, -32(s0)
		addi	ra, ra, 8
		lw	ra, 0(ra)
		lw	t0, -40(s0)
		add	ra, ra, t0
		sw	ra, 0(t1)
		lw	ra, -56(s0)
		addi	ra, ra, 8
		lw	ra, 0(ra)
		lw	t0, -32(s0)
		addi	t0, t0, 0
		lw	t0, 0(t0)
		li	t2, -1
		li	t1, 4
		mul	t1, t2, t1
		add	t0, t0, t1
		lw	t0, 0(t0)
		slt	t0, t0, ra
		li	ra, 1
		bnez	t0, .classSlice_int_slice_41OR_OR_OUT
		j	.classSlice_int_slice_41OR_OR_FALSE
.classSlice_int_slice_41OR_OR_FALSE:
		lw	ra, -56(s0)
		addi	ra, ra, 12
		lw	t2, 0(ra)
		lw	ra, -32(s0)
		addi	ra, ra, 0
		lw	ra, 0(ra)
		li	t0, -1
		li	t1, 4
		mul	t0, t0, t1
		add	ra, ra, t0
		lw	ra, 0(ra)
		slt	ra, ra, t2
		j	.classSlice_int_slice_41OR_OR_OUT
.classSlice_int_slice_41OR_OR_OUT:
		bnez	ra, .classSlice_int_slice_53
		j	.classSlice_int_slice_56
.classSlice_int_slice_53:
		la	ra, my_.str.0
		mv	a0, ra
		call	println
		j	.classSlice_int_slice_56
.classSlice_int_slice_56:
		lw	ra, -56(s0)
		sw	ra, -24(s0)
		j	.classSlice_int_slicereturn_block
.classSlice_int_slicereturn_block:
		lw	ra, -24(s0)
		mv	s11, s1
		mv	s10, s1
		mv	s9, s1
		mv	s8, s1
		mv	s7, s1
		mv	s6, s1
		mv	s5, s1
		mv	s4, s1
		mv	s3, s1
		mv	s2, s1
		mv	a0, ra
		li	t0, 64
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classSlice_int_tail
	.p2align	2
	.type	classSlice_int_tail,@function
classSlice_int_tail:
.classSlice_int_tail_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	s1, s11
		mv	s1, s10
		mv	s1, s9
		mv	s1, s8
		mv	s1, s7
		mv	s1, s6
		mv	s1, s5
		mv	s1, s4
		mv	s1, s3
		mv	s1, s2
		mv	ra, a0
.classSlice_int_tail:
		sw	ra, -32(s0)
		lw	s2, -32(s0)
		lw	ra, -32(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	t0, a0
		mv	a0, s2
		li	ra, 1
		mv	a1, ra
		mv	a2, t0
		call	classSlice_int_slice
		mv	ra, a0
		sw	ra, -24(s0)
		j	.classSlice_int_tailreturn_block
.classSlice_int_tailreturn_block:
		lw	ra, -24(s0)
		mv	s11, s1
		mv	s10, s1
		mv	s9, s1
		mv	s8, s1
		mv	s7, s1
		mv	s6, s1
		mv	s5, s1
		mv	s4, s1
		mv	s3, s1
		mv	s2, s1
		mv	a0, ra
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classSlice_int_copy
	.p2align	2
	.type	classSlice_int_copy,@function
classSlice_int_copy:
.classSlice_int_copy_parameters:
		li	t0, 48
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	s1, s10
		mv	s1, s9
		mv	s1, s8
		mv	s1, s7
		mv	s1, s6
		mv	s1, s5
		mv	s1, s4
		mv	s1, s3
		mv	s1, s2
		mv	ra, a0
		mv	ra, a1
.classSlice_int_copy:
		sw	ra, -16(s0)
		sw	ra, -32(s0)
		lw	ra, -16(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	s2, a0
		lw	ra, -32(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	ra, a0
		slt	ra, s2, ra
		bnez	ra, .classSlice_int_copy_10
		j	.classSlice_int_copy_13
.classSlice_int_copy_10:
		la	ra, my_.str.1
		mv	a0, ra
		call	println
		j	.classSlice_int_copy_13
.classSlice_int_copy_13:
		li	ra, 0
		sw	ra, -36(s0)
		j	.classSlice_int_copy_15
.classSlice_int_copy_15:
		lw	s2, -36(s0)
		lw	ra, -32(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	ra, a0
		slt	ra, s2, ra
		bnez	ra, .classSlice_int_copy_20
		j	.classSlice_int_copy_36
.classSlice_int_copy_20:
		lw	ra, -16(s0)
		addi	ra, ra, 0
		lw	t1, 0(ra)
		lw	ra, -16(s0)
		addi	ra, ra, 8
		lw	t0, 0(ra)
		lw	ra, -36(s0)
		add	t0, t0, ra
		li	ra, 4
		mul	ra, t0, ra
		add	s2, t1, ra
		lw	ra, -32(s0)
		lw	t0, -36(s0)
		mv	a0, ra
		mv	a1, t0
		call	classSlice_int_get
		mv	ra, a0
		sw	ra, 0(s2)
		j	.classSlice_int_copy_33
.classSlice_int_copy_33:
		lw	ra, -36(s0)
		li	t0, 1
		add	ra, ra, t0
		sw	ra, -36(s0)
		j	.classSlice_int_copy_15
.classSlice_int_copy_36:
		j	.classSlice_int_copyreturn_block
.classSlice_int_copyreturn_block:
		mv	s10, s1
		mv	s9, s1
		mv	s8, s1
		mv	s7, s1
		mv	s6, s1
		mv	s5, s1
		mv	s4, s1
		mv	s3, s1
		mv	s2, s1
		li	t0, 48
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	classSlice_int_cloneArray
	.p2align	2
	.type	classSlice_int_cloneArray,@function
classSlice_int_cloneArray:
.classSlice_int_cloneArray_parameters:
		li	t0, 48
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	s1, s11
		mv	s1, s10
		mv	s1, s9
		mv	s1, s8
		mv	s1, s7
		mv	s1, s6
		mv	s1, s5
		mv	s1, s4
		mv	s1, s3
		mv	s1, s2
		mv	ra, a0
.classSlice_int_cloneArray:
		sw	ra, -24(s0)
		lw	ra, -24(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	s2, a0
		li	ra, 4
		mul	ra, s2, ra
		li	t0, 4
		add	ra, ra, t0
		mv	a0, ra
		call	malloc
		mv	ra, a0
		sw	s2, 0(ra)
		li	t1, 1
		li	t0, 4
		mul	t0, t1, t0
		add	ra, ra, t0
		sw	ra, -32(s0)
		li	ra, 0
		sw	ra, -36(s0)
		j	.classSlice_int_cloneArray_16
.classSlice_int_cloneArray_16:
		lw	s2, -36(s0)
		lw	ra, -24(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	ra, a0
		slt	ra, s2, ra
		bnez	ra, .classSlice_int_cloneArray_21
		j	.classSlice_int_cloneArray_38
.classSlice_int_cloneArray_21:
		lw	t0, -32(s0)
		lw	ra, -36(s0)
		li	t1, 4
		mul	ra, ra, t1
		add	t2, t0, ra
		lw	ra, -24(s0)
		addi	ra, ra, 0
		lw	t0, 0(ra)
		lw	ra, -24(s0)
		addi	ra, ra, 8
		lw	ra, 0(ra)
		lw	t1, -36(s0)
		add	t1, ra, t1
		li	ra, 4
		mul	ra, t1, ra
		add	ra, t0, ra
		lw	ra, 0(ra)
		sw	ra, 0(t2)
		j	.classSlice_int_cloneArray_35
.classSlice_int_cloneArray_35:
		lw	ra, -36(s0)
		li	t0, 1
		add	ra, ra, t0
		sw	ra, -36(s0)
		j	.classSlice_int_cloneArray_16
.classSlice_int_cloneArray_38:
		lw	ra, -32(s0)
		sw	ra, -16(s0)
		j	.classSlice_int_cloneArrayreturn_block
.classSlice_int_cloneArrayreturn_block:
		lw	ra, -16(s0)
		mv	s11, s1
		mv	s10, s1
		mv	s9, s1
		mv	s8, s1
		mv	s7, s1
		mv	s6, s1
		mv	s5, s1
		mv	s4, s1
		mv	s3, s1
		mv	s2, s1
		mv	a0, ra
		li	t0, 48
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	makeSlice_int
	.p2align	2
	.type	makeSlice_int,@function
makeSlice_int:
.makeSlice_int_parameters:
		li	t0, 48
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	s1, s11
		mv	s1, s10
		mv	s1, s9
		mv	s1, s8
		mv	s1, s7
		mv	s1, s6
		mv	s1, s5
		mv	s1, s4
		mv	s1, s3
		mv	s1, s2
		mv	ra, a0
.makeSlice_int:
		sw	ra, -32(s0)
		li	ra, 16
		mv	a0, ra
		call	malloc
		mv	s2, a0
		mv	a0, s2
		call	Slice_int
		sw	s2, -48(s0)
		lw	t0, -48(s0)
		lw	ra, -32(s0)
		mv	a0, t0
		mv	a1, ra
		call	classSlice_int_init
		lw	ra, -48(s0)
		sw	ra, -24(s0)
		j	.makeSlice_intreturn_block
.makeSlice_intreturn_block:
		lw	ra, -24(s0)
		mv	s11, s1
		mv	s10, s1
		mv	s9, s1
		mv	s8, s1
		mv	s7, s1
		mv	s6, s1
		mv	s5, s1
		mv	s4, s1
		mv	s3, s1
		mv	s2, s1
		mv	a0, ra
		li	t0, 48
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	merge
	.p2align	2
	.type	merge,@function
merge:
.merge_parameters:
		li	t0, 80
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	s1, s11
		mv	s1, s10
		mv	s1, s9
		mv	s1, s8
		mv	s1, s7
		mv	s1, s6
		mv	s1, s5
		mv	s1, s4
		mv	s1, s3
		mv	s1, s2
		mv	ra, a0
		mv	ra, a1
.merge:
		sw	ra, -32(s0)
		sw	ra, -48(s0)
		lw	ra, -32(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	ra, a0
		li	t0, 0
		xor	ra, ra, t0
		sltiu	ra, ra, 1
		bnez	ra, .merge_9
		j	.merge_13
.merge_9:
		lw	ra, -48(s0)
		mv	a0, ra
		call	classSlice_int_cloneArray
		mv	ra, a0
		sw	ra, -16(s0)
		j	.mergereturn_block
.merge_13:
		lw	ra, -48(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	ra, a0
		li	t0, 0
		xor	ra, ra, t0
		sltiu	ra, ra, 1
		bnez	ra, .merge_17
		j	.merge_21
.merge_17:
		lw	ra, -32(s0)
		mv	a0, ra
		call	classSlice_int_cloneArray
		mv	ra, a0
		sw	ra, -16(s0)
		j	.mergereturn_block
.merge_21:
		lw	ra, -32(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	s2, a0
		lw	ra, -48(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	ra, a0
		add	s2, s2, ra
		li	ra, 4
		mul	ra, s2, ra
		li	t0, 4
		add	ra, ra, t0
		mv	a0, ra
		call	malloc
		mv	ra, a0
		sw	s2, 0(ra)
		li	t0, 1
		li	t1, 4
		mul	t0, t0, t1
		add	ra, ra, t0
		sw	ra, -56(s0)
		lw	ra, -56(s0)
		mv	a0, ra
		call	makeSlice_int
		mv	ra, a0
		mv	a0, ra
		call	classSlice_int_tail
		mv	ra, a0
		sw	ra, -72(s0)
		lw	ra, -32(s0)
		mv	a0, ra
		li	ra, 0
		mv	a1, ra
		call	classSlice_int_get
		mv	s2, a0
		lw	ra, -48(s0)
		mv	a0, ra
		li	ra, 0
		mv	a1, ra
		call	classSlice_int_get
		mv	ra, a0
		slt	ra, s2, ra
		bnez	ra, .merge_47
		j	.merge_63
.merge_47:
		lw	ra, -56(s0)
		li	t1, 0
		li	t0, 4
		mul	t0, t1, t0
		add	s2, ra, t0
		lw	ra, -32(s0)
		mv	a0, ra
		li	ra, 0
		mv	a1, ra
		call	classSlice_int_get
		mv	ra, a0
		sw	ra, 0(s2)
		lw	s2, -72(s0)
		lw	ra, -32(s0)
		mv	a0, ra
		call	classSlice_int_tail
		mv	t0, a0
		lw	ra, -48(s0)
		mv	a0, t0
		mv	a1, ra
		call	merge
		mv	ra, a0
		mv	a0, ra
		call	makeSlice_int
		mv	ra, a0
		mv	a0, s2
		mv	a1, ra
		call	classSlice_int_copy
		j	.merge_79
.merge_63:
		lw	t0, -56(s0)
		li	ra, 0
		li	t1, 4
		mul	ra, ra, t1
		add	s2, t0, ra
		lw	ra, -48(s0)
		mv	a0, ra
		li	ra, 0
		mv	a1, ra
		call	classSlice_int_get
		mv	ra, a0
		sw	ra, 0(s2)
		lw	s2, -72(s0)
		lw	s3, -32(s0)
		lw	ra, -48(s0)
		mv	a0, ra
		call	classSlice_int_tail
		mv	ra, a0
		mv	a0, s3
		mv	a1, ra
		call	merge
		mv	ra, a0
		mv	a0, ra
		call	makeSlice_int
		mv	ra, a0
		mv	a0, s2
		mv	a1, ra
		call	classSlice_int_copy
		j	.merge_79
.merge_79:
		lw	ra, -56(s0)
		sw	ra, -16(s0)
		j	.mergereturn_block
.mergereturn_block:
		lw	ra, -16(s0)
		mv	s11, s1
		mv	s10, s1
		mv	s9, s1
		mv	s8, s1
		mv	s7, s1
		mv	s6, s1
		mv	s5, s1
		mv	s4, s1
		mv	s3, s1
		mv	s2, s1
		mv	a0, ra
		li	t0, 80
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	mergeSort
	.p2align	2
	.type	mergeSort,@function
mergeSort:
.mergeSort_parameters:
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	s1, s10
		mv	s1, s9
		mv	s1, s8
		mv	s1, s7
		mv	s1, s6
		mv	s1, s5
		mv	s1, s4
		mv	s1, s3
		mv	s1, s2
		mv	ra, a0
.mergeSort:
		sw	ra, -24(s0)
		lw	ra, -24(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	ra, a0
		li	t0, 1
		xor	ra, ra, t0
		sltiu	ra, ra, 1
		bnez	ra, .mergeSort_6
		j	.mergeSort_7
.mergeSort_6:
		j	.mergeSortreturn_block
.mergeSort_7:
		lw	ra, -24(s0)
		mv	a0, ra
		call	classSlice_int_size
		mv	ra, a0
		sw	ra, -28(s0)
		lw	t0, -28(s0)
		li	ra, 2
		div	ra, t0, ra
		sw	ra, -32(s0)
		lw	ra, -24(s0)
		lw	t0, -32(s0)
		mv	a0, ra
		li	ra, 0
		mv	a1, ra
		mv	a2, t0
		call	classSlice_int_slice
		mv	ra, a0
		mv	a0, ra
		call	mergeSort
		lw	t0, -24(s0)
		lw	ra, -32(s0)
		lw	t1, -28(s0)
		mv	a0, t0
		mv	a1, ra
		mv	a2, t1
		call	classSlice_int_slice
		mv	ra, a0
		mv	a0, ra
		call	mergeSort
		lw	s3, -24(s0)
		lw	t0, -24(s0)
		lw	ra, -32(s0)
		mv	a0, t0
		li	t0, 0
		mv	a1, t0
		mv	a2, ra
		call	classSlice_int_slice
		mv	s2, a0
		lw	t0, -24(s0)
		lw	t1, -32(s0)
		lw	ra, -28(s0)
		mv	a0, t0
		mv	a1, t1
		mv	a2, ra
		call	classSlice_int_slice
		mv	ra, a0
		mv	a0, s2
		mv	a1, ra
		call	merge
		mv	ra, a0
		mv	a0, ra
		call	makeSlice_int
		mv	ra, a0
		mv	a0, s3
		mv	a1, ra
		call	classSlice_int_copy
		j	.mergeSortreturn_block
.mergeSortreturn_block:
		mv	s10, s1
		mv	s9, s1
		mv	s8, s1
		mv	s7, s1
		mv	s6, s1
		mv	s5, s1
		mv	s4, s1
		mv	s3, s1
		mv	s2, s1
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.globl	mergeSortInf
	.p2align	2
	.type	mergeSortInf,@function
mergeSortInf:
.mergeSortInf_parameters:
		li	t0, 16
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	s1, s10
		mv	s1, s9
		mv	s1, s8
		mv	s1, s7
		mv	s1, s6
		mv	s1, s5
		mv	s1, s4
		mv	s1, s3
		mv	s1, s2
		mv	ra, a0
.mergeSortInf:
		sw	ra, -16(s0)
		lw	ra, -16(s0)
		mv	a0, ra
		call	makeSlice_int
		mv	ra, a0
		mv	a0, ra
		call	mergeSort
		j	.mergeSortInfreturn_block
.mergeSortInfreturn_block:
		mv	s10, s1
		mv	s9, s1
		mv	s8, s1
		mv	s7, s1
		mv	s6, s1
		mv	s5, s1
		mv	s4, s1
		mv	s3, s1
		mv	s2, s1
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
		li	t0, 32
		sub	sp, sp, t0
		add	t1, sp, t0
		sw	ra, -4(t1)
		sw	s0, -8(t1)
		mv	s0, t1
		mv	s1, s11
		mv	s1, s10
		mv	s1, s9
		mv	s1, s8
		mv	s1, s7
		mv	s1, s6
		mv	s1, s5
		mv	s1, s4
		mv	s1, s3
		mv	s1, s2
.main:
		call	getInt
		mv	ra, a0
		sw	ra, -16(s0)
		lw	s2, -16(s0)
		li	ra, 4
		mul	ra, s2, ra
		li	t0, 4
		add	ra, ra, t0
		mv	a0, ra
		call	malloc
		mv	ra, a0
		sw	s2, 0(ra)
		li	t0, 1
		li	t1, 4
		mul	t0, t0, t1
		add	ra, ra, t0
		sw	ra, -24(s0)
		li	ra, 0
		sw	ra, -28(s0)
		j	.main_15
.main_15:
		lw	t0, -28(s0)
		lw	ra, -16(s0)
		slt	ra, t0, ra
		bnez	ra, .main_19
		j	.main_27
.main_19:
		lw	ra, -24(s0)
		lw	t0, -28(s0)
		li	t1, 4
		mul	t0, t0, t1
		add	s2, ra, t0
		call	getInt
		mv	ra, a0
		sw	ra, 0(s2)
		j	.main_24
.main_24:
		lw	ra, -28(s0)
		li	t0, 1
		add	ra, ra, t0
		sw	ra, -28(s0)
		j	.main_15
.main_27:
		lw	ra, -24(s0)
		mv	a0, ra
		call	mergeSortInf
		li	ra, 0
		sw	ra, -28(s0)
		j	.main_31
.main_31:
		lw	ra, -28(s0)
		lw	t0, -16(s0)
		slt	ra, ra, t0
		bnez	ra, .main_35
		j	.main_49
.main_35:
		lw	t1, -24(s0)
		lw	t0, -28(s0)
		li	ra, 4
		mul	ra, t0, ra
		add	ra, t1, ra
		lw	ra, 0(ra)
		mv	a0, ra
		call	toString
		mv	t0, a0
		la	ra, my_.str.2
		mv	a0, t0
		mv	a1, ra
		call	string_add
		mv	ra, a0
		mv	a0, ra
		call	print
		j	.main_46
.main_46:
		lw	ra, -28(s0)
		li	t0, 1
		add	ra, ra, t0
		sw	ra, -28(s0)
		j	.main_31
.main_49:
		la	ra, my_.str.3
		mv	a0, ra
		call	println
		li	ra, 0
		sw	ra, -12(s0)
		j	.mainreturn_block
.mainreturn_block:
		lw	ra, -12(s0)
		mv	s11, s1
		mv	s10, s1
		mv	s9, s1
		mv	s8, s1
		mv	s7, s1
		mv	s6, s1
		mv	s5, s1
		mv	s4, s1
		mv	s3, s1
		mv	s2, s1
		mv	a0, ra
		li	t0, 32
		add	t1, sp, t0
		lw	ra, -4(t1)
		lw	s0, -8(t1)
		add	sp, sp, t0
		ret	

	.section	.rodata
	.type	my_.str.0,@object
my_.str.0:
	.asciz	"Warning: Slice_int::slice: out of range "
	.size	my_.str.0, 40

	.section	.rodata
	.type	my_.str.1,@object
my_.str.1:
	.asciz	"Warning: Slice_int::copy: size() < arr.size() "
	.size	my_.str.1, 46

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


