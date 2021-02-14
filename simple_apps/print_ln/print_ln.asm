%include "macros.inc"

section .bss
    text resb 6

section .text
    global _start

_start:
    mov rcx, text
    mov rbx, "Hello"
    mov [rcx], rbx
    
    println rcx, 6

    mov rax, 60
    syscall
