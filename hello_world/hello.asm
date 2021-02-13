section .data
	text db "Hello, World!",0xa

section .text
	global _start

_start:
	call _printHello
	call _exit

_printHello:
	mov rax, 1    ; sys_write
	mov rdi, 1    ; std_out
	mov rsi, text ; data
	mov rdx, 14   ; size of data
	syscall

	ret

_exit:
	mov rax, 60   ; sys_exit
	mov rdi, 0    ; error code
	syscall