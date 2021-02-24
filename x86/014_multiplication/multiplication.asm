%include "functions.asm"

section .text
	global _start

_start:
	mov eax, 9999
	mov ebx, 9999
	mul ebx
	call iprintLF

	call quit
