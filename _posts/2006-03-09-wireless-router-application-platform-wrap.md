---
id: 83
title: Wireless Router Application Platform (WRAP)
date: 2006-03-09T20:21:45+00:00
author: Jojo
layout: post
guid: http://heipei.net/2006/03/09/wireless-router-application-platform-wrap/
permalink: /2006/03/09/wireless-router-application-platform-wrap/
autometa:
  - 
categories:
  - Allgemein
  - Geekstuff
---
<img src="/weblog/wrap.jpg" alt="WRAP" class="alignleft" />So, this is the long post ive promised in my last post. Today i wanna talk about the PCEngines [WRAP](http://www.pcengines.ch/wrap.htm), which stands for Wireless Router Application Platform. For those of you familiar with the topic: Its much like the [Soekris](http://www.soekris.com/index.htm), just a little smaller, has less features but only costs half as much. For the rest: Read on.
  
**Hardware**
  
The WRAP is a small embedded computer manufactured by the Swiss company PCEngines. You can buy it off the shelf and have a ready system, in my case featuring the following specs:

  * 266Mhz AMD Geode SC1100 Processor (x86 compatible)
  * 128mb SDRAM (<&#8211; w00t?)
  * 3 Fast Ethernet NIC&#8217;s
  * Serial Console
  * MiniPCI Slot
  * CF (Compact-Flash) Slot
  * 3 Programmable LEDs and 1 Reset Switch
  * Watchdog and a thermal sensor

<!--more-->


  
<img src="/weblog/wrap-case.jpg" alt="WRAP Case" class="alignleft" />The NICs support autonegotiating, which means you can use the whole box as a standard switch using bridging. Also they have their own processors, not like RTL chips. Everything else in the box also seems to be pretty standard hardware. Once you have a kernel with the right drivers everything works fine. Havent tried the MiniPCI slot though. The only thing i really miss is a USB Host Controller, which would enable you to hook up that hdd to the box and have it act as a fileserver. The CPU as you can see does not need a heatsink or a fan and goes up to 55/60ºC under full load and is at 38.5ºC at normal room temperature.
  
For about 125 Euro (with the cool case) you get the WRAP. What else do you need? A CF-Card would be cool, since you want to install your operating system somewhere. Then you definately need a serial-cable, maybe a usb-to-serial adapter like me. You can do without a CF-Card-Reader on your pc, but its a little more tricky since you have to do a netboot.
  
If, like me, you didn&#8217;t know what a watchdog was: Its a feature built into the hardware which expects a regular response from a watchdog daemon, otherwise it will reboot the system. So, if you kernel hangs the thing automatically reboots itself (i didn&#8217;t know about watchdogs before, but after a moment of consideration it should be obvious that this is one of the most crucial parts of embedded hardware. Just think of some NASA satellite without a watchdog&#8230;).
  
**Software**
  
The board is running [tinyBIOS](http://www.pcengines.ch/tinybios.htm). I cant say much about it, just worked, its even possible to do PXE booting (booting from network). The first thing you want to do is move from netbooting to an installed version on your CF card. The PCEngines pages pointed to a few BSD/Linux distributions, of which i only head of m0n0wall, still, i ended up with [Voyage Linux](http://www.voyage.hk/software/voyage.html), which is a Debian distro, the distribution im most familiar with.
  
[<img src="/weblog/voyage.gif" alt="Voyage Linux" class="alignleft" />](http://www.voyage.hk/software/voyage.html)**Voyage Linux**
  
[Voyage Linux](http://www.voyage.hk/software/voyage.html) is a Debian-based distribution tailored to the WRAP and the Soekris boards. Since the guys behind Voyage seem really competent i was able to get the system running without any problems. All the hardware was recognized correctly, since i used the kernel from the Voyage site. The CF card on which your linux is installed is treated as a standard IDE hdd by the way, so /dev/hda points to your card. The Voyage kernel .config includes everything you need and the system itself already brings a lot of useful tools. For example brctl (for bridging interfaces) is compiled into the kernel and the userland programs are there as well, so is PPPoE. The only thing i missed so far were vim (\*g\*) and OpenVPN, which you can easily add via apt-get. The system is preconfigured so that it mounts the CF card as read-only on does all the writing (like logs, tmp files) on a temporary fs which takes 5mb from the ram. This of course means that everything written will be erased when you reboot.
  
**Performance/Limits**
  
Not much to say about performance, didn&#8217;t have time to really put it to a test. The raw bandwidth of the NICs is great. I did install [Dansguardian](http://dansguardian.org/), a web content filter which filters web pages not only by URL but really searches the whole content of websites and matches it against lists of badwords. Using it with 4 people it was too slow for power-users. But if you just want to make sure your kids dont browse the wrong sites its ok. Squid runs okay, but you have to remind yourself that anything needing a lot of drive space, and accessing it frequently is probably not the best idea (CF cards have a limited number of write cycles).
  
**Use scenarios**
  
So, its a pretty decent computer alright. Now, what can you do with it? Well, you can install an operating system on it (think OSS here) and then do whatever you need it for. A few examples are using it as a router, wireless router, transparent proxy with content filter or for home automation. You can use it to replace that standard 300W-grey-box computer acting as your router, while keeping the amount of hackvalue compared to an ACME plug-and-play router. In its brushed-metal box it looks way cooler than the Soekris or the WRT 54 for that matter, and has about the same measurements as the Mac Mini (length and width). Fellow geeks can probably think of quite some different things you could do with it. (I was thinking of hooking up a [fnordlicht](http://koeln.ccc.de/prozesse/running/fnordlicht/index.html), thereby making it easy to control the thing over the network / from the outside, like blinking your fnordlichts from your vacation to scare off any burglars :P)
  
[tags]wrap, pcengines, soekris, embedded, computer, voyage, linux[/tags]
