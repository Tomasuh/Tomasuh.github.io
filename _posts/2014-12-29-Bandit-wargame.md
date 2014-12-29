---
layout: post
title: "Bandit | a wargame @ overthewire.org -  solutions level 0-23"
date: 2014-12-29
comments: true
categories:
---
This post is more of a self note of my progress in the [Bandit wargame](http://overthewire.org/wargames/bandit/).

It's an not all to advanced wargame that offers a really good recap in usage of common tools in linux.
Some levels I'll only saved the passwords because of the solutions being too trivial, others the solution are included.
If you want a good walkthrough there are much better posts, for example:

* [blog.moz-code.org/search/label/bandit walkthrough](http://blog.moz-code.org/search/label/bandit%20walkthrough/)
* [rundata.wordpress.com/2013/03/21/overthewire-bandit-wargame-solutions-1-24](http://rundata.wordpress.com/2013/03/21/overthewire-bandit-wargame-solutions-1-24/)
* [zer0w1re.wordpress.com/2014/07/28/over-the-wire-bandit-walkthrough](http://zer0w1re.wordpress.com/2014/07/28/over-the-wire-bandit-walkthrough/)

My solutions:

```
level1:
boJ9jbbUNNfktd78OOpsqOltutMc3MY1
level2:
CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
level3:
UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
level4:
pIwrPrtPN36QITSp3EQaw936yaFoFgAB
level5:
koReBOKuIDDepwhWk7jZC0RTdopnAYKh
level6:
cat $(find * -size 1033c -type f -readable ! -perm +x)
DXjZPULLxYr17uwoI01bNLQbtFemEgo7
level7:
find / -size 33c -user bandit7 -group bandit6  2> /dev/null
HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
level8:
grep millionth data.txt
millionth	cvX2JJa4CFALtqS87jk27qwqGhBM9plV
level9:
sort -d data.txt | uniq -u
UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR
level10:
strings data.txt | grep -e ^=
========== password
========== ism
========== truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
level11:
base64 -d data.txt 
The password is IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
level12:
cat data.txt | tr 'N-Z A-M n-z a-m' 'A-M N-Z a-m n-z'
The password is 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu
level13:
xxd -r data.txt > reverted.gz

file reverted.gz
reverted: gzip compressed data, was "data2.bin", from Unix, last modified: Fri Nov 14 10:32:20 2014, max compression

gzip -d reverted.gz

file reverted
reverted: bzip2 compressed data, block size = 900k
mv reverted reverted.bz2
bzip2 -d reverted.bz2
file reverted
reverted: gzip compressed data, was "data4.bin", from Unix, last modified: Fri Nov 14 10:32:20 2014, max compression
mv reverted reverted.gz
gzip -d reverted.gz
file reverted
reverted: POSIX tar archive (GNU)
tar -xf reverted, extracted data5.bin
file data5.bin
data5.bin: POSIX tar archive (GNU)
tar -xf data5.bin, extracted data6.bin
file data6.bin 
data6.bin: bzip2 compressed data, block size = 900k
bzip2 -d data6.bin
bzip2: Can't guess original name for data6.bin -- using data6.bin.out
file data6.bin.out 
data6.bin.out: POSIX tar archive (GNU)
tar -xf data6.bin.out, extractaed data8.bin
bandit12@melinda:/tmp/apan$ file data8.bin 
data8.bin: gzip compressed data, was "data9.bin", from Unix, last modified: Fri Nov 14 10:32:20 2014, max compression
bandit12@melinda:/tmp/apan$ mv data8.bin data8.gz
bandit12@melinda:/tmp/apan$ gzip -d data8.gz
bandit12@melinda:/tmp/apan$ file data8
data8: ASCII text
bandit12@melinda:/tmp/apan$ cat data8 
The password is 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL


level14:
bandit13@melinda:~$ ssh -i sshkey.private bandit14@localhost
Could not create directory '/home/bandit13/.ssh'.
bandit14@melinda:~$ cat  /etc/bandit_pass/bandit14 
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e

level15:
bandit14@melinda:~$ nc localhost 30000
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
Correct!
BfMYroe26WYalil77FoDi9qh59eK5xNr

level16:
bandit15@melinda:~$ openssl s_client -quiet -connect localhost:30001
depth=0 CN = li190-250.members.linode.com
verify error:num=18:self signed certificate
verify return:1
depth=0 CN = li190-250.members.linode.com
verify return:1
BfMYroe26WYalil77FoDi9qh59eK5xNr
Correct!
cluFn7wTiGryunymYOu4RcffSxQluehd

read:errno=0

level17:
bandit16@melinda:~$ nmap localhost -p 31000-32000 --open

Starting Nmap 6.40 ( http://nmap.org ) at 2014-12-28 16:59 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.00089s latency).
Not shown: 996 closed ports
PORT      STATE SERVICE
31046/tcp open  unknown
31518/tcp open  unknown
31691/tcp open  unknown
31790/tcp open  unknown
31960/tcp open  unknown

Nmap done: 1 IP address (1 host up) scanned in 0.08 seconds
bandit16@melinda:~$ nmap localhost -p 31000-32000       

Starting Nmap 6.40 ( http://nmap.org ) at 2014-12-28 16:59 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.00095s latency).
Not shown: 996 closed ports
PORT      STATE SERVICE
31046/tcp open  unknown
31518/tcp open  unknown
31691/tcp open  unknown
31790/tcp open  unknown
31960/tcp open  unknown

Nmap done: 1 IP address (1 host up) scanned in 0.08 seconds
bandit16@melinda:~$ nc localhost 31046
ll
ll
^C
bandit16@melinda:~$ nc localhost 31518
ll
^C
bandit16@melinda:~$ nc localhost 31518
^C
bandit16@melinda:~$ nc localhost 31691
ls
ls
^C
bandit16@melinda:~$ nc localhost 31790
l
^C
bandit16@melinda:~$ nc localhost 31960
ll 
ll

bandit16@melinda:~$ openssl s_client -quiet -connect localhost:31518
depth=0 CN = li190-250.members.linode.com
verify error:num=18:self signed certificate
verify return:1
depth=0 CN = li190-250.members.linode.com
verify return:1
cluFn7wTiGryunymYOu4RcffSxQluehd
cluFn7wTiGryunymYOu4RcffSxQluehd
^C


bandit16@melinda:~$ openssl s_client -quiet -connect localhost:31790
depth=0 CN = li190-250.members.linode.com
verify error:num=18:self signed certificate
verify return:1
depth=0 CN = li190-250.members.linode.com
verify return:1
cluFn7wTiGryunymYOu4RcffSxQluehd
Correct!
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAvmOkuifmMg6HL2YPIOjon6iWfbp7c3jx34YkYWqUH57SUdyJ
imZzeyGC0gtZPGujUSxiJSWI/oTqexh+cAMTSMlOJf7+BrJObArnxd9Y7YT2bRPQ
Ja6Lzb558YW3FZl87ORiO+rW4LCDCNd2lUvLE/GL2GWyuKN0K5iCd5TbtJzEkQTu
DSt2mcNn4rhAL+JFr56o4T6z8WWAW18BR6yGrMq7Q/kALHYW3OekePQAzL0VUYbW
JGTi65CxbCnzc/w4+mqQyvmzpWtMAzJTzAzQxNbkR2MBGySxDLrjg0LWN6sK7wNX
x0YVztz/zbIkPjfkU1jHS+9EbVNj+D1XFOJuaQIDAQABAoIBABagpxpM1aoLWfvD
KHcj10nqcoBc4oE11aFYQwik7xfW+24pRNuDE6SFthOar69jp5RlLwD1NhPx3iBl
J9nOM8OJ0VToum43UOS8YxF8WwhXriYGnc1sskbwpXOUDc9uX4+UESzH22P29ovd
d8WErY0gPxun8pbJLmxkAtWNhpMvfe0050vk9TL5wqbu9AlbssgTcCXkMQnPw9nC
YNN6DDP2lbcBrvgT9YCNL6C+ZKufD52yOQ9qOkwFTEQpjtF4uNtJom+asvlpmS8A
vLY9r60wYSvmZhNqBUrj7lyCtXMIu1kkd4w7F77k+DjHoAXyxcUp1DGL51sOmama
+TOWWgECgYEA8JtPxP0GRJ+IQkX262jM3dEIkza8ky5moIwUqYdsx0NxHgRRhORT
8c8hAuRBb2G82so8vUHk/fur85OEfc9TncnCY2crpoqsghifKLxrLgtT+qDpfZnx
SatLdt8GfQ85yA7hnWWJ2MxF3NaeSDm75Lsm+tBbAiyc9P2jGRNtMSkCgYEAypHd
HCctNi/FwjulhttFx/rHYKhLidZDFYeiE/v45bN4yFm8x7R/b0iE7KaszX+Exdvt
SghaTdcG0Knyw1bpJVyusavPzpaJMjdJ6tcFhVAbAjm7enCIvGCSx+X3l5SiWg0A
R57hJglezIiVjv3aGwHwvlZvtszK6zV6oXFAu0ECgYAbjo46T4hyP5tJi93V5HDi
Ttiek7xRVxUl+iU7rWkGAXFpMLFteQEsRr7PJ/lemmEY5eTDAFMLy9FL2m9oQWCg
R8VdwSk8r9FGLS+9aKcV5PI/WEKlwgXinB3OhYimtiG2Cg5JCqIZFHxD6MjEGOiu
L8ktHMPvodBwNsSBULpG0QKBgBAplTfC1HOnWiMGOU3KPwYWt0O6CdTkmJOmL8Ni
blh9elyZ9FsGxsgtRBXRsqXuz7wtsQAgLHxbdLq/ZJQ7YfzOKU4ZxEnabvXnvWkU
YOdjHdSOoKvDQNWu6ucyLRAWFuISeXw9a/9p7ftpxm0TSgyvmfLF2MIAEwyzRqaM
77pBAoGAMmjmIJdjp+Ez8duyn3ieo36yrttF5NSsJLAbxFpdlc1gvtGCWW+9Cq0b
dxviW8+TFVEBl1O4f7HVm6EpTscdDxU+bCXWkfjuRb7Dy9GOtt9JPsX8MBTakzh3
vBgsyi/sN3RqRBcGU40fOoZyfAMT8s1m/uYv52O6IgeuZ/ujbjY=
-----END RSA PRIVATE KEY-----

read:errno=0

Added the private key into a file and chmoded it, 6400 then:
bandit16@melinda:/tmp/fisk$ ssh -i fisk.private bandit17@localhost


bandit17:
bandit17@melinda:~$ grep -Fxvf passwords.old passwords.new
kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd
Credits: http://stackoverflow.com/a/4079109

bandit18:
bandit17@melinda:~$ ssh bandit18@localhost and press ctr^c in the right time breaking the execution, hackish solution.
bandit18@melinda:~$ cat readme 
IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x

bandit19:
bandit19@melinda:~$ ./bandit20-do cat /etc/bandit_pass/bandit20
GbKksEFF4yrVs6il55v6gwY5aVje5f0j

bandit20:
bandit20@melinda:~$ echo "GbKksEFF4yrVs6il55v6gwY5aVje5f0j" | nc -l 5000&
[4] 2824
bandit20@melinda:~$ ./suconnect 5000                      
Read: GbKksEFF4yrVs6il55v6gwY5aVje5f0j
Password matches, sending next password
gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr

bandit21:
bandit21@melinda:~$ cat /etc/cron.d/cronjob_bandit22
* * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
bandit21@melinda:~$ cat /usr/bin/cronjob_bandit22.sh
#!/bin/bash
chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
bandit21@melinda:~$ cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI

bandit22:
bandit22@melinda:/tmp/fis$ cp /usr/bin/cronjob_bandit23.sh .
Change file to:
#!/bin/bash

myname=bandit23
mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)

echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"

cat /etc/bandit_pass/$myname > /tmp/$mytarget

And look at the output:
Copying passwordfile /etc/bandit_pass/bandit23 to /tmp/8ca319486bfbbc3663ea0fbe81326349
cronjob_bandit23.sh: line 8: /tmp/8ca319486bfbbc3663ea0fbe81326349: Permission denied
bandit22@melinda:/tmp/fis$ cat /tmp/8ca319486bfbbc3663ea0fbe81326349
jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n
bandit23:
bandit23@melinda:/tmp/fiska$ cat /etc/cron.d/cronjob_bandit24
* * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
Make a shell script:
#!/bin/bash
mkdir /tmp/fiskenfisk
cat /etc/bandit_pass/bandit24 > /tmp/fiskenfisk/the
place it in /var/spool/bandit24/ and wait for it to execute.

bandit23@melinda:/tmp/thaPW$ cat /tmp/fiskenfisk/the 
UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ

```