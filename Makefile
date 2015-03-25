CC=arm-linux-gnueabi-gcc
CFLAGS=-static
EMU=qemu-arm-static
EXEC_NAME=helloworld.bin

.PHONY: build run clean

build: helloworld.c
	$(CC) $(CFLAGS) -o $(EXEC_NAME) helloworld.c

run: build
	$(EMU) ./$(EXEC_NAME)

clean:
	rm -rf $(EXEC_NAME)
