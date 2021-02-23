.PHONY: all
all:
ifndef app_name
	echo "app_name not defined" && exit 1
endif


.PHONY: build
build: all clear
	@nasm -felf32 $(app_name).asm && \
	mkdir -p bin && \
	ld -melf_i386 $(app_name).o -o bin/$(app_name) && \
	rm *.o

.PHONY: clear
clear: all
	@rm -rf bin || true
