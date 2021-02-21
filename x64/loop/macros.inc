
section .data
    __new_line db 0xa

%macro print 0
    mov rax, 0x1
    mov rdi, 0x1
    pop rsi
    pop rdx
    syscall
%endmacro

%macro println 0
    print
    
    push 1
    push __new_line
    print
%endmacro
