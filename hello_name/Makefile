.PHONY: build
build: clear
	@nasm -f elf64 -o hello_name.o hello_name.asm && \
	mkdir -p bin && \
	ld hello_name.o -o bin/hello_name && \
	rm *.o

.PHONY: clear
clear:
	@rm -rf bin || true