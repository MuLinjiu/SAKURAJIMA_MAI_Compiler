	.text

	.globl	Slice_int
	.p2align	2
	.type	Slice_int,@function
Slice_int:
.Slice_int_parameters:
		addi	sp, sp, -16
		sw	ra, 12(sp)
		sw	s0, 8(sp)
		addi	s0, sp, 16
.Slice_int:
		sw	a0, -12(s0)
		j	.Slice_intreturn_block
.Slice_intreturn_block:
		lw	s0, 8(sp)
		lw	ra, 12(sp)
		addi	sp, sp, 16
		ret	

	.globl	classSlice_int_init
	.p2align	2
	.type	classSlice_int_init,@function
classSlice_int_init:
.classSlice_int_init_parameters:
		addi	sp, sp, -16
		sw	ra, 12(sp)
		sw	s0, 8(sp)
		addi	s0, sp, 16
.classSlice_int_init:
		sw	a0, -12(s0)
		sw	a1, -16(s0)
		lw	ra, -12(s0)
		addi	ra, ra, 0
		lw	t0, -16(s0)
		sw	t0, 0(ra)
		lw	ra, -12(s0)
		addi	ra, ra, 8
		li	t0, 0
		sw	t0, 0(ra)
		lw	ra, -12(s0)
		addi	t0, ra, 12
		lw	t1, -16(s0)
		li	t2, -1
		li	ra, 4
		mul	ra, t2, ra
		add	ra, t1, ra
		lw	ra, 0(ra)
		sw	ra, 0(t0)
		j	.classSlice_int_initreturn_block
.classSlice_int_initreturn_block:
		lw	s0, 8(sp)
		lw	ra, 12(sp)
		addi	sp, sp, 16
		ret	

	.globl	classSlice_int_size
	.p2align	2
	.type	classSlice_int_size,@function
classSlice_int_size:
.classSlice_int_size_parameters:
		addi	sp, sp, -16
		sw	ra, 12(sp)
		sw	s0, 8(sp)
		addi	s0, sp, 16
.classSlice_int_size:
		sw	a0, -16(s0)
		lw	ra, -16(s0)
		addi	ra, ra, 12
		lw	t0, 0(ra)
		lw	ra, -16(s0)
		addi	ra, ra, 8
		lw	ra, 0(ra)
		sub	ra, t0, ra
		sw	ra, -12(s0)
		j	.classSlice_int_sizereturn_block
.classSlice_int_sizereturn_block:
		lw	a0, -12(s0)
		lw	s0, 8(sp)
		lw	ra, 12(sp)
		addi	sp, sp, 16
		ret	

	.globl	classSlice_int_get
	.p2align	2
	.type	classSlice_int_get,@function
classSlice_int_get:
.classSlice_int_get_parameters:
		addi	sp, sp, -32
		sw	ra, 28(sp)
		sw	s0, 24(sp)
		addi	s0, sp, 32
.classSlice_int_get:
		sw	a0, -16(s0)
		sw	a1, -20(s0)
		lw	ra, -16(s0)
		addi	ra, ra, 0
		lw	t1, 0(ra)
		lw	ra, -16(s0)
		addi	ra, ra, 8
		lw	t0, 0(ra)
		lw	ra, -20(s0)
		add	t0, t0, ra
		li	ra, 4
		mul	ra, t0, ra
		add	ra, t1, ra
		lw	ra, 0(ra)
		sw	ra, -12(s0)
		j	.classSlice_int_getreturn_block
.classSlice_int_getreturn_block:
		lw	a0, -12(s0)
		lw	s0, 24(sp)
		lw	ra, 28(sp)
		addi	sp, sp, 32
		ret	

	.globl	classSlice_int_set
	.p2align	2
	.type	classSlice_int_set,@function
classSlice_int_set:
.classSlice_int_set_parameters:
		addi	sp, sp, -32
		sw	ra, 28(sp)
		sw	s0, 24(sp)
		addi	s0, sp, 32
.classSlice_int_set:
		sw	a0, -12(s0)
		sw	a1, -16(s0)
		sw	a2, -20(s0)
		lw	ra, -12(s0)
		addi	ra, ra, 0
		lw	t1, 0(ra)
		lw	ra, -12(s0)
		addi	ra, ra, 8
		lw	ra, 0(ra)
		lw	t0, -16(s0)
		add	ra, ra, t0
		li	t0, 4
		mul	ra, ra, t0
		add	ra, t1, ra
		lw	t0, -20(s0)
		sw	t0, 0(ra)
		j	.classSlice_int_setreturn_block
.classSlice_int_setreturn_block:
		lw	s0, 24(sp)
		lw	ra, 28(sp)
		addi	sp, sp, 32
		ret	

	.globl	classSlice_int_slice
	.p2align	2
	.type	classSlice_int_slice,@function
classSlice_int_slice:
.classSlice_int_slice_parameters:
		addi	sp, sp, -32
		sw	ra, 28(sp)
		sw	s0, 24(sp)
		addi	s0, sp, 32
		mv	s1, s4
.classSlice_int_slice:
		sw	a0, -16(s0)
		sw	a1, -20(s0)
		sw	a2, -24(s0)
		li	a0, 16
		call	malloc
		mv	s4, a0
		mv	a0, s4
		call	Slice_int
		sw	s4, -28(s0)
		lw	ra, -28(s0)
		addi	t0, ra, 0
		lw	ra, -16(s0)
		addi	ra, ra, 0
		lw	ra, 0(ra)
		sw	ra, 0(t0)
		lw	ra, -28(s0)
		addi	t1, ra, 8
		lw	ra, -16(s0)
		addi	ra, ra, 8
		lw	t0, 0(ra)
		lw	ra, -20(s0)
		add	ra, t0, ra
		sw	ra, 0(t1)
		lw	ra, -28(s0)
		addi	ra, ra, 12
		lw	t0, -16(s0)
		addi	t0, t0, 8
		lw	t0, 0(t0)
		lw	t1, -24(s0)
		add	t0, t0, t1
		sw	t0, 0(ra)
		lw	ra, -28(s0)
		addi	ra, ra, 8
		lw	t1, 0(ra)
		lw	ra, -16(s0)
		addi	ra, ra, 0
		lw	t2, 0(ra)
		li	ra, -1
		li	t0, 4
		mul	ra, ra, t0
		add	ra, t2, ra
		lw	ra, 0(ra)
		slt	t0, ra, t1
		li	ra, 1
		bnez	t0, .classSlice_int_slice_41OR_OR_OUT
		j	.classSlice_int_slice_41OR_OR_FALSE
.classSlice_int_slice_41OR_OR_FALSE:
		lw	ra, -28(s0)
		addi	ra, ra, 12
		lw	t0, 0(ra)
		lw	ra, -16(s0)
		addi	ra, ra, 0
		lw	ra, 0(ra)
		li	t1, -1
		li	t2, 4
		mul	t1, t1, t2
		add	ra, ra, t1
		lw	ra, 0(ra)
		slt	ra, ra, t0
		j	.classSlice_int_slice_41OR_OR_OUT
.classSlice_int_slice_41OR_OR_OUT:
		bnez	ra, .classSlice_int_slice_53
		j	.classSlice_int_slice_56
.classSlice_int_slice_53:
		la	a0, my_.str.0
		call	println
		j	.classSlice_int_slice_56
.classSlice_int_slice_56:
		lw	ra, -28(s0)
		sw	ra, -12(s0)
		j	.classSlice_int_slicereturn_block
.classSlice_int_slicereturn_block:
		lw	a0, -12(s0)
		mv	s4, s1
		lw	s0, 24(sp)
		lw	ra, 28(sp)
		addi	sp, sp, 32
		ret	

	.globl	classSlice_int_tail
	.p2align	2
	.type	classSlice_int_tail,@function
classSlice_int_tail:
.classSlice_int_tail_parameters:
		addi	sp, sp, -16
		sw	ra, 12(sp)
		sw	s0, 8(sp)
		addi	s0, sp, 16
		mv	s1, s7
.classSlice_int_tail:
		sw	a0, -16(s0)
		lw	s7, -16(s0)
		lw	a0, -16(s0)
		call	classSlice_int_size
		mv	a2, a0
		mv	a0, s7
		li	a1, 1
		call	classSlice_int_slice
		sw	a0, -12(s0)
		j	.classSlice_int_tailreturn_block
.classSlice_int_tailreturn_block:
		lw	a0, -12(s0)
		mv	s7, s1
		lw	s0, 8(sp)
		lw	ra, 12(sp)
		addi	sp, sp, 16
		ret	

	.globl	classSlice_int_copy
	.p2align	2
	.type	classSlice_int_copy,@function
classSlice_int_copy:
.classSlice_int_copy_parameters:
		addi	sp, sp, -32
		sw	ra, 28(sp)
		sw	s0, 24(sp)
		addi	s0, sp, 32
		sw	s1, -24(s0)
.classSlice_int_copy:
		sw	a0, -12(s0)
		sw	a1, -16(s0)
		lw	a0, -12(s0)
		call	classSlice_int_size
		mv	s1, a0
		lw	a0, -16(s0)
		call	classSlice_int_size
		slt	ra, s1, a0
		bnez	ra, .classSlice_int_copy_10
		j	.classSlice_int_copy_13
.classSlice_int_copy_10:
		la	a0, my_.str.1
		call	println
		j	.classSlice_int_copy_13
.classSlice_int_copy_13:
		li	ra, 0
		sw	ra, -20(s0)
		j	.classSlice_int_copy_15
.classSlice_int_copy_15:
		lw	s1, -20(s0)
		lw	a0, -16(s0)
		call	classSlice_int_size
		slt	ra, s1, a0
		bnez	ra, .classSlice_int_copy_20
		j	.classSlice_int_copy_36
.classSlice_int_copy_20:
		lw	ra, -12(s0)
		addi	ra, ra, 0
		lw	t1, 0(ra)
		lw	ra, -12(s0)
		addi	ra, ra, 8
		lw	ra, 0(ra)
		lw	t0, -20(s0)
		add	ra, ra, t0
		li	t0, 4
		mul	ra, ra, t0
		add	s1, t1, ra
		lw	a0, -16(s0)
		lw	a1, -20(s0)
		call	classSlice_int_get
		sw	a0, 0(s1)
		j	.classSlice_int_copy_33
.classSlice_int_copy_33:
		lw	t0, -20(s0)
		li	ra, 1
		add	ra, t0, ra
		sw	ra, -20(s0)
		j	.classSlice_int_copy_15
.classSlice_int_copy_36:
		j	.classSlice_int_copyreturn_block
.classSlice_int_copyreturn_block:
		lw	s1, -24(s0)
		lw	s0, 24(sp)
		lw	ra, 28(sp)
		addi	sp, sp, 32
		ret	

	.globl	classSlice_int_cloneArray
	.p2align	2
	.type	classSlice_int_cloneArray,@function
classSlice_int_cloneArray:
.classSlice_int_cloneArray_parameters:
		addi	sp, sp, -32
		sw	ra, 28(sp)
		sw	s0, 24(sp)
		addi	s0, sp, 32
		sw	s1, -28(s0)
.classSlice_int_cloneArray:
		sw	a0, -16(s0)
		lw	a0, -16(s0)
		call	classSlice_int_size
		mv	s1, a0
		li	ra, 4
		mul	ra, s1, ra
		li	t0, 4
		add	a0, ra, t0
		call	malloc
		sw	s1, 0(a0)
		li	ra, 1
		li	t0, 4
		mul	ra, ra, t0
		add	ra, a0, ra
		sw	ra, -20(s0)
		li	ra, 0
		sw	ra, -24(s0)
		j	.classSlice_int_cloneArray_16
.classSlice_int_cloneArray_16:
		lw	s1, -24(s0)
		lw	a0, -16(s0)
		call	classSlice_int_size
		slt	ra, s1, a0
		bnez	ra, .classSlice_int_cloneArray_21
		j	.classSlice_int_cloneArray_38
.classSlice_int_cloneArray_21:
		lw	t0, -20(s0)
		lw	ra, -24(s0)
		li	t1, 4
		mul	ra, ra, t1
		add	t1, t0, ra
		lw	ra, -16(s0)
		addi	ra, ra, 0
		lw	t2, 0(ra)
		lw	ra, -16(s0)
		addi	ra, ra, 8
		lw	ra, 0(ra)
		lw	t0, -24(s0)
		add	t0, ra, t0
		li	ra, 4
		mul	ra, t0, ra
		add	ra, t2, ra
		lw	ra, 0(ra)
		sw	ra, 0(t1)
		j	.classSlice_int_cloneArray_35
.classSlice_int_cloneArray_35:
		lw	ra, -24(s0)
		li	t0, 1
		add	ra, ra, t0
		sw	ra, -24(s0)
		j	.classSlice_int_cloneArray_16
.classSlice_int_cloneArray_38:
		lw	ra, -20(s0)
		sw	ra, -12(s0)
		j	.classSlice_int_cloneArrayreturn_block
.classSlice_int_cloneArrayreturn_block:
		lw	a0, -12(s0)
		lw	s1, -28(s0)
		lw	s0, 24(sp)
		lw	ra, 28(sp)
		addi	sp, sp, 32
		ret	

	.globl	makeSlice_int
	.p2align	2
	.type	makeSlice_int,@function
makeSlice_int:
.makeSlice_int_parameters:
		addi	sp, sp, -32
		sw	ra, 28(sp)
		sw	s0, 24(sp)
		addi	s0, sp, 32
		mv	s1, s8
.makeSlice_int:
		sw	a0, -16(s0)
		li	a0, 16
		call	malloc
		mv	s8, a0
		mv	a0, s8
		call	Slice_int
		sw	s8, -20(s0)
		lw	a0, -20(s0)
		lw	a1, -16(s0)
		call	classSlice_int_init
		lw	ra, -20(s0)
		sw	ra, -12(s0)
		j	.makeSlice_intreturn_block
.makeSlice_intreturn_block:
		lw	a0, -12(s0)
		mv	s8, s1
		lw	s0, 24(sp)
		lw	ra, 28(sp)
		addi	sp, sp, 32
		ret	

	.globl	merge
	.p2align	2
	.type	merge,@function
merge:
.merge_parameters:
		addi	sp, sp, -48
		sw	ra, 44(sp)
		sw	s0, 40(sp)
		addi	s0, sp, 48
		sw	s1, -32(s0)
		sw	s9, -36(s0)
.merge:
		sw	a0, -16(s0)
		sw	a1, -20(s0)
		lw	a0, -16(s0)
		call	classSlice_int_size
		li	ra, 0
		xor	ra, a0, ra
		sltiu	ra, ra, 1
		bnez	ra, .merge_9
		j	.merge_13
.merge_9:
		lw	a0, -20(s0)
		call	classSlice_int_cloneArray
		sw	a0, -12(s0)
		j	.mergereturn_block
.merge_13:
		lw	a0, -20(s0)
		call	classSlice_int_size
		li	ra, 0
		xor	ra, a0, ra
		sltiu	ra, ra, 1
		bnez	ra, .merge_17
		j	.merge_21
.merge_17:
		lw	a0, -16(s0)
		call	classSlice_int_cloneArray
		sw	a0, -12(s0)
		j	.mergereturn_block
.merge_21:
		lw	a0, -16(s0)
		call	classSlice_int_size
		mv	s1, a0
		lw	a0, -20(s0)
		call	classSlice_int_size
		add	s1, s1, a0
		li	ra, 4
		mul	t0, s1, ra
		li	ra, 4
		add	a0, t0, ra
		call	malloc
		sw	s1, 0(a0)
		li	ra, 1
		li	t0, 4
		mul	ra, ra, t0
		add	ra, a0, ra
		sw	ra, -24(s0)
		lw	a0, -24(s0)
		call	makeSlice_int
		call	classSlice_int_tail
		sw	a0, -28(s0)
		lw	a0, -16(s0)
		li	a1, 0
		call	classSlice_int_get
		mv	s1, a0
		lw	a0, -20(s0)
		li	a1, 0
		call	classSlice_int_get
		slt	ra, s1, a0
		bnez	ra, .merge_47
		j	.merge_63
.merge_47:
		lw	t1, -24(s0)
		li	ra, 0
		li	t0, 4
		mul	ra, ra, t0
		add	s1, t1, ra
		lw	a0, -16(s0)
		li	a1, 0
		call	classSlice_int_get
		sw	a0, 0(s1)
		lw	s1, -28(s0)
		lw	a0, -16(s0)
		call	classSlice_int_tail
		lw	a1, -20(s0)
		call	merge
		call	makeSlice_int
		mv	a1, a0
		mv	a0, s1
		call	classSlice_int_copy
		j	.merge_79
.merge_63:
		lw	t0, -24(s0)
		li	ra, 0
		li	t1, 4
		mul	ra, ra, t1
		add	s1, t0, ra
		lw	a0, -20(s0)
		li	a1, 0
		call	classSlice_int_get
		sw	a0, 0(s1)
		lw	s9, -28(s0)
		lw	s1, -16(s0)
		lw	a0, -20(s0)
		call	classSlice_int_tail
		mv	a1, a0
		mv	a0, s1
		call	merge
		call	makeSlice_int
		mv	a1, a0
		mv	a0, s9
		call	classSlice_int_copy
		j	.merge_79
.merge_79:
		lw	ra, -24(s0)
		sw	ra, -12(s0)
		j	.mergereturn_block
.mergereturn_block:
		lw	a0, -12(s0)
		lw	s9, -36(s0)
		lw	s1, -32(s0)
		lw	s0, 40(sp)
		lw	ra, 44(sp)
		addi	sp, sp, 48
		ret	

	.globl	mergeSort
	.p2align	2
	.type	mergeSort,@function
mergeSort:
.mergeSort_parameters:
		addi	sp, sp, -32
		sw	ra, 28(sp)
		sw	s0, 24(sp)
		addi	s0, sp, 32
		mv	s1, s5
		mv	s1, s4
.mergeSort:
		sw	a0, -12(s0)
		lw	a0, -12(s0)
		call	classSlice_int_size
		li	ra, 1
		xor	ra, a0, ra
		sltiu	ra, ra, 1
		bnez	ra, .mergeSort_6
		j	.mergeSort_7
.mergeSort_6:
		j	.mergeSortreturn_block
.mergeSort_7:
		lw	a0, -12(s0)
		call	classSlice_int_size
		sw	a0, -16(s0)
		lw	t0, -16(s0)
		li	ra, 2
		div	ra, t0, ra
		sw	ra, -20(s0)
		lw	a0, -12(s0)
		lw	a2, -20(s0)
		li	a1, 0
		call	classSlice_int_slice
		call	mergeSort
		lw	a0, -12(s0)
		lw	a1, -20(s0)
		lw	a2, -16(s0)
		call	classSlice_int_slice
		call	mergeSort
		lw	s4, -12(s0)
		lw	a0, -12(s0)
		lw	a2, -20(s0)
		li	a1, 0
		call	classSlice_int_slice
		mv	s5, a0
		lw	a0, -12(s0)
		lw	a1, -20(s0)
		lw	a2, -16(s0)
		call	classSlice_int_slice
		mv	a1, a0
		mv	a0, s5
		call	merge
		call	makeSlice_int
		mv	a1, a0
		mv	a0, s4
		call	classSlice_int_copy
		j	.mergeSortreturn_block
.mergeSortreturn_block:
		mv	s5, s1
		mv	s4, s1
		lw	s0, 24(sp)
		lw	ra, 28(sp)
		addi	sp, sp, 32
		ret	

	.globl	mergeSortInf
	.p2align	2
	.type	mergeSortInf,@function
mergeSortInf:
.mergeSortInf_parameters:
		addi	sp, sp, -16
		sw	ra, 12(sp)
		sw	s0, 8(sp)
		addi	s0, sp, 16
.mergeSortInf:
		sw	a0, -12(s0)
		lw	a0, -12(s0)
		call	makeSlice_int
		call	mergeSort
		j	.mergeSortInfreturn_block
.mergeSortInfreturn_block:
		lw	s0, 8(sp)
		lw	ra, 12(sp)
		addi	sp, sp, 16
		ret	

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_parameters:
		addi	sp, sp, -32
		sw	ra, 28(sp)
		sw	s0, 24(sp)
		addi	s0, sp, 32
		sw	s1, -28(s0)
.main:
		call	getInt
		sw	a0, -16(s0)
		lw	s1, -16(s0)
		li	ra, 4
		mul	ra, s1, ra
		li	t0, 4
		add	a0, ra, t0
		call	malloc
		sw	s1, 0(a0)
		li	t0, 1
		li	ra, 4
		mul	ra, t0, ra
		add	ra, a0, ra
		sw	ra, -20(s0)
		li	ra, 0
		sw	ra, -24(s0)
		j	.main_15
.main_15:
		lw	t0, -24(s0)
		lw	ra, -16(s0)
		slt	ra, t0, ra
		bnez	ra, .main_19
		j	.main_27
.main_19:
		lw	t0, -20(s0)
		lw	t1, -24(s0)
		li	ra, 4
		mul	ra, t1, ra
		add	s1, t0, ra
		call	getInt
		sw	a0, 0(s1)
		j	.main_24
.main_24:
		lw	t0, -24(s0)
		li	ra, 1
		add	ra, t0, ra
		sw	ra, -24(s0)
		j	.main_15
.main_27:
		lw	a0, -20(s0)
		call	mergeSortInf
		li	ra, 0
		sw	ra, -24(s0)
		j	.main_31
.main_31:
		lw	t0, -24(s0)
		lw	ra, -16(s0)
		slt	ra, t0, ra
		bnez	ra, .main_35
		j	.main_49
.main_35:
		lw	t0, -20(s0)
		lw	t1, -24(s0)
		li	ra, 4
		mul	ra, t1, ra
		add	ra, t0, ra
		lw	a0, 0(ra)
		call	toString
		la	a1, my_.str.2
		call	string_add
		call	print
		j	.main_46
.main_46:
		lw	ra, -24(s0)
		li	t0, 1
		add	ra, ra, t0
		sw	ra, -24(s0)
		j	.main_31
.main_49:
		la	a0, my_.str.3
		call	println
		li	ra, 0
		sw	ra, -12(s0)
		j	.mainreturn_block
.mainreturn_block:
		lw	a0, -12(s0)
		lw	s1, -28(s0)
		lw	s0, 24(sp)
		lw	ra, 28(sp)
		addi	sp, sp, 32
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

