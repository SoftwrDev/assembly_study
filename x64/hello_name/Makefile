APP_NAME=hello_name

.PHONY: build
build: clear
	@nasm -f elf64 -o $(APP_NAME).o $(APP_NAME).asm && \
	mkdir -p bin && \
	ld $(APP_NAME).o -o bin/$(APP_NAME) && \
	rm *.o

.PHONY: clear
clear:
	@rm -rf bin || true