%include "macros.inc"

section .text
    global _start
    
_start:  
    push prompt_length
    print
    
    push 5
    push length
    get
       
    push prompt_height
    print
    
    push 5
    push height
    get

    push length
    push height
    calculate_area    
        
    exit

section .data
    prompt_length db "Type the length: ", 0
    prompt_height db "Type the height: ", 0

section .bss
    length resb 5
    height resb 5
    result resb 10