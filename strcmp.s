	.file	"strcmp.c"
	.section	.rodata
.LC0:
	.string	"abbd"
.LC1:
	.string	"abcd"
	.text
.globl main
	.type	main, @function
main:
.LFB3:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	subq	$16, %rsp
.LCFI2:
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	strcmp
	movl	%eax, -4(%rbp)
	movl	$0, %eax
	leave
	ret
.LFE3:
	.size	main, .-main
	.type	strcmp, @function
strcmp:
.LFB2:
	pushq	%rbp
.LCFI3:
	movq	%rsp, %rbp
.LCFI4:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
#APP
	1:	lodsb
	scasb
	jne 2f
	testb %al,%al
	jne 1b
	xorl %eax,%eax
	jmp 3f
2:	sbbl %eax,%eax
	orb $1,%al
3:
#NO_APP
	movl	%esi, -8(%rbp)
	movl	%edi, -4(%rbp)
	leave
	ret
.LFE2:
	.size	strcmp, .-strcmp
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
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI0-.LFB3
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
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE3:
	.ident	"GCC: (GNU) 4.1.2 20080704 (Red Hat 4.1.2-54)"
	.section	.note.GNU-stack,"",@progbits
