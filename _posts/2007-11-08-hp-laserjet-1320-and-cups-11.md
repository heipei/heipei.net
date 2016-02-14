---
id: 152
title: 'HP Laserjet 1320 and Cups > 1.1.*'
date: 2007-11-08T12:13:58+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2007/11/08/hp-laserjet-1320-and-cups-11/
permalink: /2007/11/08/hp-laserjet-1320-and-cups-11/
categories:
  - Geekstuff
  - Gentoo
  - Linux
---
<img src="https://farm1.static.flickr.com/28/61272102_7654bb2b1c.jpg?v=0" class="alignleft" alt="HP Laserjet 1320" />Boy do I hate printers. But there is no getting around it (and I do love printing stuff ;). Ive been happily using my Laserjet 1320 with Cups 1.1.23-r8 on Gentoo, masking any newer versions because they did not work. Well, long story short, today I (accidently) upgraded Cups and the problem I always avoided started showing: Whenever you print something the printer blinks it orange light, waiting for you to press it. After trying ga-zillions of different drivers I stumbled over [this](http://forums.fedoraforum.org/showpost.php?s=feb8fc0be63bffd6667834aa72af8c9a&p=757328&postcount=6) tip which worked for me. Yay! I am never going to touch that piece-of-shit-software again until I buy a new printer. For your convenience, [here is my ppd](/heipei/files/laserjet1320.ppd) which works fine for me (and Cups 1.3.4 by the way).
  
For completeness sake (and in case the other website goes offline), heres what to do with a crappy ppd:
  
Edit the ppd, search for the line:
  
`*InputSlot Tray1/Tray 1: "<<ManualFeed false /MediaPosition 3>> setpagedevice"`
  
In this line, replace 3 with 7, save the file and try printing again.