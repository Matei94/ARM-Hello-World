CC=arm-linux-gnueabi-gcc
CFLAGS=-static
EMU=qemu-arm-static
EXEC_NAME=helloworld.bin

.PHONY: build test run clean pack

build: helloworld.c
	$(CC) $(CFLAGS) -o $(EXEC_NAME) helloworld.c

test: build
	$(EMU) ./$(EXEC_NAME)

run: build
	./$(EXEC_NAME)

clean:
	rm -rf $(EXEC_NAME)

pack: build
	zip helloworld.zip *
