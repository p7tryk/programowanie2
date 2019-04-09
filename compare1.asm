	.file	"comparesort.c"
	.text
	.globl	shellsort
	.type	shellsort, @function
shellsort:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	$30000, -12(%rbp)
	jmp	.L2
.L8:
	movl	$60000, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L3
.L7:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	jmp	.L4
.L6:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	%eax, -16(%rbp)
.L4:
	cmpl	$60000, -16(%rbp)
	jg	.L5
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	-8(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L6
.L5:
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	subl	$1, -20(%rbp)
.L3:
	cmpl	$0, -20(%rbp)
	jns	.L7
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%rbp)
.L2:
	cmpl	$0, -12(%rbp)
	jne	.L8
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	shellsort, .-shellsort
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$1, -16(%rbp)
	jmp	.L10
.L15:
	movl	$59999, -12(%rbp)
	jmp	.L11
.L14:
	movl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L12
	movl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rax)
.L12:
	subl	$1, -12(%rbp)
.L11:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.L14
	addl	$1, -16(%rbp)
.L10:
	cmpl	$59999, -16(%rbp)
	jle	.L15
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	bubblesort, .-bubblesort
	.globl	insertionsort
	.type	insertionsort, @function
insertionsort:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$1, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$1, -16(%rbp)
	jmp	.L18
.L23:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L19
.L22:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	subl	$1, -12(%rbp)
.L19:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L20
	cmpl	$0, -12(%rbp)
	jns	.L22
.L20:
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -16(%rbp)
.L18:
	cmpl	$59999, -16(%rbp)
	jle	.L23
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	insertionsort, .-insertionsort
	.globl	selectionsort
	.type	selectionsort, @function
selectionsort:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L26
.L31:
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L27
.L30:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	-8(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L28
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
.L28:
	addl	$1, -16(%rbp)
.L27:
	cmpl	$59999, -16(%rbp)
	jle	.L30
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -20(%rbp)
.L26:
	cmpl	$59999, -20(%rbp)
	jle	.L31
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	selectionsort, .-selectionsort
	.section	.rodata
	.align 8
.LC1:
	.string	"b;%1.3f,\ns;%1.3f,\ni;%1.3f\nsh;%1.3f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$3360048, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-3360024(%rbp), %rax
	movq	%rax, %rdi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movl	$0, -3360044(%rbp)
	jmp	.L34
.L35:
	call	rand@PLT
	movl	%eax, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$50, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cvtsi2sd	%eax, %xmm0
	movl	-3360044(%rbp), %eax
	cltq
	movsd	%xmm0, -3360016(%rbp,%rax,8)
	movl	-3360044(%rbp), %eax
	cltq
	movsd	-3360016(%rbp,%rax,8), %xmm0
	movl	-3360044(%rbp), %eax
	cltq
	movsd	%xmm0, -2880016(%rbp,%rax,8)
	movl	-3360044(%rbp), %eax
	cltq
	movsd	-3360016(%rbp,%rax,8), %xmm0
	movl	-3360044(%rbp), %eax
	cltq
	movsd	%xmm0, -2400016(%rbp,%rax,8)
	movl	-3360044(%rbp), %eax
	cltq
	movsd	-3360016(%rbp,%rax,8), %xmm0
	movl	-3360044(%rbp), %eax
	cltq
	movsd	%xmm0, -1920016(%rbp,%rax,8)
	movl	-3360044(%rbp), %eax
	cltq
	movsd	-3360016(%rbp,%rax,8), %xmm0
	movl	-3360044(%rbp), %eax
	cltq
	movsd	%xmm0, -1440016(%rbp,%rax,8)
	movl	-3360044(%rbp), %eax
	cltq
	movsd	-3360016(%rbp,%rax,8), %xmm0
	movl	-3360044(%rbp), %eax
	cltq
	movsd	%xmm0, -960016(%rbp,%rax,8)
	movl	-3360044(%rbp), %eax
	cltq
	movsd	-3360016(%rbp,%rax,8), %xmm0
	movl	-3360044(%rbp), %eax
	cltq
	movsd	%xmm0, -480016(%rbp,%rax,8)
	addl	$1, -3360044(%rbp)
.L34:
	cmpl	$59999, -3360044(%rbp)
	jle	.L35
	call	clock@PLT
	movl	%eax, -3360040(%rbp)
	leaq	-2880016(%rbp), %rax
	movq	%rax, %rdi
	call	bubblesort
	call	clock@PLT
	movl	%eax, %edx
	movl	-3360040(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -3360040(%rbp)
	call	clock@PLT
	movl	%eax, -3360036(%rbp)
	leaq	-2400016(%rbp), %rax
	movq	%rax, %rdi
	call	insertionsort
	call	clock@PLT
	movl	%eax, %edx
	movl	-3360036(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -3360036(%rbp)
	call	clock@PLT
	movl	%eax, -3360032(%rbp)
	leaq	-1920016(%rbp), %rax
	movq	%rax, %rdi
	call	selectionsort
	call	clock@PLT
	movl	%eax, %edx
	movl	-3360032(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -3360032(%rbp)
	call	clock@PLT
	movl	%eax, -3360028(%rbp)
	leaq	-1440016(%rbp), %rax
	movq	%rax, %rdi
	call	shellsort
	call	clock@PLT
	movl	%eax, %edx
	movl	-3360028(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -3360028(%rbp)
	cvtsi2sd	-3360028(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	movapd	%xmm0, %xmm3
	divsd	%xmm1, %xmm3
	cvtsi2sd	-3360036(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	cvtsi2sd	-3360032(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	movapd	%xmm0, %xmm4
	divsd	%xmm1, %xmm4
	cvtsi2sd	-3360040(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm4, %xmm1
	leaq	.LC1(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
