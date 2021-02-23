.PHONY: all
all:
ifndef APP_NAME
	echo "APP_NAME not defined" && exit 1
endif


.PHONY: build
build: all clear
	@nasm -felf32 $(APP_NAME).asm && \
	mkdir -p bin && \
	ld -melf_i386 $(APP_NAME).o -o bin/$(APP_NAME) && \
	rm *.o

.PHONY: clear
clear: all
	@rm -rf bin || true
