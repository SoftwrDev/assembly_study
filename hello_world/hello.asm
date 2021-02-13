section .data
	text db "Hello, World!",0xa

section .text
	global _start

_start:
	mov rax, 1    ; sys_write
	mov rdi, 1    ; std_in
	mov rsi, text ; data
	mov rdx, 14   ; size of data
	syscall

	mov rax, 60   ; sys_exit
	mov rdi, 0    ; error code
	syscall
