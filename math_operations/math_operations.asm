section .data
    digit db 0, 0xa

section .text
    global _start

_start:
    mov rax, 7
    call _printDigit

    mov rax, 60
    mov rdi, 0
    syscall

_printDigit:
    add rax, 48      ; add 0 + rax set value
    mov [digit], al  ; saves al register into digit variable
    
    mov rax, 1       ; sys_write
    mov rdi, 1       ; std_out
    mov rsi, digit   ; write digit to std_out
    mov rdx, 2       ; size of digit (digit + \n)
    syscall
    ret