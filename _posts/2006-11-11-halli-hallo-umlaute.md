---
id: 118
title: Halli Hallö Umlaute
date: 2006-11-11T00:40:48+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2006/11/11/halli-hallo-umlaute/
permalink: /2006/11/11/halli-hallo-umlaute/
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - Linux
---
Meine Umlaute unter xorg funktionieren wieder. Yeah. Nun muss ich mir nur noch angewöhnen in deutschen Texten auch wirklich welche zu benutzen (das mit der Kommasetzung ist auch noch &#8220;suboptimal&#8221;). Egal. Wie ich das ans laufen gekriegt hab war eigentlich sehr einfach. In der ~/.Xmodmap einfach folgendes eintragen:
  
`Meine Umlaute unter xorg funktionieren wieder. Yeah. Nun muss ich mir nur noch angewöhnen in deutschen Texten auch wirklich welche zu benutzen (das mit der Kommasetzung ist auch noch &#8220;suboptimal&#8221;). Egal. Wie ich das ans laufen gekriegt hab war eigentlich sehr einfach. In der ~/.Xmodmap einfach folgendes eintragen:
  
` 
  
Danach evtl. noch mit xmodmap .Xmodmap aufrufen und es sollte gehen. Die Umlaute lassen sich dann mit AltGr-{U,O,A,S} schreiben, und die anderen Zeichen auch.