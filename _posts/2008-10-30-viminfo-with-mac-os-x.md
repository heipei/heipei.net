---
id: 341
title: viminfo with Mac OS X
date: 2008-10-30T14:21:44+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=341
permalink: /2008/10/30/viminfo-with-mac-os-x/
aktt_tweeted:
  - 1
categories:
  - Apple
  - Geekstuff
---
<img src="/weblog/vim_logo.png" alt="Vim" class="alignleft" />Finally, I found a solution to something that has really been bugging me for quite some time. I use vim, not only on my linux machine but also everywhere else I&#8217;m able to get my hands on it. Vim has a feature called viminfo, which is basically just a file that remembers stuff like your last edited files, the last commands, searches, etc you typed, your buffers and also, this is the important part, the position for each file you were editing when you closed it. And this feature simply did not work under Mac OS X, driving me nearly crazy. Anyway, with this little snippet in your .vimrc it should work. Enjoy.
  
``if has("autocmd")<br />
    autocmd BufReadPost *<br />
	\ if line("'\"") > 0 && line("'\"") < = line("$") |<br />
	\ exe "normal g`\"" |<br />
	\ endif<br />
endif``