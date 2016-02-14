---
id: 103
title: Vim Tips (Part 1)
date: 2006-07-29T12:00:47+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2006/07/29/vim-tips-part-1/
permalink: /2006/07/29/vim-tips-part-1/
autometa:
  - couple weeks working hard improving workflow computer started
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - Linux
---
Over the last couple of weeks ive been working hard at improving my workflow on my computer. This started when i installed gentoo on the freshly-arrived-box, then i switched from fluxbox to ion which is way better in every way. Of course ive been a vim user for quite some time now, and when vim 7.0 arrived i didnt hesitate a second to upgrade.

Now, my .vimrc is partly copied from friends who have been using it even more, and to a good extent i dug through the manuals looking for cool stuff to try out. Im still not using the whole edit-compile-run-edit circle, but i will get to that ;). So im gonna post my .vimrc some time in the future, but for now i want to share the following with you:

Have you ever wanted to comment out multiple lines? Like 10 Lines with a # prefixed? Just select the lines in visual-line mode (Shift-V), press **:** and the command line comes up with **:'< ,&#8217;>** Now you can change that to **:'< ,&#8217;>s/^/#/** (or use **$** instead of **^** for the end of the lines) and be happy ;)