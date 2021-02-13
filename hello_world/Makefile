.PHONY: build
build:
	@nasm -f elf64 -o hello.o hello.asm && \
	ld hello.o -o bin/hello && \
	rm *.o