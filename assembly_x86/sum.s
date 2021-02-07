# sums numbers 1-100

.section .data
    .equ MAX, 100
    output: .asciz "x=%d\n"
.section .text
.globl main
main:
    movl $0, %ebx
    movl $1, %ecx
loop:
    addl %ecx, %ebx
    incl %ecx
    cmpl $MAX, %ecx
    jle loop

    push %ebx
    push $output
    call printf
    addl $8, %esp

    push $0
    call exit
