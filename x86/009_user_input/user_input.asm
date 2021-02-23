%include "functions.asm"

section .text
	global _start

_start:
	mov eax, msg1
	call sprint

	mov eax, 3
	mov ebx, 0
	mov ecx, sinput
	mov edx, 255
	int 80h

	mov eax, msg2
	call sprint

	mov eax, sinput
	call sprint

	call quit

section .data
	msg1: db "Please enter your name: ", 0h
	msg2: db "Hello, ", 0h

section .bss
	sinput: resb 255
