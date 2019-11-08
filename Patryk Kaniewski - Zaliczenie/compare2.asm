	.file	"comparesort.c"
	.text
	.p2align 4,,15
	.globl	shellsort
	.type	shellsort, @function
shellsort:
.LFB41:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	$15, %ebp
	movl	$30000, %esi
	movl	$60000, %r12d
	.p2align 4,,10
	.p2align 3
.L6:
	movl	%r12d, %eax
	movslq	%esi, %rdi
	leal	-1(%rsi), %ebx
	subl	%esi, %eax
	movq	%rdi, %r9
	leaq	0(,%rdi,8), %r8
	cltq
	negq	%r9
	movl	$60000, %r11d
	leaq	0(%r13,%rax,8), %r10
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L5:
	cmpl	$60000, %r11d
	movq	%r10, %rcx
	movl	%r11d, %edx
	movsd	(%r10), %xmm1
	jg	.L2
	movsd	(%r10,%rdi,8), %xmm0
	leaq	(%r10,%r8), %rax
	ucomisd	%xmm0, %xmm1
	ja	.L4
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L14:
	addq	%r8, %rax
	movsd	(%rax), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.L2
.L4:
	addl	%esi, %edx
	movq	%rax, %rcx
	movsd	%xmm0, (%rax,%r9)
	cmpl	$60000, %edx
	jle	.L14
.L2:
	subl	$1, %r11d
	subq	$8, %r10
	movsd	%xmm1, (%rcx)
	cmpl	%r11d, %ebx
	jne	.L5
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%eax, %esi
	sarl	%esi
	subl	$1, %ebp
	jne	.L6
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	shellsort, .-shellsort
	.p2align 4,,15
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
.LFB42:
	.cfi_startproc
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L16:
	movl	$59999, %eax
	.p2align 4,,10
	.p2align 3
.L19:
	movsd	-8(%rdi,%rax,8), %xmm0
	movsd	(%rdi,%rax,8), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L17
	movsd	%xmm1, -8(%rdi,%rax,8)
	movsd	%xmm0, (%rdi,%rax,8)
.L17:
	subq	$1, %rax
	cmpl	%eax, %edx
	jle	.L19
	addl	$1, %edx
	cmpl	$60000, %edx
	jne	.L16
	rep ret
	.cfi_endproc
.LFE42:
	.size	bubblesort, .-bubblesort
	.p2align 4,,15
	.globl	insertionsort
	.type	insertionsort, @function
insertionsort:
.LFB43:
	.cfi_startproc
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L28:
	movsd	8(%rdi,%rsi,8), %xmm1
	movl	%esi, %edx
	leaq	-1(%rsi), %rax
	movsd	(%rdi,%rsi,8), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L26
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L39:
	ucomisd	%xmm1, %xmm0
	jbe	.L24
	movq	%rcx, %rax
.L26:
	subl	$1, %edx
	movsd	%xmm0, 16(%rdi,%rax,8)
	leaq	-1(%rax), %rcx
	cmpl	$-1, %edx
	movsd	(%rdi,%rax,8), %xmm0
	jne	.L39
.L24:
	addq	$1, %rsi
	movsd	%xmm1, 8(%rdi,%rax,8)
	cmpq	$59999, %rsi
	jne	.L28
	rep ret
	.p2align 4,,10
	.p2align 3
.L38:
	movq	%rsi, %rax
	jmp	.L24
	.cfi_endproc
.LFE43:
	.size	insertionsort, .-insertionsort
	.p2align 4,,15
	.globl	selectionsort
	.type	selectionsort, @function
selectionsort:
.LFB44:
	.cfi_startproc
	movsd	(%rdi), %xmm2
	movl	$1, %r8d
	xorl	%esi, %esi
	movl	$59998, %r10d
	.p2align 4,,10
	.p2align 3
.L41:
	leaq	1(%r8), %r9
	movq	%r10, %rcx
	movl	%esi, %edx
	subq	%rsi, %rcx
	movapd	%xmm2, %xmm0
	addq	%r9, %rcx
	movq	%r8, %rax
	.p2align 4,,10
	.p2align 3
.L43:
	movsd	(%rdi,%rax,8), %xmm1
	ucomisd	%xmm1, %xmm0
	minsd	%xmm0, %xmm1
	cmova	%eax, %edx
	addq	$1, %rax
	cmpq	%rax, %rcx
	movapd	%xmm1, %xmm0
	jne	.L43
	movslq	%edx, %rdx
	movsd	%xmm2, (%rdi,%rdx,8)
	movsd	%xmm1, (%rdi,%rsi,8)
	addq	$1, %rsi
	cmpq	$59999, %rsi
	movsd	(%rdi,%r8,8), %xmm2
	movq	%r9, %r8
	jne	.L41
	rep ret
	.cfi_endproc
.LFE44:
	.size	selectionsort, .-selectionsort
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"b;%1.3f,\ns;%1.3f,\ni;%1.3f\nsh;%1.3f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB45:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r15d, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$1374389535, %r14d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$1920056, %rsp
	.cfi_def_cfa_offset 1920112
	leaq	24(%rsp), %rdi
	leaq	32(%rsp), %r13
	leaq	480032(%rsp), %r12
	leaq	960032(%rsp), %rbp
	leaq	1440032(%rsp), %rbx
	movq	%fs:40, %rax
	movq	%rax, 1920040(%rsp)
	xorl	%eax, %eax
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	.p2align 4,,10
	.p2align 3
.L49:
	call	rand@PLT
	movl	%eax, %ecx
	pxor	%xmm0, %xmm0
	imull	%r14d
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$4, %edx
	subl	%eax, %edx
	imull	$50, %edx, %edx
	subl	%edx, %ecx
	cvtsi2sd	%ecx, %xmm0
	movsd	%xmm0, 0(%r13,%r15)
	movsd	%xmm0, (%r12,%r15)
	movsd	%xmm0, 0(%rbp,%r15)
	movsd	%xmm0, (%rbx,%r15)
	addq	$8, %r15
	cmpq	$480000, %r15
	jne	.L49
	call	clock@PLT
	movl	$1, %edx
	movq	%rax, (%rsp)
	.p2align 4,,10
	.p2align 3
.L50:
	movl	$59999, %eax
	.p2align 4,,10
	.p2align 3
.L53:
	movsd	-8(%r13,%rax,8), %xmm0
	movsd	0(%r13,%rax,8), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L51
	movsd	%xmm1, -8(%r13,%rax,8)
	movsd	%xmm0, 0(%r13,%rax,8)
.L51:
	subq	$1, %rax
	cmpl	%eax, %edx
	jle	.L53
	addl	$1, %edx
	cmpl	$60000, %edx
	jne	.L50
	call	clock@PLT
	movq	%rax, 8(%rsp)
	call	clock@PLT
	movq	%r12, %rdi
	movq	%rax, %r14
	call	insertionsort
	call	clock@PLT
	movq	%rax, %r12
	call	clock@PLT
	movq	%rbp, %rdi
	movq	%rax, %r13
	subl	%r14d, %r12d
	call	selectionsort
	call	clock@PLT
	movq	%rax, %rbp
	call	clock@PLT
	movq	%rbx, %rdi
	movq	%rax, %r15
	subl	%r13d, %ebp
	call	shellsort
	call	clock@PLT
	pxor	%xmm3, %xmm3
	subl	%r15d, %eax
	pxor	%xmm2, %xmm2
	leaq	.LC1(%rip), %rsi
	pxor	%xmm1, %xmm1
	movl	$1, %edi
	cvtsi2sd	%eax, %xmm3
	movl	8(%rsp), %eax
	subl	(%rsp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%r12d, %xmm2
	cvtsi2sd	%ebp, %xmm1
	movsd	.LC0(%rip), %xmm4
	cvtsi2sd	%eax, %xmm0
	movl	$4, %eax
	divsd	%xmm4, %xmm3
	divsd	%xmm4, %xmm0
	divsd	%xmm4, %xmm2
	divsd	%xmm4, %xmm1
	call	__printf_chk@PLT
	xorl	%eax, %eax
	movq	1920040(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L60
	addq	$1920056, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L60:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE45:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
