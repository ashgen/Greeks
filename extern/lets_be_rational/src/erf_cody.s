	.file	"erf_cody.cpp"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB54:
	.text
.LHOTB54:
	.p2align 4,,15
	.globl	_Z6calerfdi
	.type	_Z6calerfdi, @function
_Z6calerfdi:
.LFB100:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movapd	%xmm0, %xmm2
	movsd	.LC4(%rip), %xmm4
	movapd	%xmm0, %xmm3
	movsd	.LC5(%rip), %xmm0
	andpd	%xmm4, %xmm2
	comisd	%xmm2, %xmm0
	jb	.L57
	comisd	.LC6(%rip), %xmm2
	ja	.L68
	pxor	%xmm2, %xmm2
	movsd	.LC0(%rip), %xmm4
	movsd	.LC1(%rip), %xmm1
.L4:
	mulsd	%xmm3, %xmm1
	testl	%edi, %edi
	divsd	%xmm4, %xmm1
	je	.L52
	cmpl	$2, %edi
	movsd	.LC14(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	jne	.L52
	movsd	%xmm0, (%rsp)
	movapd	%xmm2, %xmm0
	call	__exp_finite
	movsd	(%rsp), %xmm1
	mulsd	%xmm0, %xmm1
.L52:
	movapd	%xmm1, %xmm0
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	.cfi_restore_state
	movsd	.LC15(%rip), %xmm0
	comisd	%xmm2, %xmm0
	jb	.L59
	movsd	.LC16(%rip), %xmm1
	cmpl	$2, %edi
	movsd	.LC18(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	addsd	%xmm2, %xmm0
	addsd	.LC17(%rip), %xmm1
	mulsd	%xmm2, %xmm0
	addsd	.LC20(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	addsd	.LC19(%rip), %xmm1
	mulsd	%xmm2, %xmm0
	addsd	.LC22(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	addsd	.LC21(%rip), %xmm1
	mulsd	%xmm2, %xmm0
	addsd	.LC24(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	addsd	.LC23(%rip), %xmm1
	mulsd	%xmm2, %xmm0
	addsd	.LC26(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	addsd	.LC25(%rip), %xmm1
	mulsd	%xmm2, %xmm0
	addsd	.LC28(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	addsd	.LC27(%rip), %xmm1
	mulsd	%xmm2, %xmm0
	addsd	.LC30(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	addsd	.LC29(%rip), %xmm1
	mulsd	%xmm2, %xmm0
	addsd	.LC32(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	addsd	.LC31(%rip), %xmm1
	divsd	%xmm0, %xmm1
	je	.L66
	movsd	.LC33(%rip), %xmm5
	pxor	%xmm7, %xmm7
	mulsd	%xmm2, %xmm5
	comisd	%xmm7, %xmm5
	jbe	.L61
	movapd	%xmm4, %xmm0
	movsd	.LC34(%rip), %xmm6
	andpd	%xmm5, %xmm0
	comisd	%xmm0, %xmm6
	jbe	.L12
	cvttsd2siq	%xmm5, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm0, %xmm6
	cmpnlesd	%xmm5, %xmm6
	movapd	%xmm6, %xmm5
	movsd	.LC14(%rip), %xmm6
	andpd	%xmm6, %xmm5
	subsd	%xmm5, %xmm0
	movapd	%xmm0, %xmm5
.L12:
	movsd	.LC35(%rip), %xmm6
.L13:
	mulsd	.LC36(%rip), %xmm5
	movsd	%xmm7, 24(%rsp)
	movl	%edi, 20(%rsp)
	movaps	%xmm4, 32(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm1, (%rsp)
	xorpd	%xmm5, %xmm6
	movapd	%xmm6, %xmm0
	movapd	%xmm2, %xmm6
	addsd	%xmm5, %xmm2
	mulsd	%xmm5, %xmm0
	subsd	%xmm5, %xmm6
	mulsd	%xmm6, %xmm2
	subsd	%xmm2, %xmm0
	call	__exp_finite
	movsd	(%rsp), %xmm1
	movl	20(%rsp), %edi
	movsd	8(%rsp), %xmm3
	mulsd	%xmm0, %xmm1
	movapd	32(%rsp), %xmm4
	movsd	24(%rsp), %xmm7
.L15:
	testl	%edi, %edi
	jne	.L24
	movsd	.LC14(%rip), %xmm0
	comisd	%xmm3, %xmm7
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	jbe	.L52
	movsd	.LC35(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L68:
	mulsd	%xmm2, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	.LC11(%rip), %xmm4
	mulsd	%xmm2, %xmm1
	addsd	%xmm2, %xmm4
	addsd	.LC8(%rip), %xmm1
	mulsd	%xmm2, %xmm4
	addsd	.LC12(%rip), %xmm4
	mulsd	%xmm2, %xmm1
	addsd	.LC9(%rip), %xmm1
	mulsd	%xmm2, %xmm4
	addsd	.LC13(%rip), %xmm4
	mulsd	%xmm2, %xmm1
	addsd	.LC10(%rip), %xmm1
	mulsd	%xmm2, %xmm4
	addsd	.LC0(%rip), %xmm4
	mulsd	%xmm2, %xmm1
	addsd	.LC1(%rip), %xmm1
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L59:
	comisd	.LC37(%rip), %xmm2
	jnb	.L69
.L16:
	movapd	%xmm2, %xmm0
	movsd	.LC14(%rip), %xmm5
	movsd	.LC44(%rip), %xmm6
	cmpl	$2, %edi
	mulsd	%xmm2, %xmm0
	movapd	%xmm5, %xmm1
	divsd	%xmm0, %xmm1
	movsd	.LC41(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm6
	addsd	.LC42(%rip), %xmm0
	mulsd	%xmm1, %xmm6
	addsd	.LC45(%rip), %xmm6
	mulsd	%xmm1, %xmm0
	addsd	.LC43(%rip), %xmm0
	mulsd	%xmm1, %xmm6
	addsd	.LC47(%rip), %xmm6
	mulsd	%xmm1, %xmm0
	addsd	.LC46(%rip), %xmm0
	mulsd	%xmm1, %xmm6
	addsd	.LC49(%rip), %xmm6
	mulsd	%xmm1, %xmm0
	addsd	.LC48(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	.LC50(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm1
	addsd	.LC51(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC40(%rip), %xmm1
	subsd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	je	.L66
	movsd	.LC33(%rip), %xmm0
	pxor	%xmm7, %xmm7
	mulsd	%xmm2, %xmm0
	comisd	%xmm7, %xmm0
	jbe	.L63
	movapd	%xmm4, %xmm6
	movsd	.LC34(%rip), %xmm8
	andpd	%xmm0, %xmm6
	comisd	%xmm6, %xmm8
	ja	.L70
.L21:
	movsd	.LC35(%rip), %xmm6
.L22:
	movsd	.LC36(%rip), %xmm5
	movl	%edi, 20(%rsp)
	movaps	%xmm4, 32(%rsp)
	mulsd	%xmm0, %xmm5
	movsd	%xmm7, 24(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm1, (%rsp)
	xorpd	%xmm5, %xmm6
	movapd	%xmm6, %xmm0
	movapd	%xmm2, %xmm6
	addsd	%xmm5, %xmm2
	mulsd	%xmm5, %xmm0
	subsd	%xmm5, %xmm6
	mulsd	%xmm6, %xmm2
	subsd	%xmm2, %xmm0
	call	__exp_finite
	movsd	(%rsp), %xmm1
	movl	20(%rsp), %edi
	movapd	32(%rsp), %xmm4
	mulsd	%xmm0, %xmm1
	movsd	24(%rsp), %xmm7
	movsd	8(%rsp), %xmm3
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L69:
	pxor	%xmm7, %xmm7
	cmpl	$2, %edi
	movapd	%xmm7, %xmm1
	jne	.L15
	comisd	.LC38(%rip), %xmm2
	jnb	.L26
	comisd	.LC39(%rip), %xmm2
	jb	.L16
	movsd	.LC40(%rip), %xmm1
	divsd	%xmm2, %xmm1
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L66:
	pxor	%xmm7, %xmm7
.L26:
	comisd	%xmm3, %xmm7
	jbe	.L52
	movsd	.LC53(%rip), %xmm0
	comisd	%xmm3, %xmm0
	ja	.L37
	movsd	.LC33(%rip), %xmm0
	mulsd	%xmm3, %xmm0
	comisd	%xmm7, %xmm0
	jbe	.L64
	andpd	%xmm0, %xmm4
	movsd	.LC34(%rip), %xmm2
	comisd	%xmm4, %xmm2
	jbe	.L31
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm4, %xmm4
	movsd	.LC14(%rip), %xmm2
	cvtsi2sdq	%rax, %xmm4
	movapd	%xmm4, %xmm7
	cmpnlesd	%xmm0, %xmm7
	movapd	%xmm7, %xmm0
	andpd	%xmm2, %xmm0
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
.L31:
	movapd	%xmm0, %xmm6
.L32:
	mulsd	.LC36(%rip), %xmm6
	movapd	%xmm3, %xmm0
	movsd	%xmm1, (%rsp)
	subsd	%xmm6, %xmm0
	addsd	%xmm6, %xmm3
	mulsd	%xmm6, %xmm6
	mulsd	%xmm0, %xmm3
	addsd	%xmm6, %xmm3
	movapd	%xmm3, %xmm0
	call	__exp_finite
	addsd	%xmm0, %xmm0
	movsd	(%rsp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L24:
	cmpl	$1, %edi
	jne	.L26
	comisd	%xmm3, %xmm7
	jbe	.L52
	movsd	.LC52(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L61:
	movsd	.LC35(%rip), %xmm6
	movapd	%xmm4, %xmm0
	movsd	.LC34(%rip), %xmm8
	xorpd	%xmm6, %xmm5
	andpd	%xmm5, %xmm0
	comisd	%xmm0, %xmm8
	ja	.L71
.L14:
	xorpd	%xmm6, %xmm5
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L71:
	cvttsd2siq	%xmm5, %rax
	pxor	%xmm0, %xmm0
	movsd	.LC14(%rip), %xmm8
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm0, %xmm10
	cmpnlesd	%xmm5, %xmm10
	movapd	%xmm10, %xmm5
	andpd	%xmm8, %xmm5
	subsd	%xmm5, %xmm0
	movapd	%xmm0, %xmm5
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L70:
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm6, %xmm6
	cvtsi2sdq	%rax, %xmm6
	movapd	%xmm6, %xmm11
	cmpnlesd	%xmm0, %xmm11
	movapd	%xmm11, %xmm0
	andpd	%xmm5, %xmm0
	subsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm0
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L37:
.L6:
	movsd	.LC3(%rip), %xmm1
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L63:
	movsd	.LC35(%rip), %xmm6
	movapd	%xmm4, %xmm8
	movsd	.LC34(%rip), %xmm9
	xorpd	%xmm6, %xmm0
	andpd	%xmm0, %xmm8
	comisd	%xmm8, %xmm9
	jbe	.L23
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm8, %xmm8
	cvtsi2sdq	%rax, %xmm8
	movapd	%xmm8, %xmm12
	cmpnlesd	%xmm0, %xmm12
	movapd	%xmm12, %xmm0
	andpd	%xmm5, %xmm0
	subsd	%xmm0, %xmm8
	movapd	%xmm8, %xmm0
.L23:
	xorpd	%xmm6, %xmm0
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L64:
	movsd	.LC35(%rip), %xmm6
	movsd	.LC34(%rip), %xmm2
	xorpd	%xmm6, %xmm0
	andpd	%xmm0, %xmm4
	comisd	%xmm4, %xmm2
	jbe	.L33
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm4, %xmm4
	movsd	.LC14(%rip), %xmm2
	cvtsi2sdq	%rax, %xmm4
	movapd	%xmm4, %xmm7
	cmpnlesd	%xmm0, %xmm7
	movapd	%xmm7, %xmm0
	andpd	%xmm2, %xmm0
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
.L33:
	xorpd	%xmm0, %xmm6
	jmp	.L32
	.cfi_endproc
.LFE100:
	.size	_Z6calerfdi, .-_Z6calerfdi
	.section	.text.unlikely
.LCOLDE54:
	.text
.LHOTE54:
	.section	.text.unlikely
.LCOLDB55:
	.text
.LHOTB55:
	.p2align 4,,15
	.globl	erf_cody
	.type	erf_cody, @function
erf_cody:
.LFB101:
	.cfi_startproc
	movsd	.LC4(%rip), %xmm4
	movapd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm2
	andpd	%xmm4, %xmm1
	comisd	%xmm1, %xmm2
	jb	.L102
	comisd	.LC6(%rip), %xmm1
	ja	.L110
	movsd	.LC1(%rip), %xmm2
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L102:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movapd	%xmm0, %xmm3
	movsd	.LC15(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jb	.L104
	movsd	.LC16(%rip), %xmm0
	movsd	.LC18(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm2
	pxor	%xmm6, %xmm6
	addsd	.LC17(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC20(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC19(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC22(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC21(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC24(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC23(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC26(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC25(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC28(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC27(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC30(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC29(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC32(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC31(%rip), %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, (%rsp)
	movsd	.LC33(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	comisd	%xmm6, %xmm0
	jbe	.L105
	andpd	%xmm0, %xmm4
	movsd	.LC34(%rip), %xmm5
	movsd	.LC14(%rip), %xmm2
	comisd	%xmm4, %xmm5
	jbe	.L88
.L108:
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%rax, %xmm4
	movapd	%xmm4, %xmm7
	cmpnlesd	%xmm0, %xmm7
	movapd	%xmm7, %xmm0
	andpd	%xmm2, %xmm0
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
.L88:
	movsd	.LC35(%rip), %xmm5
.L89:
	movsd	.LC36(%rip), %xmm4
	movsd	%xmm3, 24(%rsp)
	mulsd	%xmm0, %xmm4
	movsd	%xmm6, 16(%rsp)
	movsd	%xmm2, 8(%rsp)
	xorpd	%xmm4, %xmm5
	movapd	%xmm5, %xmm0
	movapd	%xmm1, %xmm5
	addsd	%xmm4, %xmm1
	mulsd	%xmm4, %xmm0
	subsd	%xmm4, %xmm5
	mulsd	%xmm5, %xmm1
	subsd	%xmm1, %xmm0
	call	__exp_finite
	mulsd	(%rsp), %xmm0
	movsd	8(%rsp), %xmm2
	movsd	16(%rsp), %xmm6
	movsd	24(%rsp), %xmm3
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
.L85:
	comisd	%xmm3, %xmm6
	ja	.L111
.L77:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L110:
	mulsd	%xmm1, %xmm1
	movsd	.LC7(%rip), %xmm2
	movsd	.LC11(%rip), %xmm3
	mulsd	%xmm1, %xmm2
	addsd	%xmm1, %xmm3
	addsd	.LC8(%rip), %xmm2
	mulsd	%xmm1, %xmm3
	addsd	.LC12(%rip), %xmm3
	mulsd	%xmm1, %xmm2
	addsd	.LC9(%rip), %xmm2
	mulsd	%xmm1, %xmm3
	addsd	.LC13(%rip), %xmm3
	mulsd	%xmm1, %xmm2
	addsd	.LC10(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm3, %xmm1
	addsd	.LC1(%rip), %xmm2
	addsd	.LC0(%rip), %xmm1
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L104:
	.cfi_def_cfa_offset 48
	comisd	.LC37(%rip), %xmm1
	movsd	.LC14(%rip), %xmm0
	pxor	%xmm6, %xmm6
	jnb	.L85
	movapd	%xmm1, %xmm0
	movsd	.LC14(%rip), %xmm2
	movsd	.LC44(%rip), %xmm6
	mulsd	%xmm1, %xmm0
	movapd	%xmm2, %xmm5
	divsd	%xmm0, %xmm5
	movsd	.LC41(%rip), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm5, %xmm6
	addsd	.LC42(%rip), %xmm0
	mulsd	%xmm5, %xmm6
	addsd	.LC45(%rip), %xmm6
	mulsd	%xmm5, %xmm0
	addsd	.LC43(%rip), %xmm0
	mulsd	%xmm5, %xmm6
	addsd	.LC47(%rip), %xmm6
	mulsd	%xmm5, %xmm0
	addsd	.LC46(%rip), %xmm0
	mulsd	%xmm5, %xmm6
	addsd	.LC49(%rip), %xmm6
	mulsd	%xmm5, %xmm0
	addsd	.LC48(%rip), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	.LC50(%rip), %xmm0
	mulsd	%xmm5, %xmm0
	mulsd	%xmm6, %xmm5
	pxor	%xmm6, %xmm6
	addsd	.LC51(%rip), %xmm5
	divsd	%xmm5, %xmm0
	movsd	.LC40(%rip), %xmm5
	subsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)
	movsd	.LC33(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	comisd	%xmm6, %xmm0
	jbe	.L106
	andpd	%xmm0, %xmm4
	movsd	.LC34(%rip), %xmm5
	comisd	%xmm4, %xmm5
	jbe	.L88
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L105:
	movsd	.LC35(%rip), %xmm5
	movsd	.LC34(%rip), %xmm7
	xorpd	%xmm5, %xmm0
	movsd	.LC14(%rip), %xmm2
	andpd	%xmm0, %xmm4
	comisd	%xmm4, %xmm7
	ja	.L109
.L90:
	xorpd	%xmm5, %xmm0
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L106:
	movsd	.LC35(%rip), %xmm5
	movsd	.LC34(%rip), %xmm7
	xorpd	%xmm5, %xmm0
	andpd	%xmm0, %xmm4
	comisd	%xmm4, %xmm7
	jbe	.L90
.L109:
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%rax, %xmm4
	movapd	%xmm4, %xmm7
	cmpnlesd	%xmm0, %xmm7
	movapd	%xmm7, %xmm0
	andpd	%xmm2, %xmm0
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L111:
	movsd	.LC35(%rip), %xmm1
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	xorpd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE101:
	.size	erf_cody, .-erf_cody
	.section	.text.unlikely
.LCOLDE55:
	.text
.LHOTE55:
	.section	.text.unlikely
.LCOLDB56:
	.text
.LHOTB56:
	.p2align 4,,15
	.globl	erfc_cody
	.type	erfc_cody, @function
erfc_cody:
.LFB102:
	.cfi_startproc
	movapd	%xmm0, %xmm1
	movsd	.LC4(%rip), %xmm4
	movapd	%xmm0, %xmm3
	movsd	.LC5(%rip), %xmm0
	andpd	%xmm4, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L140
	comisd	.LC6(%rip), %xmm1
	ja	.L146
	movsd	.LC0(%rip), %xmm1
	movsd	.LC1(%rip), %xmm2
.L115:
	mulsd	%xmm2, %xmm3
	movsd	.LC14(%rip), %xmm0
	divsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L140:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movsd	.LC15(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jb	.L142
	movsd	.LC16(%rip), %xmm0
	movsd	.LC18(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm2
	pxor	%xmm5, %xmm5
	addsd	.LC17(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC20(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC19(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC22(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC21(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC24(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC23(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC26(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC25(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC28(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC27(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC30(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC29(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC32(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC31(%rip), %xmm0
	divsd	%xmm2, %xmm0
	movsd	.LC33(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm0, 8(%rsp)
	comisd	%xmm5, %xmm2
	jbe	.L143
	andpd	%xmm2, %xmm4
	movsd	.LC34(%rip), %xmm0
	comisd	%xmm4, %xmm0
	jbe	.L128
	cvttsd2siq	%xmm2, %rax
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%rax, %xmm4
	movapd	%xmm4, %xmm0
	cmpnlesd	%xmm2, %xmm0
	movsd	.LC14(%rip), %xmm2
	andpd	%xmm2, %xmm0
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm2
.L128:
	movsd	.LC35(%rip), %xmm0
.L129:
	mulsd	.LC36(%rip), %xmm2
	movapd	%xmm1, %xmm4
	movsd	%xmm3, 24(%rsp)
	movsd	%xmm5, 16(%rsp)
	subsd	%xmm2, %xmm4
	xorpd	%xmm2, %xmm0
	addsd	%xmm2, %xmm1
	mulsd	%xmm2, %xmm0
	mulsd	%xmm4, %xmm1
	subsd	%xmm1, %xmm0
	call	__exp_finite
	mulsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm5
	movsd	24(%rsp), %xmm3
.L125:
	comisd	%xmm3, %xmm5
	ja	.L147
.L117:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L146:
	mulsd	%xmm1, %xmm1
	movsd	.LC7(%rip), %xmm2
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	%xmm1, %xmm0
	addsd	.LC8(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC12(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC9(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	addsd	.LC13(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LC10(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm1
	addsd	.LC1(%rip), %xmm2
	addsd	.LC0(%rip), %xmm1
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L142:
	.cfi_def_cfa_offset 48
	comisd	.LC37(%rip), %xmm1
	pxor	%xmm5, %xmm5
	movapd	%xmm5, %xmm0
	jnb	.L125
	movapd	%xmm1, %xmm0
	movsd	.LC14(%rip), %xmm6
	movsd	.LC41(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	movapd	%xmm6, %xmm7
	movsd	.LC44(%rip), %xmm5
	divsd	%xmm0, %xmm7
	mulsd	%xmm7, %xmm2
	addsd	%xmm7, %xmm5
	movapd	%xmm7, %xmm0
	addsd	.LC42(%rip), %xmm2
	mulsd	%xmm7, %xmm5
	addsd	.LC45(%rip), %xmm5
	mulsd	%xmm7, %xmm2
	addsd	.LC43(%rip), %xmm2
	mulsd	%xmm7, %xmm5
	addsd	.LC47(%rip), %xmm5
	mulsd	%xmm7, %xmm2
	addsd	.LC46(%rip), %xmm2
	mulsd	%xmm7, %xmm5
	addsd	.LC49(%rip), %xmm5
	mulsd	%xmm7, %xmm2
	addsd	.LC48(%rip), %xmm2
	mulsd	%xmm5, %xmm0
	pxor	%xmm5, %xmm5
	addsd	.LC51(%rip), %xmm0
	mulsd	%xmm7, %xmm2
	addsd	.LC50(%rip), %xmm2
	mulsd	%xmm7, %xmm2
	divsd	%xmm0, %xmm2
	movsd	.LC40(%rip), %xmm0
	subsd	%xmm2, %xmm0
	movsd	.LC33(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm1, %xmm0
	comisd	%xmm5, %xmm2
	movsd	%xmm0, 8(%rsp)
	jbe	.L144
	andpd	%xmm2, %xmm4
	movsd	.LC34(%rip), %xmm0
	comisd	%xmm4, %xmm0
	jbe	.L128
	cvttsd2siq	%xmm2, %rax
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%rax, %xmm4
	movapd	%xmm4, %xmm0
	cmpnlesd	%xmm2, %xmm0
	andpd	%xmm6, %xmm0
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm2
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L143:
	movsd	.LC35(%rip), %xmm0
	movsd	.LC34(%rip), %xmm6
	xorpd	%xmm0, %xmm2
	andpd	%xmm2, %xmm4
	comisd	%xmm4, %xmm6
	ja	.L148
.L130:
	xorpd	%xmm0, %xmm2
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L147:
	movsd	.LC52(%rip), %xmm1
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L148:
	.cfi_restore_state
	cvttsd2siq	%xmm2, %rax
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%rax, %xmm4
	movapd	%xmm4, %xmm6
	cmpnlesd	%xmm2, %xmm6
	movapd	%xmm6, %xmm2
	movsd	.LC14(%rip), %xmm6
	andpd	%xmm6, %xmm2
	subsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm2
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L144:
	movsd	.LC35(%rip), %xmm0
	movsd	.LC34(%rip), %xmm7
	xorpd	%xmm0, %xmm2
	andpd	%xmm2, %xmm4
	comisd	%xmm4, %xmm7
	jbe	.L130
	cvttsd2siq	%xmm2, %rax
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%rax, %xmm4
	movapd	%xmm4, %xmm7
	cmpnlesd	%xmm2, %xmm7
	movapd	%xmm7, %xmm2
	andpd	%xmm6, %xmm2
	subsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm2
	jmp	.L130
	.cfi_endproc
.LFE102:
	.size	erfc_cody, .-erfc_cody
	.section	.text.unlikely
.LCOLDE56:
	.text
.LHOTE56:
	.section	.text.unlikely
.LCOLDB57:
	.text
.LHOTB57:
	.p2align 4,,15
	.globl	erfcx_cody
	.type	erfcx_cody, @function
erfcx_cody:
.LFB103:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movapd	%xmm0, %xmm2
	movsd	.LC4(%rip), %xmm3
	movsd	.LC5(%rip), %xmm1
	andpd	%xmm3, %xmm0
	comisd	%xmm0, %xmm1
	jb	.L177
	comisd	.LC6(%rip), %xmm0
	ja	.L182
	movsd	.LC14(%rip), %xmm5
	movsd	.LC0(%rip), %xmm4
	movapd	%xmm5, %xmm0
	movsd	.LC1(%rip), %xmm3
.L152:
	mulsd	%xmm3, %xmm2
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	divsd	%xmm4, %xmm2
	subsd	%xmm2, %xmm5
	mulsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm1
	movapd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L177:
	.cfi_restore_state
	movsd	.LC15(%rip), %xmm1
	comisd	%xmm0, %xmm1
	jb	.L179
	movsd	.LC16(%rip), %xmm1
	movsd	.LC18(%rip), %xmm4
	mulsd	%xmm0, %xmm1
	addsd	%xmm0, %xmm4
	addsd	.LC17(%rip), %xmm1
	mulsd	%xmm0, %xmm4
	addsd	.LC20(%rip), %xmm4
	mulsd	%xmm0, %xmm1
	addsd	.LC19(%rip), %xmm1
	mulsd	%xmm0, %xmm4
	addsd	.LC22(%rip), %xmm4
	mulsd	%xmm0, %xmm1
	addsd	.LC21(%rip), %xmm1
	mulsd	%xmm0, %xmm4
	addsd	.LC24(%rip), %xmm4
	mulsd	%xmm0, %xmm1
	addsd	.LC23(%rip), %xmm1
	mulsd	%xmm0, %xmm4
	addsd	.LC26(%rip), %xmm4
	mulsd	%xmm0, %xmm1
	addsd	.LC25(%rip), %xmm1
	mulsd	%xmm0, %xmm4
	addsd	.LC28(%rip), %xmm4
	mulsd	%xmm0, %xmm1
	addsd	.LC27(%rip), %xmm1
	mulsd	%xmm0, %xmm4
	addsd	.LC30(%rip), %xmm4
	mulsd	%xmm0, %xmm1
	addsd	.LC29(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	%xmm4, %xmm0
	pxor	%xmm4, %xmm4
	addsd	.LC31(%rip), %xmm1
	addsd	.LC32(%rip), %xmm0
	divsd	%xmm0, %xmm1
.L157:
	comisd	%xmm2, %xmm4
	ja	.L183
.L154:
	movapd	%xmm1, %xmm0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L182:
	.cfi_restore_state
	mulsd	%xmm0, %xmm0
	movsd	%xmm2, 24(%rsp)
	movsd	.LC7(%rip), %xmm3
	movsd	.LC11(%rip), %xmm4
	mulsd	%xmm0, %xmm3
	addsd	%xmm0, %xmm4
	addsd	.LC8(%rip), %xmm3
	mulsd	%xmm0, %xmm4
	addsd	.LC12(%rip), %xmm4
	mulsd	%xmm0, %xmm3
	addsd	.LC9(%rip), %xmm3
	mulsd	%xmm0, %xmm4
	addsd	.LC13(%rip), %xmm4
	mulsd	%xmm0, %xmm3
	addsd	.LC10(%rip), %xmm3
	mulsd	%xmm0, %xmm4
	addsd	.LC0(%rip), %xmm4
	mulsd	%xmm0, %xmm3
	addsd	.LC1(%rip), %xmm3
	movsd	%xmm4, 8(%rsp)
	movsd	%xmm3, 16(%rsp)
	call	__exp_finite
	movsd	.LC14(%rip), %xmm5
	movsd	8(%rsp), %xmm4
	movsd	16(%rsp), %xmm3
	movsd	24(%rsp), %xmm2
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L179:
	comisd	.LC37(%rip), %xmm0
	jb	.L158
	comisd	.LC38(%rip), %xmm0
	pxor	%xmm4, %xmm4
	movapd	%xmm4, %xmm1
	jnb	.L157
	comisd	.LC39(%rip), %xmm0
	jb	.L158
	movsd	.LC40(%rip), %xmm1
	pxor	%xmm4, %xmm4
	divsd	%xmm0, %xmm1
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L158:
	movapd	%xmm0, %xmm4
	movsd	.LC14(%rip), %xmm1
	mulsd	%xmm0, %xmm4
	movsd	.LC44(%rip), %xmm5
	divsd	%xmm4, %xmm1
	movsd	.LC41(%rip), %xmm4
	mulsd	%xmm1, %xmm4
	addsd	%xmm1, %xmm5
	addsd	.LC42(%rip), %xmm4
	mulsd	%xmm1, %xmm5
	addsd	.LC45(%rip), %xmm5
	mulsd	%xmm1, %xmm4
	addsd	.LC43(%rip), %xmm4
	mulsd	%xmm1, %xmm5
	addsd	.LC47(%rip), %xmm5
	mulsd	%xmm1, %xmm4
	addsd	.LC46(%rip), %xmm4
	mulsd	%xmm1, %xmm5
	addsd	.LC49(%rip), %xmm5
	mulsd	%xmm1, %xmm4
	addsd	.LC48(%rip), %xmm4
	mulsd	%xmm1, %xmm4
	addsd	.LC50(%rip), %xmm4
	mulsd	%xmm1, %xmm4
	mulsd	%xmm5, %xmm1
	addsd	.LC51(%rip), %xmm1
	divsd	%xmm1, %xmm4
	movsd	.LC40(%rip), %xmm1
	subsd	%xmm4, %xmm1
	pxor	%xmm4, %xmm4
	comisd	%xmm2, %xmm4
	divsd	%xmm0, %xmm1
	jbe	.L154
.L183:
	movsd	.LC53(%rip), %xmm0
	comisd	%xmm2, %xmm0
	ja	.L169
	movsd	.LC33(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	comisd	%xmm4, %xmm0
	jbe	.L180
	andpd	%xmm0, %xmm3
	movsd	.LC34(%rip), %xmm4
	comisd	%xmm3, %xmm4
	ja	.L184
.L165:
	movsd	.LC36(%rip), %xmm3
	movsd	%xmm1, 8(%rsp)
	mulsd	%xmm0, %xmm3
	movapd	%xmm2, %xmm0
	addsd	%xmm3, %xmm2
	subsd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm2
	addsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm0
	call	__exp_finite
	addsd	%xmm0, %xmm0
	movsd	8(%rsp), %xmm1
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L169:
	.cfi_restore_state
	movsd	.LC3(%rip), %xmm1
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L184:
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm3, %xmm3
	movsd	.LC14(%rip), %xmm4
	cvtsi2sdq	%rax, %xmm3
	movapd	%xmm3, %xmm6
	cmpnlesd	%xmm0, %xmm6
	movapd	%xmm6, %xmm0
	andpd	%xmm4, %xmm0
	subsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L180:
	movsd	.LC35(%rip), %xmm4
	movsd	.LC34(%rip), %xmm5
	xorpd	%xmm4, %xmm0
	andpd	%xmm0, %xmm3
	comisd	%xmm3, %xmm5
	jbe	.L166
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm3, %xmm3
	movsd	.LC14(%rip), %xmm5
	cvtsi2sdq	%rax, %xmm3
	movapd	%xmm3, %xmm7
	cmpnlesd	%xmm0, %xmm7
	movapd	%xmm7, %xmm0
	andpd	%xmm5, %xmm0
	subsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
.L166:
	xorpd	%xmm4, %xmm0
	jmp	.L165
	.cfi_endproc
.LFE103:
	.size	erfcx_cody, .-erfcx_cody
	.section	.text.unlikely
.LCOLDE57:
	.text
.LHOTE57:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1111197613
	.long	1084635257
	.align 8
.LC1:
	.long	1398608410
	.long	1084822209
	.align 8
.LC3:
	.long	1487780761
	.long	2146426097
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC4:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC5:
	.long	0
	.long	1071513600
	.align 8
.LC6:
	.long	3085479262
	.long	1017118298
	.align 8
.LC7:
	.long	1513210658
	.long	1070057360
	.align 8
.LC8:
	.long	1054098409
	.long	1074350587
	.align 8
.LC9:
	.long	1295408547
	.long	1079801678
	.align 8
.LC10:
	.long	2291618443
	.long	1081579459
	.align 8
.LC11:
	.long	875541214
	.long	1077385710
	.align 8
.LC12:
	.long	3581826488
	.long	1080983753
	.align 8
.LC13:
	.long	1385999816
	.long	1083443831
	.align 8
.LC14:
	.long	0
	.long	1072693248
	.align 8
.LC15:
	.long	0
	.long	1074790400
	.align 8
.LC16:
	.long	1012881429
	.long	1045896816
	.align 8
.LC17:
	.long	149622846
	.long	1071779285
	.align 8
.LC18:
	.long	4102479573
	.long	1076854118
	.align 8
.LC19:
	.long	901299202
	.long	1075954732
	.align 8
.LC20:
	.long	2969554407
	.long	1079864425
	.align 8
.LC21:
	.long	3519291600
	.long	1079019424
	.align 8
.LC22:
	.long	3850925214
	.long	1082182002
	.align 8
.LC23:
	.long	2259395682
	.long	1081256489
	.align 8
.LC24:
	.long	3970080039
	.long	1083790734
	.align 8
.LC25:
	.long	640393123
	.long	1082888094
	.align 8
.LC26:
	.long	896340482
	.long	1084863897
	.align 8
.LC27:
	.long	3244148951
	.long	1083883568
	.align 8
.LC28:
	.long	2091978374
	.long	1085344414
	.align 8
.LC29:
	.long	555970411
	.long	1084229160
	.align 8
.LC30:
	.long	1070140861
	.long	1084939964
	.align 8
.LC31:
	.long	2144533646
	.long	1083390299
	.align 8
.LC32:
	.long	2144558945
	.long	1083390299
	.align 8
.LC33:
	.long	0
	.long	1076887552
	.align 8
.LC34:
	.long	0
	.long	1127219200
	.section	.rodata.cst16
	.align 16
.LC35:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC36:
	.long	0
	.long	1068498944
	.align 8
.LC37:
	.long	206158430
	.long	1077578498
	.align 8
.LC38:
	.long	2050445613
	.long	2143421346
	.align 8
.LC39:
	.long	0
	.long	1099955947
	.align 8
.LC40:
	.long	1346542445
	.long	1071779287
	.align 8
.LC41:
	.long	414483911
	.long	1066448123
	.align 8
.LC42:
	.long	3119539702
	.long	1070828152
	.align 8
.LC43:
	.long	237249976
	.long	1071058916
	.align 8
.LC44:
	.long	1351090395
	.long	1074039892
	.align 8
.LC45:
	.long	1750462637
	.long	1073608605
	.align 8
.LC46:
	.long	2550826031
	.long	1069554077
	.align 8
.LC47:
	.long	1041378361
	.long	1071703193
	.align 8
.LC48:
	.long	2362885557
	.long	1066432580
	.align 8
.LC49:
	.long	2440920551
	.long	1068432450
	.align 8
.LC50:
	.long	225567548
	.long	1061524989
	.align 8
.LC51:
	.long	2685713105
	.long	1063461191
	.align 8
.LC52:
	.long	0
	.long	1073741824
	.align 8
.LC53:
	.long	2611340116
	.long	-1069899580
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
