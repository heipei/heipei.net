---
id: 153
title: Revising old posts
date: 2007-11-23T10:58:25+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2007/11/23/revising-old-posts/
permalink: /2007/11/23/revising-old-posts/
categories:
  - Geekstuff
  - git
  - Linux
tags:
  - gentoo linux git mac os thunderbird
---
I wrote three blog-posts recently which I kinda like to &#8220;take back&#8221; or refine now. I am not taking the old ones offline though.

First I wrote about [how to use git on Mac OS X remotely](http://hackvalue.de/heipei/2007/08/17/using-git-with-mac-os-x-path-problems/) (i.e.: pushing/fetching to/from a Mac OS X machine). I gave a rather lengthy and stupid explanation on how to deal with the problem of not having your bin-path in $PATH when logging in non-interactively. That happens for example when you use fink, or when you install into $HOME/bin (or the like) like I do frequently. Well, the solution is really simple: Just include any statement which should be executed in a non-interactive session in your .zshenv (if you are using zsh).
  
Mine looks like this:
  
`I wrote three blog-posts recently which I kinda like to &#8220;take back&#8221; or refine now. I am not taking the old ones offline though.

First I wrote about [how to use git on Mac OS X remotely](http://hackvalue.de/heipei/2007/08/17/using-git-with-mac-os-x-path-problems/) (i.e.: pushing/fetching to/from a Mac OS X machine). I gave a rather lengthy and stupid explanation on how to deal with the problem of not having your bin-path in $PATH when logging in non-interactively. That happens for example when you use fink, or when you install into $HOME/bin (or the like) like I do frequently. Well, the solution is really simple: Just include any statement which should be executed in a non-interactive session in your .zshenv (if you are using zsh).
  
Mine looks like this:
  
` 
  
The last command removes duplicates in your $PATH btw.

[Then I mentioned tig](http://hackvalue.de/heipei/2007/08/25/tig-a-text-mode-interface-to-git/), which I don&#8217;t use anymore. git log is good enough by itself.

Last but not least [I pointed out some Thunderbird-Addons](http://hackvalue.de/heipei/2007/10/27/helpful-thunderbird-add-ons/). I still have the opinion that those are nice extensions, but I have switched to mutt since, which incorporates these and many more helpful things.