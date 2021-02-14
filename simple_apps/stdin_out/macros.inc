%include "constants.inc"

%macro print 2
    mov rax, SYS_WRITE
    mov rdi, STD_OUT
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro

%macro get 2
    mov rax, SYS_READ
    mov rdi, STD_IN
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro

%macro exit 0
    mov rax, SYS_EXIT
    syscall
%endmacro
