section .data
    ask db "Digite 0 for false or 1 for true: "
    len_ask equ $-ask
    
    yes db "YeeeeeeY", 0xa
    len_yes equ $-yes

    no db "Sorry...", 0xa
    len_no equ $-no

section .bss
    answer resb 1

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, ask
    mov rdx, len_ask
    syscall
   
    mov rax, 0
    mov rdi, 0
    mov rsi, answer
    mov rdx, 1
    syscall
    
    mov rax, answer
    
    cmp byte[rax], '0'
    je _no
    jne _yes

_end:
    mov rax, 60
    syscall

_no:
    mov rax, 1
    mov rdi, 1
    mov rsi, no
    mov rdx, len_no
    syscall
    jmp _end

_yes:
    mov rax, 1
    mov rdi, 1
    mov rsi, yes
    mov rdx, len_yes
    syscall
    jmp _end
