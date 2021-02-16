%include "macros.inc"

section .bss
    msg resb 1
    counter resb 2

section .text
    global _start
        
_start:

    mov byte[counter], 0
    
    mov byte[msg], 0
    add byte[msg], 48
    
_loop:
    inc byte[msg]
    
    inc byte[counter]
    
    cmp byte[msg], 58
    jne _print
    je _printTen
    
    println
    
    cmp byte[counter], 10
    jne _loop
    
_end:
    mov rax, 0x3c
    syscall
    
_print:    
    push 1
    push msg
    
    println
    
    jmp _loop
          
_printTen:
    mov byte[msg], 0
    add byte[msg], 49

    push 1
    push msg
    print
    
    dec byte[msg]
    
    push 1
    push msg
    println
            
    jmp _end