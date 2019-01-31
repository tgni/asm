	.file	"movstest.c"
	.section	.rodata
.LC1:
	.string	"%s"
.LC0:
	.string	"This is a test message.\n"
	.zero	5
	.text
.globl main
	.type	main, @function
main:
.LFB2:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	subq	$80, %rsp
.LCFI2:
	movq	.LC0(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	.LC0+8(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	.LC0+16(%rip), %rax
	movq	%rax, -32(%rbp)
	movzbl	.LC0+24(%rip), %eax
	movb	%al, -24(%rbp)
	movl	$0, -23(%rbp)
	movb	$0, -19(%rbp)
	movl	$25, -4(%rbp)
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	movl	-4(%rbp), %ecx
#APP
	cld
	rep movsb
#NO_APP
	leaq	-80(%rbp), %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	ret
.LFE2:
	.size	main, .-main
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0x0
	.byte	0x1
	.string	"zR"
	.uleb128 0x1
	.sleb128 -8
	.byte	0x10
	.uleb128 0x1
	.byte	0x3
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE1:
	.ident	"GCC: (GNU) 4.1.2 20080704 (Red Hat 4.1.2-54)"
	.section	.note.GNU-stack,"",@progbits
