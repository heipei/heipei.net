---
id: 283
title: PuTTYcyg just replaced rxvt for me
date: 2008-08-13T16:15:49+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=283
permalink: /2008/08/13/puttycyg-just-replaced-rxvt-for-me/
categories:
  - Geekstuff
  - Gentoo
  - Linux
tags:
  - putty rxvt cygwin terminal 256 colors
---
[<img data-echo='/heipei/wp-content/gallery/logos/putty_icon.gif' alt='putty_icon.gif' class='alignleft' />](http://code.google.com/p/puttycyg/)I like PuTTY, I&#8217;ve been using it for years. In my last post I talked about Cygwin and it&#8217;s rxvt (which already works pretty good). I also joked about using PuTTY to ssh into localhost.
  
Well, for the people who want to use PuTTY for their local Cygwin there is a solution: [PuTTYcyg](http://code.google.com/p/puttycyg/). PuTTYcyg is just a patched version of PuTTY which adds &#8220;cygterm&#8221; as a connection-type. If you wan&#8217;t to use it with a desktop/tray shortcut you have to call `putty.exe -cygterm -` where putty.exe is of course the patched PuTTYcyg version.
  
The reason for me to use PuTTYcyg instead of rxvt is the Full-Screen-mode of PuTTY. Besides that I guess there are other advantages over rxvt (like being able to change font and terminal-emulation-options for the running session). Oh, and don&#8217;t fear, of course it supports 256 colors just fine ;)
