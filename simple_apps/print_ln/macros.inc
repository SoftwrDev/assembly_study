%macro println 2
    mov rcx, %1
    mov [rcx + (%2 - 1)], byte 0xa

    mov rax, 1
    mov rdi, 1
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro