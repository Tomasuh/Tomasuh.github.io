---
layout: post
title: "Concept anti-virus in python"
date: 2013-11-23
comments: true
categories:
---

So writing an anti-virus in python, good idea? For performance, no, but for the fun and learning more about identifying malware sure!

For those of you who haven’t explored the python libraries [pefile](http://code.google.com/p/pefile/) and [psutil](http://code.google.com/p/psutil/) I strongly suggest you to do so. They’re both fantastic with great functionalities. And as they both have a great role to play in the AV I will start of with showing some of their good to know functions.
Pefile can be used as the names suggests in reading the pe-format, and as a beginner in the pe world, I found pefile to be a great tool to explore files with.

Lets have a basic example (see end of post for pe-format structure):

```python
import pefile
pe = pefile.PE("readme.exe")
 
for dataSections in pe.sections:
     print dataSections.name
```

