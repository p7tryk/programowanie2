	.file	"zajecia113.c"
	.text
	.globl	_Z9shellsortP8employeeii
	.type	_Z9shellsortP8employeeii, @function
_Z9shellsortP8employeeii:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movl	%edx, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	-124(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -100(%rbp)
.L7:
	cmpl	$0, -100(%rbp)
	je	.L9
	movl	-124(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -108(%rbp)
.L6:
	cmpl	$0, -108(%rbp)
	js	.L3
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	movq	%rdx, -96(%rbp)
	movq	%rcx, -88(%rbp)
	movq	16(%rax), %rdx
	movq	24(%rax), %rcx
	movq	%rdx, -80(%rbp)
	movq	%rcx, -72(%rbp)
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rdx, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movq	48(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	56(%rax), %edx
	movl	%edx, -40(%rbp)
	movzwl	60(%rax), %eax
	movw	%ax, -36(%rbp)
	movl	-108(%rbp), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
.L5:
	movl	-104(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.L4
	movl	-128(%rbp), %eax
	cltq
	movzbl	-66(%rbp,%rax), %ecx
	movl	-104(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movl	-128(%rbp), %eax
	cltq
	movzbl	30(%rdx,%rax), %eax
	cmpb	%al, %cl
	jle	.L4
	movl	-104(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movl	-104(%rbp), %eax
	subl	-100(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$5, %rax
	subq	%rcx, %rax
	addq	%rax, %rax
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	%rcx, 48(%rax)
	movl	56(%rdx), %ecx
	movl	%ecx, 56(%rax)
	movzwl	60(%rdx), %edx
	movw	%dx, 60(%rax)
	movl	-100(%rbp), %eax
	addl	%eax, -104(%rbp)
	jmp	.L5
.L4:
	movl	-104(%rbp), %eax
	subl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rdx, 16(%rax)
	movq	%rcx, 24(%rax)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rdx, 32(%rax)
	movq	%rcx, 40(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movl	-40(%rbp), %edx
	movl	%edx, 56(%rax)
	movzwl	-36(%rbp), %edx
	movw	%dx, 60(%rax)
	subl	$1, -108(%rbp)
	jmp	.L6
.L3:
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -100(%rbp)
	jmp	.L7
.L9:
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z9shellsortP8employeeii, .-_Z9shellsortP8employeeii
	.section	.rodata
.LC0:
	.string	"rt"
.LC1:
	.string	"resources/people.txt"
.LC2:
	.string	"%29s %29s %d"
.LC3:
	.string	"%s,%s,%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$6240, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -6216(%rbp)
	cmpq	$0, -6216(%rbp)
	sete	%al
	testb	%al, %al
	je	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movl	$0, -6228(%rbp)
.L15:
	cmpl	$99, -6228(%rbp)
	jg	.L13
	leaq	-6208(%rbp), %rcx
	movl	-6228(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	$48, %rax
	addq	%rcx, %rax
	leaq	12(%rax), %rdi
	leaq	-6208(%rbp), %rcx
	movl	-6228(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	$16, %rax
	addq	%rcx, %rax
	leaq	14(%rax), %rcx
	leaq	-6208(%rbp), %rsi
	movl	-6228(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rsi,%rax), %rdx
	movq	-6216(%rbp), %rax
	movq	%rdi, %r8
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fscanf@PLT
	testl	%eax, %eax
	setle	%al
	testb	%al, %al
	jne	.L21
	addl	$1, -6228(%rbp)
	jmp	.L15
.L21:
	nop
.L13:
	movq	-6216(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, -6224(%rbp)
.L17:
	movl	-6224(%rbp), %eax
	cmpl	-6228(%rbp), %eax
	jge	.L16
	movl	-6224(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rbp, %rax
	subq	$6148, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %ecx
	leaq	-6208(%rbp), %rsi
	movl	-6224(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	$16, %rax
	addq	%rsi, %rax
	leaq	14(%rax), %rsi
	leaq	-6208(%rbp), %rdi
	movl	-6224(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	movq	%rsi, %rdx
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -6224(%rbp)
	jmp	.L17
.L16:
	movl	$10, %edi
	call	putchar@PLT
	movl	-6228(%rbp), %ecx
	leaq	-6208(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z9shellsortP8employeeii
	movl	$0, -6220(%rbp)
.L19:
	movl	-6220(%rbp), %eax
	cmpl	-6228(%rbp), %eax
	jge	.L18
	movl	-6220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rbp, %rax
	subq	$6148, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %ecx
	leaq	-6208(%rbp), %rsi
	movl	-6220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	$16, %rax
	addq	%rsi, %rax
	leaq	14(%rax), %rsi
	leaq	-6208(%rbp), %rdi
	movl	-6220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	movq	%rsi, %rdx
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -6220(%rbp)
	jmp	.L19
.L18:
	movl	$0, %eax
.L12:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
