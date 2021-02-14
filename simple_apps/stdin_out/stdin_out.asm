%include "constants.inc"
%include "macros.inc"

section .text
    global _start

_start:
    print msg1, sizeof1
    get num, 32

    print msg2, sizeof2
    print num, 32

    print endl, 1

    exit

section .bss
    num resb 5

section .data
    msg1 db "Enter a number: "
    sizeof1 equ $-msg1
    
    msg2 db "The number you entered is "
    sizeof2 equ $-msg2

    endl db 0xa