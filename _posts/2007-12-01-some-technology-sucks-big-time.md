---
id: 155
title: (Some) technology sucks (big time)
date: 2007-12-01T00:26:37+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2007/12/01/some-technology-sucks-big-time/
permalink: /2007/12/01/some-technology-sucks-big-time/
categories:
  - Aachen
  - Allgemein
  - Geekstuff
  - Gentoo
  - Linux
tags:
  - ion3
  - sucks
  - technology
  - uni-dsl
  - vpnc
---
Sorry in advance, but right now I have the feeling that if I don&#8217;t rant a little bit I&#8217;m gonna burst. &#8220;Technology sucks&#8221;, sometimes.

First of all there is the &#8220;it was fine before but you just \_had\_ to &#8216;improve&#8217; it, didn&#8217;t you?&#8221; kind of suckage (nevermind, I just made that word up). That&#8217;s when certain people just can&#8217;t accept that some software works perfectly fine the way it is (and only needs minor bugfixes, if at all). Like ion3 being removed from the Gentoo tree. Now, I don&#8217;t know the backgrounds, all I&#8217;ve heard is that the author of ion is a big-time asshole, but here is this: I don&#8217;t give a crap! ion3 has worked (and will work) fine for me, thank you. If no new versions are being released at least keep the last one in the tree. I tried using xmonad and it sucked (big time). I mean the whole concept of &#8220;we can write a window manager with < = 500 LOC&#8221; is fine, but that does not count if you have to install shitloads of dependencies and ghc. And the notion of &#8220;let the window manager tile the windows for you&#8221; is all fun and games until I want to say &#8220;split here, please&#8221;. But then you&#8217;d have a &#8220;static&#8221; window layout like with ion3. Hello? When I start my Instant Messenger it \_always\_ has the same contact list, and I \_always\_ have it running, so isn&#8217;t it safe to assume that \_maybe\_ (just maybe) I \_always\_ want it on the same workspace, with the same dimensions and so on? Well, that would be static&#8230; Like having config-files would be so un-cool. C&#8217;mon, you didn&#8217;t really think that you could get your window-manager, binary-package or whatever, and then just modify your config once in a while. Nooo sir, please keep the whole haskell-toolchain around until your brain is rotten enough that you actually start using darcs (like that will ever happen) instead of something people actually use, like git.

The second point is about my recent switch from &#8220;I&#8217;m feeling lucky&#8221;-shaky-WiFi-Internet to &#8220;I&#8217;ve had so much fun on your crappy WiFi&#8221;-ADSL. One day in and I&#8217;m already counting the days until the 1-year-contract expires. I don&#8217;t even have a problem sharing 1/3 of my bandwidth with strangers. I do however have a problem with people who can only think in the most basic usage patterns. If I have an access point, which also acts as my internet gateway, might it not be possible that I sometimes want to access a computer from another one, that are both hooked up to the device (one by LAN and another one by WLAN for example). Might it not be possible that I would want to configure loads of stuff on my router (like for example setting up DynDNS). It would not be uncommon at a university were CS is a major study area. And since there is something called DD-WRT (or varieties) it would not even be this much work. But instead we present the user with a chaotic and sometimes broken Web-Interface and the cool hint how to log on to the router via ssh as root. Now, you might think &#8220;let&#8217;s just flash a decent version of some WRT onto this WRT54G&#8221;, but then you would be denying other people the wireless access, breaking the contract and would have to pay a fine. Never mind that the air in the 2.4Ghz band around here is polluted enough that you don&#8217;t have to turn on the microwave to cook a chicken. Then there is this braindead thing called vpnc and some terrific (read: baaad) latency, but I am not even gonna start with this. Oh, and in case you might be wondering which &#8220;ISP&#8221; not to sign up with: It&#8217;s [uni-dsl](http://www.uni-dsl.de). The only thing left to say is:

> Finster der Tunnel, die Bandbreite knapp,
  
> wie schön war die Backplane im eigenen Hub.
  
> Am Ende des Tunnels: Das Päckchen ist weg,
  
> vernichtet vom Cyclic Redundancy Check.