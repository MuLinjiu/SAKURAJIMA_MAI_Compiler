	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0_m2p0"
	.file	"myans.ll"
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %my_main
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	addi	a0, zero, 124
	mv	a1, zero
	call	malloc@plt
	addi	a1, zero, 10
	sw	a1, 0(a0)
	addi	a0, a0, 4
	sw	a0, 4(sp)
	sw	zero, 8(sp)
	lw	a0, 8(sp)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	A                               # -- Begin function A
	.p2align	2
	.type	A,@function
A:                                      # @A
	.cfi_startproc
# %bb.0:                                # %my_A
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	a0, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	A, .Lfunc_end1-A
	.cfi_endproc
                                        # -- End function
	.type	my_a,@object                    # @my_a
	.section	.sbss,"aw",@nobits
	.globl	my_a
	.p2align	2
my_a:
	.word	0                               # 0x0
	.size	my_a, 4

	.type	my_b,@object                    # @my_b
	.globl	my_b
	.p2align	2
my_b:
	.word	0                               # 0x0
	.size	my_b, 4

	.type	my_c,@object                    # @my_c
	.globl	my_c
	.p2align	2
my_c:
	.word	0                               # 0x0
	.size	my_c, 4

	.section	".note.GNU-stack","",@progbits
