---
id: 154
title: Installing software with stow
date: 2007-11-28T22:46:32+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2007/11/28/installing-software-with-stow/
permalink: /2007/11/28/installing-software-with-stow/
categories:
  - Geekstuff
  - Gentoo
  - Linux
---
[<img src="/weblog/gnu-head-sm.jpg" alt="GNU" class="alignleft" />](http://www.gnu.org/software/stow/)If you have (or want) to install software not using your distributions package/ports manager you&#8217;re left with basically two choices: Install it in /usr/local (i.e. system-wide) or in your homedir (like ~/local). Whatever you decide to do you really should [use stow](http://www.gnu.org/software/stow/) (as i learned today ;). Stow makes managing the different software packages easy. As the dirs under /usr/local get populated (several packages might install different files in &#8216;lib&#8217; for example) you loose track which package installed what. So when you want to uninstall something its all just a big mess.
  
Stow avoids this by using symlinks. What you ist install a package into e.g. ~/local/stow/<package> and then cd into ~/local/stow and do a &#8220;stow <packagename>&#8221;. Stow then notices the structure under <packagename>/ and creates symlinks in ../ accordingly. So when it becomes time to uninstall/reinstall something you just have to type &#8220;stow -D <packagename>&#8221;. To sum it up: just read the fine manual (you&#8217;ll need no more than 5 minutes) and you&#8217;re all set.