CC=arm-linux-gnueabi-gcc
CFLAGS=-static
QEMU=qemu-arm-static
EXEC_NAME=helloworld.bin

.PHONY: build run clean

build: helloworld.c
	$(CC) $(CFLAGS) -o $(EXEC_NAME) helloworld.c

run: build
	$(QEMU) ./$(EXEC_NAME)

clean:
	rm -rf $(EXEC_NAME)
