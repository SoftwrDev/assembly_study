.PHONY: build
build: clear
	@nasm -f elf64 -o hello.o hello.asm && \
	mkdir -p bin && \
	ld hello.o -o bin/hello && \
	rm *.o

.PHONY: clear
clear:
	@rm -rf bin || true