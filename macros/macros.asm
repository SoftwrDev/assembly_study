%include "macros.inc"

section .data:
    text db "Hello, World!", 0xa 

section .text:
    global _start

_start:
    print text, 14
    exit
