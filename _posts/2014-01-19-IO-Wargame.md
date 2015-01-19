---
layout: post
title: "IO Wargame"
date: 2015-01-19
comments: true
categories:
---
Parts of the passwords so I'm not sharing everything!


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

___





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


