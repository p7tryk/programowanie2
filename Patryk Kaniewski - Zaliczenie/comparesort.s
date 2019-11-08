	.file	"comparesort.c"
	.intel_syntax noprefix
	.text
	.globl	quicksort
	.type	quicksort, @function
quicksort:
.LFB5:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	DWORD PTR -36[rbp], ecx
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -36[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR [rax]
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
.L3:
	add	DWORD PTR -16[rbp], 1
.L2:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm1, QWORD PTR [rax]
	cvtsi2sd	xmm0, DWORD PTR -8[rbp]
	ucomisd	xmm0, xmm1
	ja	.L3
	jmp	.L4
.L5:
	sub	DWORD PTR -12[rbp], 1
.L4:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm1, QWORD PTR [rax]
	cvtsi2sd	xmm0, DWORD PTR -8[rbp]
	ucomisd	xmm1, xmm0
	ja	.L5
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jg	.L6
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR [rax]
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	movsd	xmm0, QWORD PTR [rdx]
	movsd	QWORD PTR [rax], xmm0
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	cvtsi2sd	xmm0, DWORD PTR -4[rbp]
	movsd	QWORD PTR [rax], xmm0
	add	DWORD PTR -16[rbp], 1
	sub	DWORD PTR -12[rbp], 1
.L6:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L2
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jge	.L8
	mov	ecx, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -32[rbp]
	mov	esi, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	quicksort
.L8:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jge	.L10
	mov	ecx, DWORD PTR -36[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	quicksort
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	quicksort, .-quicksort
	.globl	shellsort
	.type	shellsort, @function
shellsort:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	eax, DWORD PTR -44[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[rbp], eax
	jmp	.L12
.L18:
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L13
.L17:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -16[rbp], eax
	jmp	.L14
.L16:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	movsd	xmm0, QWORD PTR [rdx]
	movsd	QWORD PTR [rax], xmm0
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -16[rbp], eax
.L14:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jge	.L15
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movsd	xmm1, QWORD PTR [rax]
	movsd	xmm0, QWORD PTR -8[rbp]
	ucomisd	xmm0, xmm1
	ja	.L16
.L15:
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR [rax], xmm0
	sub	DWORD PTR -20[rbp], 1
.L13:
	cmp	DWORD PTR -20[rbp], 0
	jns	.L17
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[rbp], eax
.L12:
	cmp	DWORD PTR -12[rbp], 0
	jne	.L18
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	shellsort, .-shellsort
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
.LFB7:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -16[rbp], 1
	jmp	.L20
.L25:
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L21
.L24:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm1, QWORD PTR [rax]
	ucomisd	xmm0, xmm1
	jbe	.L22
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 3
	lea	rcx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	movsd	xmm0, QWORD PTR [rdx]
	movsd	QWORD PTR [rax], xmm0
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR [rax], xmm0
.L22:
	sub	DWORD PTR -12[rbp], 1
.L21:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jge	.L24
	add	DWORD PTR -16[rbp], 1
.L20:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L25
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	bubblesort, .-bubblesort
	.globl	insertionsort
	.type	insertionsort, @function
insertionsort:
.LFB8:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -16[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 1
	jmp	.L28
.L33:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L29
.L32:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	add	rax, 1
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	movsd	xmm0, QWORD PTR [rdx]
	movsd	QWORD PTR [rax], xmm0
	sub	DWORD PTR -12[rbp], 1
.L29:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR [rax]
	ucomisd	xmm0, QWORD PTR -8[rbp]
	jbe	.L30
	cmp	DWORD PTR -12[rbp], 0
	jns	.L32
.L30:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR [rax], xmm0
	add	DWORD PTR -16[rbp], 1
.L28:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L33
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	insertionsort, .-insertionsort
	.globl	selectionsort
	.type	selectionsort, @function
selectionsort:
.LFB9:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L36
.L41:
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	jmp	.L37
.L40:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movsd	xmm1, QWORD PTR [rax]
	movsd	xmm0, QWORD PTR -8[rbp]
	ucomisd	xmm0, xmm1
	jbe	.L38
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
.L38:
	add	DWORD PTR -16[rbp], 1
.L37:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L40
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	movsd	xmm0, QWORD PTR [rdx]
	movsd	QWORD PTR [rax], xmm0
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR [rax], xmm0
	add	DWORD PTR -20[rbp], 1
.L36:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L41
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	selectionsort, .-selectionsort
	.globl	fill
	.type	fill, @function
fill:
.LFB10:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	mov	DWORD PTR -20[rbp], 0
	jmp	.L44
.L45:
	call	rand@PLT
	mov	ecx, eax
	mov	edx, 1374389535
	mov	eax, ecx
	imul	edx
	sar	edx, 4
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	imul	eax, eax, 50
	sub	ecx, eax
	mov	eax, ecx
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	cvtsi2sd	xmm0, eax
	movsd	QWORD PTR [rdx], xmm0
	add	DWORD PTR -20[rbp], 1
.L44:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L45
	nop
	mov	rax, QWORD PTR -8[rbp]
	xor	rax, QWORD PTR fs:40
	je	.L46
	call	__stack_chk_fail@PLT
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	fill, .-fill
	.globl	copytab
	.type	copytab, @function
copytab:
.LFB11:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -36[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L48
.L49:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	movsd	xmm0, QWORD PTR [rdx]
	movsd	QWORD PTR [rax], xmm0
	add	DWORD PTR -4[rbp], 1
.L48:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L49
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	copytab, .-copytab
	.globl	reverse
	.type	reverse, @function
reverse:
.LFB12:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -12[rbp], 0
	jmp	.L51
.L52:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	movsd	xmm0, QWORD PTR [rdx]
	movsd	QWORD PTR [rax], xmm0
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR [rax], xmm0
	add	DWORD PTR -12[rbp], 1
.L51:
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cmp	DWORD PTR -12[rbp], eax
	jl	.L52
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	reverse, .-reverse
	.section	.rodata
.LC0:
	.string	"-s"
.LC1:
	.string	"-r"
	.align 8
.LC3:
	.string	"%1.3f\t%1.3f\t%1.3f\t%1.3f\t%1.3f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	DWORD PTR -52[rbp], edi
	mov	QWORD PTR -64[rbp], rsi
	mov	edi, 480000
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	edi, 480000
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 60000
	mov	rdi, rax
	call	fill
	cmp	DWORD PTR -52[rbp], 1
	jle	.L54
	mov	rax, QWORD PTR -64[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rsi, .LC0[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L55
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 60000
	mov	rdi, rax
	call	shellsort
	jmp	.L54
.L55:
	mov	rax, QWORD PTR -64[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rsi, .LC1[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L54
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 60000
	mov	rdi, rax
	call	shellsort
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 60000
	mov	rdi, rax
	call	reverse
.L54:
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 60000
	mov	rsi, rcx
	mov	rdi, rax
	call	copytab
	call	clock@PLT
	mov	DWORD PTR -36[rbp], eax
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, 60000
	mov	rdi, rax
	call	bubblesort
	call	clock@PLT
	mov	edx, eax
	mov	eax, DWORD PTR -36[rbp]
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR -36[rbp], eax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 60000
	mov	rsi, rcx
	mov	rdi, rax
	call	copytab
	call	clock@PLT
	mov	DWORD PTR -32[rbp], eax
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, 60000
	mov	rdi, rax
	call	insertionsort
	call	clock@PLT
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR -32[rbp], eax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 60000
	mov	rsi, rcx
	mov	rdi, rax
	call	copytab
	call	clock@PLT
	mov	DWORD PTR -28[rbp], eax
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, 60000
	mov	rdi, rax
	call	selectionsort
	call	clock@PLT
	mov	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR -28[rbp], eax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 60000
	mov	rsi, rcx
	mov	rdi, rax
	call	copytab
	call	clock@PLT
	mov	DWORD PTR -24[rbp], eax
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, 60000
	mov	rdi, rax
	call	shellsort
	call	clock@PLT
	mov	edx, eax
	mov	eax, DWORD PTR -24[rbp]
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 60000
	mov	rsi, rcx
	mov	rdi, rax
	call	copytab
	call	clock@PLT
	mov	DWORD PTR -20[rbp], eax
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, 60000
	mov	edx, 0
	mov	esi, 60000
	mov	rdi, rax
	call	quicksort
	call	clock@PLT
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR -20[rbp], eax
	cvtsi2sd	xmm0, DWORD PTR -20[rbp]
	movsd	xmm1, QWORD PTR .LC2[rip]
	movapd	xmm4, xmm0
	divsd	xmm4, xmm1
	cvtsi2sd	xmm0, DWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR .LC2[rip]
	movapd	xmm3, xmm0
	divsd	xmm3, xmm1
	cvtsi2sd	xmm0, DWORD PTR -32[rbp]
	movsd	xmm1, QWORD PTR .LC2[rip]
	movapd	xmm2, xmm0
	divsd	xmm2, xmm1
	cvtsi2sd	xmm0, DWORD PTR -28[rbp]
	movsd	xmm1, QWORD PTR .LC2[rip]
	movapd	xmm5, xmm0
	divsd	xmm5, xmm1
	cvtsi2sd	xmm0, DWORD PTR -36[rbp]
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm5
	lea	rdi, .LC3[rip]
	mov	eax, 5
	call	printf@PLT
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
