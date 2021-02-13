%include "constants.inc"
%include "macros.inc"

section .bss
    digitSpace resb 100
    digitSpacePos resb 8

section .text
    global _start

_start:
    mov rax, 123
    call _printInt
    exit

_printInt:
    mov rcx, digitSpace       ; set buffer to rcx
    mov rbx, 0xa              ; set the end of the string as \n
    mov [rcx], rbx            ; set the rbx pointer to be \n
    inc rcx                   ; increment by one the pointer
    mov [digitSpacePos], rcx  ; set current location of the pointer

_printLoop:
    mov rdx, 0                ; set rdx to be 0 (to make the division "clean" with no side effects)
    mov rbx, 10               ; set the divisor to be 10
    div rbx                   ; divides rax for rbx (which is 10)
    push rax                  ; pushes the result to the stack
    add rdx, 48               ; adds 48 to rdx to get the actual character

    mov rcx, [digitSpacePos]  ; set rcx to the location of the digit
    mov [rcx], dl             ; move the remainder to the end of the string
    inc rcx                   ; increment the pointer
    mov [digitSpacePos], rcx  ; reset the current location of the pointer
    
    pop rax                   ; pops division result
    cmp rax, 0                ; compare the division to 0
    jne _printLoop           ; redo the division process while not equal to 0

_printLoop2:
    mov rcx, [digitSpacePos]  ; gets the last position of the string
    
    mov rax, SYS_WRITE
    mov rdi, STD_OUT
    mov rsi, rcx              ; writes the actual character to std_out
    mov rdx, 1
    syscall

    mov rcx, [digitSpacePos]  ; set rcx to the last position
    dec rcx                   ; get the last position - 1 character to rcx pointer
    mov [digitSpacePos], rcx  ; updates the location the pointer points to

    cmp rcx, digitSpace       ; compare rcx to current character
    jge _printLoop2           ; while greater than 0xa, continue

    ret