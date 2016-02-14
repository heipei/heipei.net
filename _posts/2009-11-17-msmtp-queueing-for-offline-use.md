---
id: 715
title: msmtp queueing for offline use
date: 2009-11-17T21:15:51+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=715
permalink: /2009/11/17/msmtp-queueing-for-offline-use/
categories:
  - Geekstuff
  - Gentoo
  - Linux
  - Unterwegs
---
<img src="https://heipei.net/weblog/mutt-icon.png" alt="mutt" class="alignleft" />When you start using a small and slow laptop over an unreliable GPRS connection (say while travelling in an ICE at 300km/h) you start noticing certain things that are missing from your current shell-setup. One of these problems manifests itself when you want to send the mail you just typed in mutt. Fortunately there is an easy and elegant fix (if you use mutt with msmtp): [msmtpqueue](http://sourceforge.net/projects/msmtp/files/msmtpqueue/). This gives you three little scripts to enqueue, list and send messages which would otherwise have gone directly into msmtp. Just put them somewhere and then add this to your .muttrc:`set sendmail="$HOME/local/bin/msmtp-enqueue -i"<br />
macro index \Cy "!$HOME/local/bin/msmtp-runqueue<enter>"`Now &#8220;sending&#8221; mail from mutt happens instantly and you can manually push the batch of mails out to your smtp once the train has stopped in a station and your reception is stable ;). <tt>msmtp-listqueue</tt> shows you the queued mails while <tt>msmtp-runqueue</tt> mails them (using msmtp of course!). For the downstream-direction of offline mutt-usage there&#8217;s [offlineimap](http://software.complete.org/software/wiki/offlineimap/), but I feel like this deserves an extra post ;)