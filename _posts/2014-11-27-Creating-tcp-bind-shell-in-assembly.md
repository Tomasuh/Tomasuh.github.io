---
layout: post
title: "Creating bind tcp shell in assembly"
date: 2014-11-27
comments: true
categories:
---
As part of the SLAE exam I'm creating a bind tcp shell in assembly by first analyzing the layout of one already existing shellcode displayed in libemu as this:

I looked all functions up and then implemented them in C.
After that I removed as much waste as possible and ended up with this:

Get system calls, good here:
http://docs.cs.up.ac.za/programming/asm/derick_tut/syscalls.html



