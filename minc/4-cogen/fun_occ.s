	.file	"fun.i"
	.text
	.globl	f00
	.type	f00, @function
f00:
.LFB0:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE0:
	.size	f00, .-f00
	.globl	f01
	.type	f01, @function
f01:
.LFB1:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE1:
	.size	f01, .-f01
	.globl	f02
	.type	f02, @function
f02:
.LFB2:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$2, %rax
	movq	%rax, 48(%rsp)
	movq	$1, %rax
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE2:
	.size	f02, .-f02
	.globl	f03
	.type	f03, @function
f03:
.LFB3:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	0(%rsp), %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE3:
	.size	f03, .-f03
	.globl	f04
	.type	f04, @function
f04:
.LFB4:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	$5, %rax
	movq	%rax, 56(%rsp)
	movq	0(%rsp), %rax
	addq	56(%rsp), %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE4:
	.size	f04, .-f04
	.globl	f05
	.type	f05, @function
f05:
.LFB5:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	0(%rsp), %rax
	movq	$0, 56(%rsp)
	subq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE5:
	.size	f05, .-f05
	.globl	f06
	.type	f06, @function
f06:
.LFB6:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	sete	%al
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE6:
	.size	f06, .-f06
	.globl	f07
	.type	f07, @function
f07:
.LFB7:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	addq	64(%rsp), %rax
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE7:
	.size	f07, .-f07
	.globl	f08
	.type	f08, @function
f08:
.LFB8:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	imulq	64(%rsp), %rax
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE8:
	.size	f08, .-f08
	.globl	f09
	.type	f09, @function
f09:
.LFB9:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	cqto
	idivq	64(%rsp)
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE9:
	.size	f09, .-f09
	.globl	f10
	.type	f10, @function
f10:
.LFB10:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	cqto
	idivq	64(%rsp)
	movq	%rdx, %rax
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE10:
	.size	f10, .-f10
	.globl	f11
	.type	f11, @function
f11:
.LFB11:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	64(%rsp), %rdi
	sete	%al
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE11:
	.size	f11, .-f11
	.globl	f12
	.type	f12, @function
f12:
.LFB12:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	64(%rsp), %rdi
	setne	%al
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE12:
	.size	f12, .-f12
	.globl	f13
	.type	f13, @function
f13:
.LFB13:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	64(%rsp), %rdi
	setl	%al
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE13:
	.size	f13, .-f13
	.globl	f14
	.type	f14, @function
f14:
.LFB14:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	64(%rsp), %rdi
	setg	%al
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE14:
	.size	f14, .-f14
	.globl	f15
	.type	f15, @function
f15:
.LFB15:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	64(%rsp), %rdi
	setle	%al
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE15:
	.size	f15, .-f15
	.globl	f16
	.type	f16, @function
f16:
.LFB16:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	64(%rsp), %rdi
	setge	%al
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE16:
	.size	f16, .-f16
	.globl	f17
	.type	f17, @function
f17:
.LFB17:
	.cfi_startproc
	subq	$224, %rsp
	.cfi_def_cfa_offset	232
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	0(%rsp), %rax
	addq	80(%rsp), %rax
	addq	72(%rsp), %rax
	addq	$224, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE17:
	.size	f17, .-f17
	.globl	f18
	.type	f18, @function
f18:
.LFB18:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	48(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE18:
	.size	f18, .-f18
	.globl	f19
	.type	f19, @function
f19:
.LFB19:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	56(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE19:
	.size	f19, .-f19
	.globl	f20
	.type	f20, @function
f20:
.LFB20:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	64(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE20:
	.size	f20, .-f20
	.globl	f21
	.type	f21, @function
f21:
.LFB21:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	72(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE21:
	.size	f21, .-f21
	.globl	f22
	.type	f22, @function
f22:
.LFB22:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	80(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE22:
	.size	f22, .-f22
	.globl	f23
	.type	f23, @function
f23:
.LFB23:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	88(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE23:
	.size	f23, .-f23
	.globl	f24
	.type	f24, @function
f24:
.LFB24:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	352(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE24:
	.size	f24, .-f24
	.globl	f25
	.type	f25, @function
f25:
.LFB25:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	360(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE25:
	.size	f25, .-f25
	.globl	f26
	.type	f26, @function
f26:
.LFB26:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	368(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE26:
	.size	f26, .-f26
	.globl	f27
	.type	f27, @function
f27:
.LFB27:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	376(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE27:
	.size	f27, .-f27
	.globl	f28
	.type	f28, @function
f28:
.LFB28:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	384(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE28:
	.size	f28, .-f28
	.globl	f29
	.type	f29, @function
f29:
.LFB29:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	392(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE29:
	.size	f29, .-f29
	.globl	f30
	.type	f30, @function
f30:
.LFB30:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	sete	%al
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	imulq	64(%rsp), %rax
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE30:
	.size	f30, .-f30
	.globl	f31
	.type	f31, @function
f31:
.LFB31:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	$3, %rax
	movq	%rax, 56(%rsp)
	movq	$2, %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	cqto
	idivq	64(%rsp)
	cqto
	idivq	56(%rsp)
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE31:
	.size	f31, .-f31
	.globl	f32
	.type	f32, @function
f32:
.LFB32:
	.cfi_startproc
	subq	$224, %rsp
	.cfi_def_cfa_offset	232
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	0(%rsp), %rax
	subq	80(%rsp), %rax
	subq	72(%rsp), %rax
	addq	$224, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE32:
	.size	f32, .-f32
	.globl	f33
	.type	f33, @function
f33:
.LFB33:
	.cfi_startproc
	subq	$232, %rsp
	.cfi_def_cfa_offset	240
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	16(%rsp), %rax
	imulq	80(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	0(%rsp), %rax
	imulq	88(%rsp), %rax
	addq	80(%rsp), %rax
	addq	$232, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE33:
	.size	f33, .-f33
	.globl	f34
	.type	f34, @function
f34:
.LFB34:
	.cfi_startproc
	subq	$224, %rsp
	.cfi_def_cfa_offset	232
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	80(%rsp), %rdi
	setl	%al
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	72(%rsp), %rdi
	setl	%al
	addq	$224, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE34:
	.size	f34, .-f34
	.globl	f35
	.type	f35, @function
f35:
.LFB35:
	.cfi_startproc
	subq	$224, %rsp
	.cfi_def_cfa_offset	232
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	80(%rsp), %rdi
	sete	%al
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	72(%rsp), %rdi
	sete	%al
	addq	$224, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE35:
	.size	f35, .-f35
	.globl	f36
	.type	f36, @function
f36:
.LFB36:
	.cfi_startproc
	subq	$224, %rsp
	.cfi_def_cfa_offset	232
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	72(%rsp), %rdi
	setl	%al
	movq	%rax, 72(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	72(%rsp), %rdi
	sete	%al
	addq	$224, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE36:
	.size	f36, .-f36
	.globl	f37
	.type	f37, @function
f37:
.LFB37:
	.cfi_startproc
	subq	$296, %rsp
	.cfi_def_cfa_offset	304
	movq	%rdi, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r9, 64(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	312(%rsp), %rax
	imulq	120(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	304(%rsp), %rax
	addq	120(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	56(%rsp), %rax
	imulq	128(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	48(%rsp), %rax
	addq	128(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	120(%rsp), %rdi
	setl	%al
	movq	%rax, 120(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	32(%rsp), %rax
	imulq	128(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	24(%rsp), %rax
	addq	128(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	120(%rsp), %rdi
	sete	%al
	addq	$296, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE37:
	.size	f37, .-f37
	.globl	f38
	.type	f38, @function
f38:
.LFB38:
	.cfi_startproc
	subq	$280, %rsp
	.cfi_def_cfa_offset	288
	movq	%rdi, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 56(%rsp)
	movq	296(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	288(%rsp), %rax
	imulq	112(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	56(%rsp), %rax
	addq	112(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	40(%rsp), %rax
	imulq	120(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	32(%rsp), %rax
	addq	120(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	112(%rsp), %rdi
	setl	%al
	movq	%rax, 112(%rsp)
	movq	24(%rsp), %rax
	movq	112(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	%rax, 112(%rsp)
	movq	16(%rsp), %rax
	movq	112(%rsp), %rax
	movq	%rax, 16(%rsp)
	addq	$280, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE38:
	.size	f38, .-f38
	.globl	f39
	.type	f39, @function
f39:
.LFB39:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	$2, %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	addq	64(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	56(%rsp), %rax
	imulq	64(%rsp), %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE39:
	.size	f39, .-f39
	.globl	f40
	.type	f40, @function
f40:
.LFB40:
	.cfi_startproc
	subq	$224, %rsp
	.cfi_def_cfa_offset	232
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	testq	%rdi, %rdi
	jne	.L0
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	8(%rsp), %rax
	imulq	72(%rsp), %rax
	addq	$224, %rsp
	.cfi_def_cfa_offset 	8
	ret
	jmp	.L1
.L0:
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	8(%rsp), %rax
	addq	72(%rsp), %rax
	addq	$224, %rsp
	.cfi_def_cfa_offset 	8
	ret
.L1:
	.cfi_endproc
.LFE40:
	.size	f40, .-f40
	.globl	f41
	.type	f41, @function
f41:
.LFB41:
	.cfi_startproc
	subq	$224, %rsp
	.cfi_def_cfa_offset	232
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	$100, %rax
	movq	%rax, 80(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$0, %rax
	movq	%rax, 80(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	80(%rsp), %rdi
	setg	%al
	movq	%rax, %rdi
	testq	%rdi, %rdi
	jne	.L2
	jmp	.L3
.L2:
	movq	$0, %rax
	movq	%rax, 80(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	80(%rsp), %rdi
	setg	%al
	movq	%rax, %rdi
	testq	%rdi, %rdi
	jne	.L4
	movq	$300, %rax
	movq	%rax, 80(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rax
	movq	%rax, 72(%rsp)
	jmp	.L5
.L4:
	movq	$200, %rax
	movq	%rax, 80(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rax
	movq	%rax, 72(%rsp)
.L5:
.L3:
	movq	72(%rsp), %rax
	addq	$224, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE41:
	.size	f41, .-f41
	.globl	f42
	.type	f42, @function
f42:
.LFB42:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	$0, %rax
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %rax
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	$0, %rax
	movq	%rax, 72(%rsp)
	movq	64(%rsp), %rax
	movq	72(%rsp), %rax
	movq	%rax, 64(%rsp)
	jmp	.L7
.L6:
	movq	56(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	64(%rsp), %rax
	addq	72(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	64(%rsp), %rax
	movq	72(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	$1, %rax
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %rax
	addq	72(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %rax
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)
.L7:
	movq	0(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	0(%rsp), %rax
	imulq	72(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	72(%rsp), %rdi
	setl	%al
	cmpq	$0, %rax
	jne	.L6
	movq	64(%rsp), %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE42:
	.size	f42, .-f42
	.globl	f43
	.type	f43, @function
f43:
.LFB43:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	$2, %rax
	movq	%rax, 64(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.L11
.L10:
	movq	$0, %rax
	movq	%rax, 64(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	0(%rsp), %rax
	cqto
	idivq	72(%rsp)
	movq	%rdx, %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	64(%rsp), %rdi
	sete	%al
	movq	%rax, %rdi
	testq	%rdi, %rdi
	jne	.L8
	jmp	.L9
.L8:
	movq	$0, %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
.L9:
	movq	$1, %rax
	movq	%rax, 64(%rsp)
	movq	56(%rsp), %rax
	addq	64(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
.L11:
	movq	0(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %rax
	imulq	72(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	64(%rsp), %rdi
	setle	%al
	cmpq	$0, %rax
	jne	.L10
	movq	$1, %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE43:
	.size	f43, .-f43
	.globl	f44
	.type	f44, @function
f44:
.LFB44:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	$1, %rax
	movq	%rax, 56(%rsp)
	call	f01@PLT
	addq	56(%rsp), %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE44:
	.size	f44, .-f44
	.globl	f45
	.type	f45, @function
f45:
.LFB45:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	$1, %rax
	movq	%rax, 56(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rdi
	call	f03@PLT
	addq	56(%rsp), %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE45:
	.size	f45, .-f45
	.globl	f46
	.type	f46, @function
f46:
.LFB46:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset	224
	movq	%rdi, 0(%rsp)
	movq	%rsi, 8(%rsp)
	movq	$1, %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	72(%rsp), %rdi
	movq	80(%rsp), %rsi
	call	f07@PLT
	addq	64(%rsp), %rax
	addq	$216, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE46:
	.size	f46, .-f46
	.globl	f47
	.type	f47, @function
f47:
.LFB47:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f18@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE47:
	.size	f47, .-f47
	.globl	f48
	.type	f48, @function
f48:
.LFB48:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f19@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE48:
	.size	f48, .-f48
	.globl	f49
	.type	f49, @function
f49:
.LFB49:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f20@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE49:
	.size	f49, .-f49
	.globl	f50
	.type	f50, @function
f50:
.LFB50:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f21@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE50:
	.size	f50, .-f50
	.globl	f51
	.type	f51, @function
f51:
.LFB51:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f22@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE51:
	.size	f51, .-f51
	.globl	f52
	.type	f52, @function
f52:
.LFB52:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f23@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE52:
	.size	f52, .-f52
	.globl	f53
	.type	f53, @function
f53:
.LFB53:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f24@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE53:
	.size	f53, .-f53
	.globl	f54
	.type	f54, @function
f54:
.LFB54:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f25@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE54:
	.size	f54, .-f54
	.globl	f55
	.type	f55, @function
f55:
.LFB55:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f26@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE55:
	.size	f55, .-f55
	.globl	f56
	.type	f56, @function
f56:
.LFB56:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f27@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE56:
	.size	f56, .-f56
	.globl	f57
	.type	f57, @function
f57:
.LFB57:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f28@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE57:
	.size	f57, .-f57
	.globl	f58
	.type	f58, @function
f58:
.LFB58:
	.cfi_startproc
	subq	$200, %rsp
	.cfi_def_cfa_offset	208
	movq	$10, %rax
	movq	%rax, 48(%rsp)
	movq	$100, %rax
	movq	%rax, 56(%rsp)
	movq	$200, %rax
	movq	%rax, 64(%rsp)
	movq	$300, %rax
	movq	%rax, 72(%rsp)
	movq	$400, %rax
	movq	%rax, 80(%rsp)
	movq	$500, %rax
	movq	%rax, 88(%rsp)
	movq	$600, %rax
	movq	%rax, 96(%rsp)
	movq	$700, %rax
	movq	%rax, 104(%rsp)
	movq	$800, %rax
	movq	%rax, 112(%rsp)
	movq	$900, %rax
	movq	%rax, 120(%rsp)
	movq	$1000, %rax
	movq	%rax, 128(%rsp)
	movq	$1100, %rax
	movq	%rax, 136(%rsp)
	movq	$1200, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	96(%rsp), %r9
	movq	104(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f29@PLT
	addq	48(%rsp), %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE58:
	.size	f58, .-f58
	.globl	f59
	.type	f59, @function
f59:
.LFB59:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f18@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE59:
	.size	f59, .-f59
	.globl	f60
	.type	f60, @function
f60:
.LFB60:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f19@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE60:
	.size	f60, .-f60
	.globl	f61
	.type	f61, @function
f61:
.LFB61:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f20@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE61:
	.size	f61, .-f61
	.globl	f62
	.type	f62, @function
f62:
.LFB62:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f21@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE62:
	.size	f62, .-f62
	.globl	f63
	.type	f63, @function
f63:
.LFB63:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f22@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE63:
	.size	f63, .-f63
	.globl	f64
	.type	f64, @function
f64:
.LFB64:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f23@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE64:
	.size	f64, .-f64
	.globl	f65
	.type	f65, @function
f65:
.LFB65:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f24@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE65:
	.size	f65, .-f65
	.globl	f66
	.type	f66, @function
f66:
.LFB66:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f25@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE66:
	.size	f66, .-f66
	.globl	f67
	.type	f67, @function
f67:
.LFB67:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f26@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE67:
	.size	f67, .-f67
	.globl	f68
	.type	f68, @function
f68:
.LFB68:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f27@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE68:
	.size	f68, .-f68
	.globl	f69
	.type	f69, @function
f69:
.LFB69:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f28@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE69:
	.size	f69, .-f69
	.globl	f70
	.type	f70, @function
f70:
.LFB70:
	.cfi_startproc
	subq	$344, %rsp
	.cfi_def_cfa_offset	352
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	$10, %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movq	200(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	f29@PLT
	addq	144(%rsp), %rax
	addq	$344, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE70:
	.size	f70, .-f70
	.globl	f71
	.type	f71, @function
f71:
.LFB71:
	.cfi_startproc
	subq	$296, %rsp
	.cfi_def_cfa_offset	304
	movq	%rdi, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r9, 64(%rsp)
	movq	$1, %rax
	movq	%rax, 120(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	304(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	128(%rsp), %rdi
	movq	136(%rsp), %rsi
	movq	144(%rsp), %rdx
	movq	152(%rsp), %rcx
	movq	160(%rsp), %r8
	movq	168(%rsp), %r9
	movq	176(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 16(%rsp)
	call	f37@PLT
	addq	120(%rsp), %rax
	addq	$296, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE71:
	.size	f71, .-f71
	.globl	f72
	.type	f72, @function
f72:
.LFB72:
	.cfi_startproc
	subq	$296, %rsp
	.cfi_def_cfa_offset	304
	movq	%rdi, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r9, 64(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	304(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	136(%rsp), %rdi
	movq	144(%rsp), %rsi
	movq	152(%rsp), %rdx
	movq	160(%rsp), %rcx
	movq	168(%rsp), %r8
	movq	176(%rsp), %r9
	movq	184(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 16(%rsp)
	call	f37@PLT
	movq	%rax, 136(%rsp)
	movq	120(%rsp), %rax
	movq	136(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	304(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	136(%rsp), %rdi
	movq	144(%rsp), %rsi
	movq	152(%rsp), %rdx
	movq	160(%rsp), %rcx
	movq	168(%rsp), %r8
	movq	176(%rsp), %r9
	movq	184(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 16(%rsp)
	call	f37@PLT
	movq	%rax, 136(%rsp)
	movq	128(%rsp), %rax
	movq	136(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	120(%rsp), %rax
	addq	136(%rsp), %rax
	addq	$296, %rsp
	.cfi_def_cfa_offset 	8
	ret
	.cfi_endproc
.LFE72:
	.size	f72, .-f72
	.globl	f73
	.type	f73, @function
f73:
.LFB73:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	$0, %rax
	movq	%rax, 56(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	56(%rsp), %rdi
	setle	%al
	movq	%rax, %rdi
	testq	%rdi, %rdi
	jne	.L12
	movq	$1000, %rax
	movq	%rax, 56(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	56(%rsp), %rdi
	setg	%al
	movq	%rax, %rdi
	testq	%rdi, %rdi
	jne	.L14
	movq	0(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	$1, %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	subq	64(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rdi
	call	f73@PLT
	imulq	56(%rsp), %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	jmp	.L15
.L14:
	movq	$1000, %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rdi
	call	f73@PLT
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
.L15:
	jmp	.L13
.L12:
	movq	$1, %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
.L13:
	.cfi_endproc
.LFE73:
	.size	f73, .-f73
	.globl	f74
	.type	f74, @function
f74:
.LFB74:
	.cfi_startproc
	subq	$208, %rsp
	.cfi_def_cfa_offset	216
	movq	%rdi, 0(%rsp)
	movq	$2, %rax
	movq	%rax, 56(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	56(%rsp), %rdi
	setl	%al
	movq	%rax, %rdi
	testq	%rdi, %rdi
	jne	.L16
	movq	$30, %rax
	movq	%rax, 56(%rsp)
	movq	0(%rsp), %rax
	movq	%rax, %rdi
	xorl	%eax, %eax
	cmpq	56(%rsp), %rdi
	setg	%al
	movq	%rax, %rdi
	testq	%rdi, %rdi
	jne	.L18
	movq	$2, %rax
	movq	%rax, 56(%rsp)
	movq	0(%rsp), %rax
	subq	56(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rdi
	call	f74@PLT
	movq	%rax, 56(%rsp)
	movq	$1, %rax
	movq	%rax, 64(%rsp)
	movq	0(%rsp), %rax
	subq	64(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rdi
	call	f74@PLT
	addq	56(%rsp), %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
	jmp	.L19
.L18:
	movq	$30, %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rdi
	call	f74@PLT
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
.L19:
	jmp	.L17
.L16:
	movq	$1, %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 	8
	ret
.L17:
	.cfi_endproc
.LFE74:
	.size	f74, .-f74
.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits