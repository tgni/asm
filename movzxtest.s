#movzxtest.s - 
.section .text
.globl _start
_start:
        nop
        movl $279, %ecx
        movzx %cl, %ebx
        movl $1, %eax
        int $0x80
