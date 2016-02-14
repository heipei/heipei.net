---
id: 709
title: Aspire One / X.org screen blanking
date: 2009-11-14T13:39:14+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=709
permalink: /2009/11/14/aspire-one-x-org-screen-blanking/
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - Linux
---
When using X on my Acer Aspire One (110L) and playing videos with mplayer, X would occasionally blank the screen after a few minutes without any way out but to suspend/resume to get your X back. This didn&#8217;t only happen with mplayer, and it didn&#8217;t have anything to do with xscreensaver.Anyway, after some digging I found that adding        `Option          "FramebufferCompression"        "off"`to the <tt>Device</tt>-section of my xorg.conf resolved the problem.
  
Another cool thing I found out while going through ssh manpages is that you can silence the motd on login simply by touching <tt>~/.hushlogin</tt>.