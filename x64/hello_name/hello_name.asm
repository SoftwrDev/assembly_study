section .data
    askName db "What is your name? "
    sayHello db "Hello, "

section .bss
    name resb 16      ; allocate 16 bytes

section .text
    global _start

_start:
    call _askName
    call _sayHello

    mov rax, 60       ; sys_exit
    mov rdi, 0        ; error code
    syscall

_askName:
    mov rax, 1        ; sys_write
    mov rdi, 1        ; std_out
    mov rsi, askName  ; write askName to std_out
    mov rdx, 19
    syscall
    ret

_sayHello:
    mov rax, 0        ; sys_read
    mov rdi, 0        ; std_in
    mov rsi, name     ; write to name to variable
    mov rdx, 16       ; name size
    syscall
    
    mov rax, 1        ; sys_write
    mov rdi, 1        ; std_out
    mov rsi, sayHello ; write sayHello to std_out
    mov rdx, 7        ; sayHello size
    syscall

    mov rax, 1        ; sys_write
    mov rdi, 1        ; std_out
    mov rsi, name     ; write name to std_out
    mov rdx, 16       ; name size
    syscall
    
    ret