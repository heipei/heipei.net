---
id: 167
title: monit and init
date: 2008-04-24T16:56:37+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=167
permalink: /2008/04/24/monit-and-init/
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - Linux
tags:
  - linux monitor monit inittab
---
[<img src="/weblog/monit.gif" alt="Monit" class="alignleft" />Monit](http://www.tildeslash.com/monit/) is a daemon that looks simple enough and does one thing really good: Making sure services stay up (or: Making sure you know when they don&#8217;t). It does some other things as well (like checking up on files and system resources), but I just use it for important processes which could crash (or be killed). Now, I&#8217;m not gonna go into how to configure monit since it is quite easy and the config-file can be understood by simply looking at it. You can start monit like any other service via scripts in /etc/init.d and symlinks from the appropriate runlevel-directories. The question that immediatly comes to mind is what would happen if monit itself crashed (Hint: Well, nothing, it would stay down and you wouldn&#8217;t even receive an email ;). So, instead of using some home-brewed solution with cronttab that checks monit, I&#8217;d suggest just invoking it with init. To do that just append a line like this to your /etc/inittab:`mo:2345:respawn:/usr/local/sbin/monit -Ic /etc/monitrc`The -I switch means it runs interactively, which is necessary for processes started by init. To initialize it without rebooting try **telinit Q** which should already spawn the process. If you kill the monit process now it will be respawned automatically. Voila! Oh, and if you ever want to stop some monitored service (which monit would restart) you can just unmonitor it from the webinterface.
  
So I&#8217;d suggest you give monit a try, even if you think you already have an appropriate solution. Don&#8217;t be scared by the looks of the monit-website. And if you think monit doesn&#8217;t do everything you need you&#8217;re bound to notice it after 15 minutes max, which imho isn&#8217;t much time wasted.
