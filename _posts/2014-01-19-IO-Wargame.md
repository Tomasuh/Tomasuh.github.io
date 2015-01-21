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




##Level04

___


##Level05

___


##Level06

___


##Level07

___


