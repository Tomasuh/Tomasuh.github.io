---
layout: post
title: "SLAE | Setting up the environment"
date: 2015-10-23
comments: true
categories:
---

I'm studying for the [SecurityTube Linux Assembly Expert](http://www.securitytube-training.com/online-courses/securitytube-linux-assembly-expert/) 
and the environment required some tinkering with scripts etcetera so 
here comes a couple of them good to have and will be used in future posts 
involving the certification.

## compile.sh

Used to compile the code, execstack set and -N is for writable data sections.

```bash
#!/bin/bash

nasm -f elf32 -o $1.o $1.asm
ld -o $1 $1.o -z execstack -N

echo 'Done'
```

## shellcode.sh

Oneliner for extracting the dissassembled bytes from the binary with the help of objdump.
Found [here](http://www.commandlinefu.com/commands/view/12151/get-shellcode-of-the-binary-using-objdump).

```bash
objdump -D $1|grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-7 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'

```

## format_shellcode.py

Prints the shellcode in two forms, one fitting for nasm byte array and the other working with C, Python.
Argument is the binary name.
Example:

````
root@kali:~/Desktop/SLAE/tools# python format_shellcode.py decoder
Python style shellcode:
\xeb\x1c\x5e\x31\xc9\x31\xd2\x31\xc0\x8a\x04\x16\xfe\xc2\x32\x04\x16\xfe\xc2\x88\x04\x0e\x41\x83\xfa\x48\x72\xed\xeb\x05\xe8\xdf\xff\xff\xff\xa3\x92\x1b\xdb\x0e\xbe\x6f\x6b\x81\xb0\x6b\xb0\x1b\x58\x5a\xb1\x72\x7d\xb5\xec\x87\xb6\xa5\x77\xd4\x66\x21\x26\x35\xf8\x66\xe6\x3b\x0a\x07\xc7\xc7\x77\xa1\xa0\x99\xa8\x1a\xc1\xb6\x7b\xfe\x7e\x0f\xe7\x8a\x66\xdd\x22\x13\xec\xb1\x4e\xbf\xf7\x26\x4f\xac\x8c\x60\x0d\xa2\xc3\x4c\x38\xff\x9a

NASM stylish:
0xeb,0x1c,0x5e,0x31,0xc9,0x31,0xd2,0x31,0xc0,0x8a,0x04,0x16,0xfe,0xc2,0x32,0x04,0x16,0xfe,0xc2,0x88,0x04,0x0e,0x41,0x83,0xfa,0x48,0x72,0xed,0xeb,0x05,0xe8,0xdf,0xff,0xff,0xff,0xa3,0x92,0x1b,0xdb,0x0e,0xbe,0x6f,0x6b,0x81,0xb0,0x6b,0xb0,0x1b,0x58,0x5a,0xb1,0x72,0x7d,0xb5,0xec,0x87,0xb6,0xa5,0x77,0xd4,0x66,0x21,0x26,0x35,0xf8,0x66,0xe6,0x3b,0x0a,0x07,0xc7,0xc7,0x77,0xa1,0xa0,0x99,0xa8,0x1a,0xc1,0xb6,0x7b,0xfe,0x7e,0x0f,0xe7,0x8a,0x66,0xdd,0x22,0x13,0xec,0xb1,0x4e,0xbf,0xf7,0x26,0x4f,0xac,0x8c,0x60,0x0d,0xa2,0xc3,0x4c,0x38,0xff,0x9a
```

```python
#!/usr/bin/python

import sys,os

stream = os.popen(os.path.dirname(os.path.realpath(__file__))+'/shellcode.sh ' + os.getcwd()+"/"+sys.argv[1])


shellcode = stream.read()

print "Python style shellcode:"
print shellcode

shellcode = shellcode.strip("\n\"")
shellcode = shellcode.replace("\\","")
input = shellcode
theList = input.split("x")
out = ""
for value in theList:
	if value != '':
		out += "0x" + value + ","

print "NASM stylish:"
print out[:-1]
```

## runShellcode.py
Runs given shellcode with the help of Python by using ctypes.
The script is a slightly modified version of [this](http://hacktracking.blogspot.se/2015/05/execute-shellcode-in-python.html).

Example usage with an encoded Hello world shellcode:
```bash
root@kali:~/Desktop/SLAE/tools# python runShellcode.py '\xeb\x1c\x5e.............x16\xfe\xc2'
Hi mate
```

The script:

```
#!/usr/bin/python

from ctypes import CDLL, c_char_p, c_void_p, memmove, cast, CFUNCTYPE
from sys import argv


libc = CDLL('libc.so.6')

shellcode = argv[1].replace('\\x', '').decode('hex')

sc = c_char_p(shellcode)
size = len(shellcode)
addr = c_void_p(libc.valloc(size))
memmove(addr, sc, size)
libc.mprotect(addr, size, 0x7)
run = cast(addr, CFUNCTYPE(c_void_p))
run()
```