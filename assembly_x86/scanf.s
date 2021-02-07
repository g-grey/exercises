# scanf example

.section .data
    prompt: .asciz "Enter number: "
    input: .asciz "%d"
    output: .asciz "You entered %d.\n"
    x: .int 0
.section .text
.globl main
main:
    nop
    push $prompt
    call printf
    addl $4, %esp

    push $x
    push $input
    call scanf
    addl $8, %esp

    push x
    push $output
    call printf
    addl $8, %esp

    push $0
    call exit
