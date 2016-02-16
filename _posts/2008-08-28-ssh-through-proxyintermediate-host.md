---
id: 319
title: SSH through proxy/intermediate host
date: 2008-08-28T15:12:31+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=319
permalink: /2008/08/28/ssh-through-proxyintermediate-host/
aktt_tweeted:
  - 1
categories:
  - Geekstuff
  - Gentoo
  - Linux
tags:
  - ssh openssh proxy netcat
---
<img data-echo='http://hackvalue.de/heipei/wp-content/gallery/logos/openssh.png' alt='openssh.png' class='alignleft' />Since I&#8217;ve been developing some stuff for a private intranet (read: web-interface for managing stuff), which runs in their internal network I&#8217;ve found myself SSHing into the router/firewall and then into the host I&#8217;m developing on. This itself being bad enough, it was even more annoying when you wanted to copy File X from Host A to Host B, where you always had to go through Host C.
  
Well, no more! After some time fruitlessy searching the web, I stumbled onto this [easy solution involving everyone&#8217;s favorite: netcat](http://www.hackinglinuxexposed.com/articles/20040830.html)! The way to do it with OpenSSH is really straighforward and transparent, the only dependency you have is that netcat is installed on the proxy-host (the one in the middle). Just put this into your .ssh/config:
  
`Host internal1 internal2<br />
ProxyCommand ssh firewall.domain.com nc -w 1 %h %p`And then simply use **ssh internal1** from your local host (yeah, even if internal1 is a DNS-name only known by the firewall).
  
The nice side-effect of this is that you can also use stuff like svn+ssh://internal1 transparently (git too, but in my case it was svn).
  
**Update**
  
If you&#8217;re annoyed by the &#8220;Killed by signal 1.&#8221; at the end of every ssh-session use the -q switch to ssh:`Host internal1 internal2<br />
ProxyCommand ssh -q firewall.domain.com nc -w 1 %h %p`
