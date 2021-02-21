
section .bss
    space resb 6
    sizeof equ $-space

section .text
    global _start

_start:
    mov rcx, space
    mov rbx, "Hello"
    mov [rcx], rbx

    mov [rcx + (sizeof - 1)], byte 0xa ; Adds a \n to the end of the string

    mov rax, 1
    mov rdi, 1
    mov rsi, rcx
    mov rdx, sizeof
    syscall

    mov rax, 60
    mov rdi, 0
    syscall