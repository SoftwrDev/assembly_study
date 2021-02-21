section .text
	global _start

_start:
	mov ebx, msg
	mov eax, ebx

nextchar:
	cmp byte[eax], 0
	jz exit
	inc eax
	jmp nextchar
exit:
	sub eax, ebx

	mov edx, eax ; size of string
	
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h

section .data
	msg db "Hello, brave new world!", 0xa
