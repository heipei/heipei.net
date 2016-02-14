---
id: 863
title: 'ALIX 2D13: First impressions'
date: 2010-07-30T18:07:10+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=863
permalink: /2010/07/30/alix-2d13-first-impressions/
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - Linux
---
[<img src="https://farm5.static.flickr.com/4154/4842861201_eaa6258442.jpg" width="500" height="334" alt="ALIX 2D13" class="aligncenter" />](https://secure.flickr.com/photos/heipei/4842861201/ "ALIX 2D13 by heipei, on Flickr")I desperately needed a new toy, and found the perfect match with the [ALIX 2D13](http://pcengines.ch/alix2d13.htm) board from Swiss manufacturer [PCEngines](http://pcengines.ch/index.htm). I&#8217;ve had [good experiences with the WRAP-board more than four years ago](https://heipei.net/2006/03/09/wireless-router-application-platform-wrap/), so I knew about the quality of their products. This post should serve as a quick introduction and point out some caveats if you want to setup and use an ALIX 2D13.

**Specs**
  
<img src="https://heipei.net/weblog/alix2d13.jpg" alt="ALIX 2D13" class="alignright" />PCEngines has an [overview over the ALIX-line](http://www.pcengines.ch/alix.htm) as well as the [specs of the ALIX 2D13](http://www.pcengines.ch/alix2d13.htm), so this is just a short rundown: 

  * 500 MHz AMD Geode LX800 (x86)
  * 256 MB DDR DRAM
  * 3 Ethernet NICs (Via VT6105M 10/100)
  * Furthermore: 2x USB ports, MiniPCI-slot, CF-slot, serial port

I chose the 2D13 model since I wanted 3 ethernet NICs and the added battery (for keeping system time after a reboot) seemed like a good idea. The ALIX boards can be bought in many variations, some even providing VGA/sound to be used as a thin client. I ordered my ALIX at the [Varia-Store](http://varia-store.com/), where they offer a complete bundle of ALIX-2D13-board, enclosure, power supply and CF-card for a mere €145 including shipping in Germany. I ordered on Tuesday at noon and the package arrived Thursday afternoon.

<!--more-->


  
**Operating system / prerequisites**
  
You probably want to run Linux on these babies, otherwise you can stop reading ahead. There are some things you really need before you get started: 

  * CF-card reader on your computer (for installing the OS to the CF-card)
  * Serial connection (think USB-to-Serial converter, pl2303) to access the ALIX

I chose to install Debian on the ALIX, since I&#8217;m familiar with it and it has little overhead. I found these guides to be helpful, even if not completely up to date or correct: [Guide 1](http://peter.molnar.cc/2008/04/11/installing-debian-gnulinux-on-a-alix-board/), [Guide 2](http://mac.tuxfinder.com/wordpress/2009/06/11/installing-linux-debian-lenny-on-an-alix-board/). But careful! Don&#8217;t mount the ALIX board in its enclosure until you&#8217;re sure that your ALIX boots, since removing the CF-card requires taking the board out again ;).
  
The next thing I did was to build a custom kernel, since Debian only includes 2.6.26 and has everything you&#8217;ll never need compiled as modules. I built a next-to-minimal kernel on my workstation ([this site](http://tinkering-is-fun.blogspot.com/2009/12/configuring-linux-kernel-for-use-on.html) helped a lot) and it seems to work just fine so far. The config is [here](https://heipei.net/files/config-2.6.34-alix2d13.txt). An important thing if you compile somewhere else is to make sure you use`ARCH=i386 make menuconfig<br />
ARCH=i386 make -j3` when configuring and compiling your kernel for the ALIX.
  
People already using CF-cards or small embedded devices probably know to use <tt>noatime</tt> where possible and mount <tt>/tmp, /var/tmp, /var/run, /var/log, /var/lock</tt> as tmpfs to go easy on the CF-cards limited write cycles.

**Performance / Applications**
  
I bought the ALIX to play around with it but also to evaluate its possible use as a Samba-fileserver and CUPS printserver for my flat, and maybe even a small shellserver in case I&#8217;m away from home and my workstation isn&#8217;t running. With an energy-consumption of about 5-6W you can have it running 24/7, the fact that it doesn&#8217;t have any moving parts only adds to that. Booting takes a few seconds by the way, not that it matters.

The first measurements I did were with scp from the ALIX to my WS, which maxed out at 3.5MB/s because OpenSSH used up the CPU on the ALIX. Next I tried using Samba (to and from) and got a mere 6.5MB/s throughput reading from the ALIX and an attached USB-drive. This was with the stock kernel however, and using my own 2.6.34-kernel I was able to transmit more than 9MB/s using Samba. I had a stupid line in my <tt>smb.conf</tt> which might explain the 6.5MB/s I got before. Make sure to remove this line!:`socket options = IPTOS_LOWDELAY TCP_NODELAY SO_RCVBUF=16384 SO_SNDBUF=16384`I then did another test using [fefes gatling web/ftp/samba-server](http://www.fefe.de/gatling/) on the ALIX and my USB-drive in HTTP-mode with wget and was able to completely saturate the 100MBit-link, which is why I suspect to be able to do the same thing with Samba as well.
  
For customers of Aachens Uni-DSL it should be interesting to know that I managed to max out my 8Mbit-DSL-line (about 700kB/s) using <tt>vpnc</tt> on the ALIX with enough idle CPU left. Using <tt>vpnc</tt> and doing a <tt>git pull</tt> on the ALIX resulted in only a slight slowdown since git was busy saving/packing objects it received. Performance using <tt>git daemon</tt> on the ALIX and pulling from there were acceptable as well.

All of these measurements are highly unscientific and side-effects or misconfigurations could have had negative effects, so one should read these rates as minimal assurances.

**Conclusion**
  
After the first full day of using the ALIX I&#8217;m impressed. The CPU is powerful enough for most tasks and with a little custom configuration some things can be sped up considerably. I don&#8217;t see any problems for the intended use as a file-server, by whichever way the files are served. The next step will be hooking up my printer.

If you intend to use encrypted filesystems on the ALIX you should do some research first. While the AMD Geode does have hardware support for AES, OpenSSL does not seem to use it and I&#8217;m not quite sure about any cryptofs. Another common thing the ALIX might be used for is wireless LAN. The MiniPCI-slot can take a variety of wireless NICs, but I don&#8217;t need yet another AP at the moment.