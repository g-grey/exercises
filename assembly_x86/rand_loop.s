# generate random num until it equals 0

.section .data
    output:.asciz "x=%d\n"
.globl main
main:
    push $0
    call time
    addl $4, %esp
    push %eax
    call srand
    addl $4, %esp

rand_int:
    call rand
    push %eax
    push $output
    call printf
    addl $8, %esp
    cmpl $0, %eax
    jne rand_int
    
    push $0
    call exit
