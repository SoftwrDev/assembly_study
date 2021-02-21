%include "constants.inc"

section .data
    text db "Hello", 0xa

section .bss
    digitSpace resb 6

section .text
    global _start

_start:
    mov rcx, digitSpace
    mov rbx, text
    mov [rcx], rbx

    mov rax, SYS_WRITE
    mov rdi, STD_OUT
    mov rsi, [rcx]
    mov rdx, 6
    syscall

    mov rax, SYS_EXIT
    mov rdi, 0
    syscall