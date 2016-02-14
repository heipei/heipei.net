---
id: 547
title: genkernel 3.4.10-r2 with dmraid and hibernate-support
date: 2009-05-13T16:27:11+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=547
permalink: /2009/05/13/genkernel-3410-r2-with-dmraid-and-hibernate-support/
categories:
  - Geekstuff
  - Gentoo
  - git
  - Linux
---
This comes from the I-have-to-pay-my-electrical-bill and from the learn-something-fun-about-your-system-everyday-department. As you know I&#8217;ve got Gentoo on my workstation. When I still lived in my dorm it was running 24/7 (last but not least to supply everyone with the latest episodes of popular shows). When I moved I started using a hacked-together suspend-to-ram script which worked well enough for the last year or so. Seeing how quick and (seemingly easy) hibernate/suspend-to-disk worked on my new netbook I decided to once again give it a try on my workstation.
  
Since my system has one of those stupid fake-raids I have always needed an initrd to boot the kernel. The initrd calls dmraid, which maps the strange arrays into usable disk-devices (don&#8217;t ask me). The preferred way of creating an initrd with Gentoo is genkernel, which can be used to build a kernel as well. The only problem was that genkernel still lacks support for suspend (user-space suspend, see [Gentoo Bug](http://bugs.gentoo.org/156445)), while I can&#8217;t do without dmraid.

So I fired up git and [started hacking on the genkernel-code](http://git.lochraster.org:2080/?p=heipei/genkernel.git;a=summary) and now have a system which does suspend-to-disk and dmraid. Having said that, I must stress that **you should really know what you&#8217;re doing** if you&#8217;re trying to use this. You could potentially shoot yourself in the foot if for some reason a hibernated image gets loaded after your harddrives have already been mounted. I try to avoid that in my patch by calling suspend_resume immediately after dmraid has been called (and only there). Improvements or constructive flames would be highly appreciated.