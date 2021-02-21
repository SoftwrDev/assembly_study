%macro print 0
%%print:
    pop rax
    push rax
    mov rbx, 0
%%printLoop:
    inc rax
    inc rbx
    mov cl, [rax]
    cmp cl, 0
    jne %%printLoop
    
    mov rax, 1
    mov rdi, 1
    pop rsi
    mov rdx, rbx
    syscall
%endmacro

%macro get 0
    mov rax, 0
    mov rdi, 0
    pop rsi
    pop rdx
    syscall    
%endmacro

%macro calculate_area 0
    
    pop rax
    pop rbx
    pop rcx
    
    mul rbx
    mov rcx, rax
    push rcx
    print    
%endmacro

%macro exit 0
    mov rax, 60
    syscall
%endmacro