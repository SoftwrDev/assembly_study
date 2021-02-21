APP_NAME=hello_world

.PHONY: build
build: clear
	@nasm -felf32 $(APP_NAME).asm && \
	mkdir -p bin && \
	ld -melf_i386 $(APP_NAME).o -o bin/$(APP_NAME) && \
	rm *.o

.PHONY: clear
clear:
	@rm -rf bin || true
