---
id: 139
title: Suspend-to-ram with Dimension 9150 / Linux 2.6.21.1
date: 2007-05-04T16:09:22+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2007/05/04/suspend-to-ram-with-dimension-9150-linux-26211/
permalink: /2007/05/04/suspend-to-ram-with-dimension-9150-linux-26211/
categories:
  - Geekstuff
  - Gentoo
  - Linux
---
Since i recently moved into my own flat and now have to pay for the electricity i consume i wanted to get Suspend-to-ram working (why not suspend-to-disk you might ask. well, that would be the next step ;). One of my most frequented websites [linux.com](http://www.linux.com) posted [a short intro and a script](http://www.linux.com/article.pl?sid=06/05/24/1716222) to do just that. Unforunately, echo -n &#8220;mem&#8221; > /sys/power/state always quit with an error about a not-exisiting device. So i started looking through my kernel-config for acpi-sleep-support. Funny thing was it showed up nowhere. Even more funny was that with the new 2.6.21.1 and without one of my old .configs in place, it showed up under &#8220;ACPI Support&#8221;. Long story short (imagine me searching for about half an hour&#8230;), you have to enable &#8220;[*] Support for hot-pluggable CPUs (EXPERIMENTAL)&#8221; (in &#8220;Processor type and features&#8221;) in order to see the ACPI-Sleep options&#8230; don&#8217;t ask. It works fine now, it is really fast, and when i resume everything works again (sound, graphics, network, vpnc). Now, on with the suspend-to-disk ;)