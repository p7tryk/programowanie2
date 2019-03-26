	.file	"zajecia81.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"%2.0f "
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$536, %rsp
	.cfi_def_cfa_offset 576
	movsd	.LC0(%rip), %xmm2
	movq	%rsp, %rbx
	movsd	.LC3(%rip), %xmm1
	movq	%rbx, %rdx
	movq	%fs:40, %rax
	movq	%rax, 520(%rsp)
	xorl	%eax, %eax
	movsd	.LC1(%rip), %xmm3
	movapd	%xmm2, %xmm8
	movapd	%xmm2, %xmm7
	movapd	%xmm1, %xmm5
	movapd	%xmm2, %xmm4
	movapd	%xmm2, %xmm6
	.p2align 4,,10
	.p2align 3
.L2:
	cmpl	$2, %eax
	jle	.L38
	cmpl	$3, %eax
	movsd	%xmm1, (%rdx)
	jle	.L39
	cmpl	$4, %eax
	movsd	%xmm1, 8(%rdx)
	jle	.L40
	cmpl	$5, %eax
	movsd	%xmm1, 16(%rdx)
	jle	.L20
	movl	$2, %esi
.L13:
	pxor	%xmm0, %xmm0
	cmpl	$7, %eax
	cvtsi2sd	%esi, %xmm0
	movsd	%xmm0, 24(%rdx)
	jne	.L41
	movsd	%xmm5, 32(%rdx)
	movapd	%xmm4, %xmm0
.L15:
	xorl	%esi, %esi
	cmpl	$3, %eax
	movsd	%xmm0, 40(%rdx)
	setg	%sil
	leal	(%rsi,%rsi), %ecx
	addl	%esi, %ecx
	cmpl	$3, %eax
	jle	.L17
	pxor	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	xorl	%ecx, %ecx
	cmpl	$4, %eax
	setg	%cl
	leal	(%rcx,%rcx), %esi
	addl	%ecx, %esi
	cmpl	$4, %eax
	movl	%esi, %ecx
	movsd	%xmm0, 48(%rdx)
	jle	.L18
	pxor	%xmm0, %xmm0
	addl	$1, %eax
	addq	$64, %rdx
	cvtsi2sd	%esi, %xmm0
	movsd	%xmm0, -8(%rdx)
	cmpl	$8, %eax
	jne	.L2
	leaq	512(%rbx), %r13
	leaq	.LC2(%rip), %r12
	.p2align 4,,10
	.p2align 3
.L8:
	leaq	64(%rbx), %rbp
	.p2align 4,,10
	.p2align 3
.L9:
	movsd	(%rbx), %xmm0
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$1, %eax
	addq	$8, %rbx
	call	__printf_chk@PLT
	cmpq	%rbx, %rbp
	jne	.L9
	movl	$10, %edi
	call	putchar@PLT
	cmpq	%rbp, %r13
	jne	.L8
	xorl	%eax, %eax
	movq	520(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L42
	addq	$536, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
	movapd	%xmm2, %xmm0
	movsd	%xmm2, (%rdx)
.L11:
	movsd	%xmm0, 8(%rdx)
.L12:
	movsd	%xmm0, 16(%rdx)
.L20:
	xorl	%esi, %esi
	testl	%eax, %eax
	setne	%sil
	leal	(%rsi,%rsi), %ecx
	addl	%esi, %ecx
	testl	%eax, %eax
	movl	%ecx, %esi
	jne	.L13
	pxor	%xmm0, %xmm0
	addl	$4, %ecx
	cvtsi2sd	%ecx, %xmm0
	xorl	%ecx, %ecx
	movsd	%xmm0, 24(%rsp)
.L14:
	pxor	%xmm0, %xmm0
	addl	$4, %ecx
	cvtsi2sd	%ecx, %xmm0
	movsd	%xmm0, 32(%rdx)
.L16:
	movapd	%xmm3, %xmm0
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L17:
	pxor	%xmm0, %xmm0
	addl	$4, %ecx
	xorl	%esi, %esi
	cmpl	$4, %eax
	setg	%sil
	cvtsi2sd	%ecx, %xmm0
	leal	(%rsi,%rsi), %ecx
	addl	%esi, %ecx
	movsd	%xmm0, 48(%rdx)
.L18:
	pxor	%xmm0, %xmm0
	addl	$4, %ecx
	addl	$1, %eax
	addq	$64, %rdx
	cvtsi2sd	%ecx, %xmm0
	movsd	%xmm0, -8(%rdx)
	jmp	.L2
.L39:
	movapd	%xmm7, %xmm0
	jmp	.L11
.L42:
	call	__stack_chk_fail@PLT
.L41:
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	setg	%cl
	cmpl	$1, %eax
	leal	(%rcx,%rcx,2), %ecx
	je	.L14
	pxor	%xmm0, %xmm0
	cmpl	$2, %eax
	cvtsi2sd	%ecx, %xmm0
	movsd	%xmm0, 32(%rdx)
	movapd	%xmm6, %xmm0
	jne	.L15
	jmp	.L16
.L40:
	movapd	%xmm8, %xmm0
	jmp	.L12
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1074266112
	.align 8
.LC1:
	.long	0
	.long	1074790400
	.align 8
.LC3:
	.long	0
	.long	1073741824
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
