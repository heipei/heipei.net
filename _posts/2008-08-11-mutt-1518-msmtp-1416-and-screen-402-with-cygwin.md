---
id: 275
title: mutt 1.5.18, msmtp 1.4.16 and screen 4.0.2 with Cygwin
date: 2008-08-11T19:26:07+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=275
permalink: /2008/08/11/mutt-1518-msmtp-1416-and-screen-402-with-cygwin/
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - Linux
tags:
  - cygwin screen mutt msmtp
---
**mutt 1.5.18** works fine with Cygwin (as I just discovered). Building it from source I used

<pre>./configure --prefix=$HOME/local/stow/mutt --enable-imap --with-homespool --with-ssl=/usr --enable-hcache --enable-locales-fix</pre>

This is assuming you installed the openssl-libs and openssl-devel packages (those can be installed using Cygwins own installer .exe). For header-caching (you really want it when using IMAP) you&#8217;re also gonna need some version of berkeley-db, which can also be installed using the Cygwin setup.exe.

**msmtp** (an SMTP-client which can be used in conjunction with mutt when sending mails over a server which uses TLS/SSL) works equally fine. With version 1.4.16 just do

<pre>./configure --prefix=$HOME/local/stow/msmtp --with-libgnutls-prefix=/usr</pre>

**GNU screen** is available as a Cygwin-package (4.0.3) but if, like me, you want 256 colors (and with a spiffy vim-theme you do ;) you have to fall back on building it yourself. You have to apply two patches though: [Patch 1](http://web.gccaz.edu/~medgar/screen-4.0.2-1-cygwin.patch) (found [here](http://web.gccaz.edu/~medgar/screen.html)) and [Patch 2](/~heipei/files/screen-4.0.2-fifo.patch) (found [here](http://www.cygwin.com/ml/cygwin/2005-06/msg00843.html)). After that

<pre>./configure --prefix=$HOME/local/stow/screen --enable-colors256</pre>

should do the trick. To actually get 256 colors working use this in your .screenrc:

<pre># terminfo and termcap for nice 256 color terminal
# allow bold colors - necessary for some reason
attrcolor b ".I"
# tell screen how to set colors. AB = background, AF=foreground
termcapinfo rxvt 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
# erase background with current bg color
defbce "on"</pre>

Careful! If your TERM (the one you start screen with) is not rxvt then you need to adjust that. To see if 256 colors work I use this [script](http://www.frexx.de/xterm-256-notes/data/256colors2.pl) (found [here](http://www.frexx.de/xterm-256-notes/)).