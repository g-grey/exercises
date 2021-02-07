# check if number greater than other

.section .data
    prompt: .asciz "Enter number: "
    input: .asciz "%d"
    output: .asciz "%d greater than %d\n"
    #x: .int 0

.section .bss
    .lcomm x, 4

.section .text 
.globl main
main:
    push $prompt
    call printf
    addl $4, %esp

    push $x
    push $input
    call scanf
    addl $8, %esp    
    movl x, %ebx

    push $prompt
    call printf
    addl $4, %esp

    push $x
    push $input
    call scanf
    addl $8, %esp    
    movl x, %ecx

    cmpl %ecx, %ebx
    jg greater

    push %ebx
    push %ecx
    jmp end

greater:
    push %ecx
    push %ebx

end:
    push $output
    call printf
    addl $12, %esp
    push $0
    call exit
