---
id: 63
title: Ratpoison on X11 on Mac OS X
date: 2005-12-31T18:05:57+00:00
author: Jojo
layout: post
guid: http://heipei.net/2005/12/31/ratpoison-on-x11-on-mac-os-x/
permalink: /2005/12/31/ratpoison-on-x11-on-mac-os-x/
autometa:
  - 
categories:
  - Allgemein
  - Geekstuff
---
[<img width="240" height="180" class="alignleft" alt="Ratpoison running in X11 on Mac OS X" src="https://static.flickr.com/41/79824206_bbaca73fe0_m.jpg" />](https://secure.flickr.com/photos/heipei/79824206/ "Photo Sharing")Who said you cant do useful stuff at the Congress? While we were there Flo was checking out his powerbook and the installed os, Mac OS X.4. He wasnt satisfied with a lot of stuff, and so was I. In general you can say that a lot of configuration options are simply missing from critical problems. Another big problem imho is that you just cant maximize windows so that they take up the whole screen (also the space where the menu bar uses to reside). Using terminal, its quite annoying to switch between windows sometimes, even if you have something like Witch installed.

So he started checking out screen some more. Screen is described as &#8216;screen manager with VT100/ANSI terminal emulation&#8217;. Up to this point my only use for screen was to run irssi and maybe a download in it, attaching and detaching it was the sole purpose. Boy, was i wrong. On our trip home Flo read the \_complete\_ screen manpage and while i was navigating through the snowstorm in Germany he told me all the neat stuff you can do just using screen.<!--more-->

Now thats all good, but somethings still missing. Im missing the simple look of a fullscreen terminal, without any buttons/decorations and without having to use the mouse. I knew i had an X11 Server installed, and i havent used it so far. So i started by updating my fink installation to the cvs unstable version (which takes a lot of compiling, felt like back in the gentoo days) and installed ratpoison, a window manager, which behaves very much like screen does. I still havent figure out most the things, but already it feels great. Why, the OS X lovers here might ask? Well, OS X is cool, no objection, but something is missing. Everything just works, which as good as it sounds can be pretty boring and contra-productive since you never get to fix anything or go deeper in how software works. Also for pure text usage, e.g. programming, doing things over ssh, a slim and leightwight shell is much more appropriate than any graphical terminal emulator.

For the next version of OS X i would wish for a fullscreen function for Terminal.app, like the windows client PuTTY has. Ill write more as i get deeper into the whole subject.