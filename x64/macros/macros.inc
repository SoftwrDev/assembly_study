STD_IN equ 0
STD_OUT equ 1
STD_ERR equ 2

SYS_READ equ 0
SYS_WRITE equ 1
SYS_EXIT equ 60

%macro print 2
    mov rax, SYS_WRITE
    mov rdi, STD_OUT
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro

%macro exit 0
    mov rax, SYS_EXIT
    mov rdi, 0
    syscall
%endmacro