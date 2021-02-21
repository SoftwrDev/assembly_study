section .text
	global _start

_start:
	mov ebx, msg
	mov eax, ebx

nextchar:
	cmp byte[eax], 0 ; checks null character
	jz exit		 ; if null jumps to exit
	inc eax		 ; else increments the eax register
	jmp nextchar	 ; redo the process
exit:
	sub eax, ebx	 ; gets the difference between the starting address and the end

	mov edx, eax 	 ; now we have the size of string
	
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h

section .data
	msg db "Hello, brave new world!", 0xa
