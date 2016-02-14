---
id: 159
title: vpnc with DD-WRT on a Linksys WRT54GL V1.1
date: 2008-01-07T17:42:33+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2008/01/07/vpnc-with-dd-wrt-on-a-linksys-wrt54gl-v11/
permalink: /2008/01/07/vpnc-with-dd-wrt-on-a-linksys-wrt54gl-v11/
categories:
  - Geekstuff
  - Gentoo
  - Linux
  - Uni
---
<img src="/weblog/dd-wrt.png" alt="DD-WRT" class="alignleft" />Today I managed to get vpnc running on my WRT54GL Revision 2, which is not a hard thing to do. The device of course runs [DD-WRT](http://www.dd-wrt.com/dd-wrtv2/index.php), but in order to use vpnc you have to flash it with a release-candidate (rc-version) of the software, as the stable release does not include it (stable is v23 atm). So I used dd-wrt.v24\_vpn\_generic.bin to flash my device and it worked like a charm. After that, head to [this page](http://www.dd-wrt.com/wiki/index.php/VPNC) for a way to get vpnc working (with auto-reconnect as well). Unfortunately there is no GUI for the vpnc yet, but when the next stable release is made available I&#8217;m sure there will be. And now the best part: When using vpnc I did a speed-test and **it maxed out at 200kB/sec**, which is pretty impressive and more than enough for most cases. Of course I won&#8217;t be using vpnc on this device when I download stuff, since my DSL goes up to 600kB/sec, but for the occasional browsing it is sufficient. And if you want to download something, just start vpnc on your own machine to bypass the nat-stuff on the device.
  
A few remaining thoughts:

  * I flashed v23 first, before flashing it with the rc5-version
  * The script linked above checks for a dead connection by pinging a keepalive host. Unfortunately this is not an option here, since there is a fallback for when the vpn does not work&#8230;
  * I haven&#8217;t tested the performance with any fancy services on the device. It&#8217;s basically still at factory default.
  * Not surprising: When using the device via LAN rather than WPA2 wireless, I managed to get some 30kB/sec more out of it.
  * There is an option to overclock the CPU from 200Mhz to 250Mhz. Haven&#8217;t tried it, and not sure I if will neither.
  * The new firmware does have some other cool features as well ;)