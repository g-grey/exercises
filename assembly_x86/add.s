# do some addition

.section .data
    output: .asciz "x=%d\n"
    x: .int 0, 10, 5
.section .text
.globl main
main:
    movl $x, %ebx
    movl (%ebx), %eax 
    addl 4(%ebx), %eax
    addl 8(%ebx), %eax

    push %eax
    push $output
    call printf
    addl $8, %esp

    push $0
    call exit
