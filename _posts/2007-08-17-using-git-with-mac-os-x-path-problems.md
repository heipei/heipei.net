---
id: 147
title: using git with mac os x (PATH problems)
date: 2007-08-17T20:21:27+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2007/08/17/using-git-with-mac-os-x-path-problems/
permalink: /2007/08/17/using-git-with-mac-os-x-path-problems/
categories:
  - Geekstuff
  - git
  - Linux
tags:
  - linux git mac os x
---
Lately I&#8217;ve been toying around with git as a mean to independently develop on my workstation and when I&#8217;m gone on my laptop. Although it does in fact require some brainpower to wrap your mind around it (as [Linus admitted himself](http://www.youtube.com/watch?v=4XpnKHJAok8)) it looks really promising. So far I have only worked out the basic features (not quite as much as I know about subversion). One thing I can say already though is that it really is fast.
  
When using it on Mac OS X (which has really been pissing me off in the past few weeks ;) you probably installed it using fink. Fink installs binaries into /sw/bin and /sw/sbin. Now, when you do an &#8220;git pull ssh://your-mac-os-machine/path&#8221; it tells you that it couldn&#8217;t find git-upload-pack, because the PATH variable only contains /usr/local/bin etc. What you have to do is:

  * Edit /etc/sshd_config and set &#8220;PermitUserEnvironment yes&#8221;
  * Create ~/.ssh/environment which should contain: &#8220;PATH=/sw/bin:/sw/sbin:<your -other-paths>&#8221;
  * Restart sshd (you can do it by disabling/enabling &#8220;Remote Login&#8221; in the System-Preferences

All those steps have to be taken on your Mac OS X machine with the user you intend to do the git-push&#8217;s to. After that it should work fine.