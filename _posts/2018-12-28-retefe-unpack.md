---
layout: post
title: "Retefe static unpacker"
date: 2018-12-28
comments: true
categories:
---

This is a writeup on how to implement an unpacker for current version of the banking malware Retefe.

Resources about the threat:
* [Retefe banking Trojan leverages EternalBlue exploit in Swiss campaigns](https://www.proofpoint.com/us/threat-insight/post/retefe-banking-trojan-leverages-eternalblue-exploit-swiss-campaigns)
* [The Retefe Saga](https://www.govcert.admin.ch/blog/33/the-retefe-saga)
* [Reversing Retefe](https://www.govcert.admin.ch/blog/35/reversing-retefe)
* [New version of Retefe Banking Trojan Uses EternalBlue](https://www.mysonicwall.com/sonicalert/searchresults.aspx?ev=article&id=1094)

Looking at the mapped binary image by IDA shows a large amount of unexplored data that is in the `.data` segment.

![](images/retefe/code-explored.png)

Browsing the `.data` segment with Binary Ninja shows a large segment of data whose top is referenced in a 
copy instruction:

![](images/retefe/copy-instruction.png)

The copy instruction is part of a function that passes the address of this copied data as an argument to a decoding function together with the length of the buffer:

![](images/retefe/decoder-setup.png)

The decoder function passes the buffer length and another int to a function that takes buffer length to the power of that int.
Then a a shift and subtraction is performed. The result is the XOR key that is used to decode the buffer.

![](images/retefe/xor-key.png)

Later on the decode operation is performed:

![](images/retefe/decoder-decode.png)

That the data actually becomes decoded can be verified by a debugger, watching the memory of the data buffer after the decoder function 
has run:

![](images/retefe/dbg.png)

With the above research its possible to write an unpacker.

The actions performed by the unpacker:
* Use yara rules to find buffer location buffer length, number of shifts, subtraction value and power to value of it.
* Calculate the full RVA based on the buffer location as the extracted location is relative to the LEA instruction that references it
* Calculate XOR array based on values extracted with the help of the yara rules
* Extract and decode the script

The sourcecode to do this is available in the github repo [Retefe unpacker](https://github.com/Tomasuh/retefe_unpacker).

Recent hashes that it has been confirmed to work on:
```
352b78b8ed38be7ada1d9f4d82352da5015a853bf3c3bdb8982e4977d98f981c
5c548447203104e9a26c355beaf2367a8fa4793a1b0d3668701ee9ba120b9a7b
1a3f25f4067e50aa113dfd9349fc4bdcf346d2e589ed6b4cebbc0a33e9eea50d
```

Example run:

![](images/retefe/example-run.png)