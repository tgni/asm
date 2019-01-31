	.file	"memcpy.c"
.globl a
	.data
	.align 16
	.type	a, @object
	.size	a, 23
a:
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.zero	19
	.text
.globl main
	.type	main, @function
main:
.LFB5:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	movq	a(%rip), %rax
	movq	%rax, b(%rip)
	movq	a+8(%rip), %rax
	movq	%rax, b+8(%rip)
	movl	a+16(%rip), %eax
	movl	%eax, b+16(%rip)
	movzwl	a+20(%rip), %eax
	movw	%ax, b+20(%rip)
	movzbl	a+22(%rip), %eax
	movb	%al, b+22(%rip)
	leave
	ret
.LFE5:
	.size	main, .-main
	.comm	b,23,16
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
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI0-.LFB5
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
