---
layout: post
title: "Naming function pointers with BinaryNinja"
date: 2017-10-19
comments: true
categories:
---

Almost at the start of Pony version 1.9 an import function is called to load specific functions from dll's and store them in an array.

<img src="/images/loadLibraryRoutine.png" width="70%" height="70%" style="display:block; margin-left: auto; margin-right: auto;">

The first argument, dllStringArray, is a pointer to an array of the following style: ["wanted.dll", "wantedFunction1", "wantedFunction2", "..."]
The second argument, writePointersToArr, is the address where the function pointers will be written to, linearly after each other.

Here is the large call section to the routine:
<img src="/images/loadLibraryCalls.png" width="35%" height="35%" style="display:block; margin-left: auto; margin-right: auto;">

Analysing calls to the imported functions later on will be tricky as BinaryNinja names the pointers as follows:

<img src="/images/before.png" width="65%" height="65%" style="display:block; margin-left: auto; margin-right: auto;">

So a script that renames them to their actual function name is needed:

```python
from binaryninja import *
from collections import deque

def renameVarToFuncNames(bv, latestInstr):
  destArrayPush = latestInstr[0] #Adress base that will be used to store loaded functions addresses
  dllStringArrayPush = latestInstr[1] #Base address for: dll to load and imported function names. Separated with 0 until end which is 00.

  #Read the name of the dll with named functions
  baseAdr = dllStringArrayPush.src.value.value
  cnt = 0
  result = []
  while ord(bv.read(baseAdr+cnt, 1)) != 0:
    entry = ""
    while True:
      c = bv.read(baseAdr+cnt, 1)
      cnt += 1
      if ord(c) == 0:
        break
      entry+=c
    
    result.append(entry)

  moduleName = result[0]
  result = result[1:]

  print "Found loading of dll named %s with the following function imports: " \
    % moduleName + ",".join(result)
  print "Proceding to add imported function symbols for them"

  pointerArray = destArrayPush.src.value.value
  t = bv.parse_type_string("int *")

  n = 0
  while n < len(result):
    print "Adding symbol at 0x%x named %s.%s" % (pointerArray+n*4, moduleName,result[n])
    bv.define_data_var(pointerArray+n*4, t[0])
    bv.define_auto_symbol(Symbol(SymbolType.ImportedFunctionSymbol, \
      pointerArray+n*4, moduleName + "." + result[n]));
    n += 1

def go(bv,function):
  latestInstr = deque([])

  for block in function.low_level_il:
    for il in block:
      if len(latestInstr)==3:
        latestInstr.popleft()
      latestInstr.append(il)

      if il.operation == enums.LowLevelILOperation.LLIL_CALL_STACK_ADJUST:
        renameVarToFuncNames(bv, latestInstr)

  bv.update_analysis()

PluginCommand.register_for_function("Name import functions", "Name import functions", go)

```

And the function pointer names now looks as:

<img src="/images/after.png" width="50%" height="50%" style="display:block; margin-left: auto; margin-right: auto;">
