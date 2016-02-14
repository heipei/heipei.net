---
id: 109
title: Principle Of Least Surprise
date: 2006-08-31T20:55:11+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2006/08/31/principle-of-least-surprise/
permalink: /2006/08/31/principle-of-least-surprise/
categories:
  - Allgemein
  - Geekstuff
  - Linux
---
Have i mentioned that i really like Ruby. True, i havent used it that much, so far i have only written a few relatively small Rails apps (where you use Rails methods most of the time and dont stop to think about what Ruby really is) and three little cli tools for [classic-addition](http://classic-addiction.game-server.cc) in pure ruby. But doing these was really fun, since ruby is so simple and follows the [Principle Of Least Surprise](http://de.wikipedia.org/wiki/Prinzip_der_geringsten_Überraschung) which goes a little something like that:

> Hmmm, ok, i have an array of arrays and need to iterate over each one of them and perform operation xy on each element of the innermost one [&#8230;] let me just write it down very rough so i dont forget about it. [&#8230;] ok, all done, like pseudo-code, for fun, lets just start the interpreter and watch how many errors it produces, this can in no way be right, i havent looked in the documentation once, im dont even know if the methods i called do indeed exist (though if they did the way i called them would be the logical name) [&#8230;] and &#8230; w00t? works flawlessly

also the [TIMTOWTDI](http://de.wikipedia.org/wiki/Ruby_%28Programmiersprache%29#Mehrere_Wege) idea works very well, and the fact that everything is an object.