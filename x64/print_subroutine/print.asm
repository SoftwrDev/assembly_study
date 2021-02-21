section .data
    msg db "Hello World!",0xa,0

section .text
    global _start

_start:
    mov rax, msg   ; loads rax with msg
    call _print

    mov rax, 60
    mov rdi, 0
    syscall

_print:
    push rax       ; pushes rax into the stack 
    mov rbx, 0     ; loads rbx as counter
_printLoop:
    inc rax        ; increments the pointer in rax
    inc rbx        ; increments the counter
    mov cl, [rax]  ; moves the value of char* to cl register
    cmp cl, 0      ; checks wheter or not cl is equal to 0
    jne _printLoop ; while not true, calls again _printLoop

    mov rax, 1     ; SYS_WRITE
    mov rdi, 1     ; STDOUT
    pop rsi        ; pops the rax pointer from the stack
    mov rdx, rbx   ; loads the counter for the size of the actual string
    syscall

    ret