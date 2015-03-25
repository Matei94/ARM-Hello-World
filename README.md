ARM Linux hello world
=====================
Statically linked ARM Linux "hello world" style executable that prints out the
author's name and the current local time and date

Dependencies
============
 *(gcc-arm-linux-gnueabi)[http://packages.ubuntu.com/search?keywords=gcc-arm-linux-gnueabi]
 *(qemu-user-static)[http://packages.ubuntu.com/search?keywords=qemu-user-static]

Install Dependencies
====================
```
sudo apt-get install gcc-arm-linux-gnueabi qemu-user-static
```

Build
=====
```
	make build
```

Run
===
```
	make run
```
