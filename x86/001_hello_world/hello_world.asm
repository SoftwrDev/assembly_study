section .data
	msg db "Hello World!", 0xa
	sizeof equ $-msg

section .text
	global _start

_start:
	mov eax, 4	; SYS_WRITE
	mov ebx, 1	; STDOUT (file descriptor)
	mov ecx, msg	; buffer
	mov edx, sizeof	; length
	int 80h

	mov eax, 1	; SYS_EXIT
	mov ebx, 0	; error code
	int 80h
