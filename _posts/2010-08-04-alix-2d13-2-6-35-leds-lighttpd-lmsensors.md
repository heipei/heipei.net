---
id: 864
title: 'ALIX 2D13: 2.6.35, LEDs, lighttpd, lmsensors'
date: 2010-08-04T16:14:06+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=864
permalink: /2010/08/04/alix-2d13-2-6-35-leds-lighttpd-lmsensors/
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - Linux
---
[<img src="https://farm5.static.flickr.com/4154/4842861201_eaa6258442_m.jpg" width="240" height="160" alt="ALIX 2D13" class="alignright" />](https://secure.flickr.com/photos/heipei/4842861201/ "ALIX 2D13 by heipei, on Flickr")It&#8217;s a good thing I waited a few days before releasing my next ALIX-post. I was gonna talk about the leds-alix module and where to download it, but in the meantime 2.6.35 was released and already contains all the necessary code. So, besides this post there is a new config: [Linux 2.6.35 vanilla for ALIX 2D13](https://heipei.net/files/config-2.6.35-alix). A few changes to the 2.6.34-config I posted last time: 

  * I didn&#8217;t choose the Geode GL/GX last time, doh!
  * The kernel is no longer tickless (performs better)
  * Threw out some modular crypto-stuff (which I missed the last time)

There are **three front-LEDs** on the ALIX board, so nothing fancy. The interesting is that there are predefined triggers for these LEDs in <tt>/sys/class/leds/</tt> which will make the LEDs display one of the following: heartbeat = load average (blinking speed), ide-disk (write access to the cf-card), timer, etc. Just try <tt>cat trigger</tt> to see the possible values. There is also the possibility to trigger on matches from iptables (think: traffic on port 22 ;). However my iptables userland seems to be outdated, so I will have to report about this another time.

<img src="https://heipei.net/weblog/lighttpd.png" alt="Lighttpd" class="alignleft" />Furthermore I tried using **lighttpd** instead of gatling on my fat external drive, and it performed even better, using slightly less CPU. In the kernel I activated the deadline IO-scheduler as default (while keeping CFQ and NOOP as an option), let&#8217;s see how that plays out. I&#8217;m still not getting more than 9MB/s using Samba, while the CPU is mostly idle and lighty completely saturates the 100MBit link, really annoying.

**lm_sensors** on the ALIX are no problem either. Just try my kernel-config or make sure to activate the basic I2C-stuff and <tt>CONFIG_SCx200_ACB</tt>. My ALIX runs at comfy 42°C when not under load.

I already talked about using **tmpfs for some of the directories** written to frequently (<tt>/tmp, /var/tmp, /var/run, /var/log, /var/lock</tt>). I don&#8217;t care about logs right now, so I don&#8217;t mind losing them on reboot. Some daemons however complain or won&#8217;t start if their log-directories aren&#8217;t set up, so you should do that with an init-script. I uploaded [my script here](https://heipei.net/files/heipei.sh.txt), which will work with Debian and also sets up two LEDs and the deadline scheduler in case it isn&#8217;t the default.
