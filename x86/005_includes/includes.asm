%include 'functions.asm'

section .text
	global _start

_start:
	mov eax, msg1
	call sprint

	mov eax, msg2
	call sprint

	call quit

section .data
	msg1 db "Hello, brave new world!", 0Ah
	msg2 db "this is how we recycle in NASM.", 0Ah
