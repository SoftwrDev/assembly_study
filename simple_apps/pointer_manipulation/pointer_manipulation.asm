
section .bss
    space resb 6

section .text
    global _start

_start:
    mov rcx, space
    mov rbx, "Hello"
    mov [rcx], rbx

    mov [rcx + 5], byte 0xa ; Adds a \n to the end of the string

    mov rax, 1
    mov rdi, 1
    mov rsi, rcx
    mov rdx, 6
    syscall

    mov rax, 60
    mov rdi, 0
    syscall