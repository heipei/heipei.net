---
id: 801
title: 'OpenSSH: Reuse existing connections / Reverse tunnel'
date: 2010-02-02T17:48:00+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=801
permalink: /2010/02/02/openssh-reuse-existing-connections-reverse-tunnel/
categories:
  - Geekstuff
  - Gentoo
  - Linux
---
[<img data-echo="/weblog/openssh.png" alt="OpenSSH" class="alignleft" style="border:0px" />](http://www.openssh.org/)You often hear the phrase &#8220;the swiss knife of &#8230;&#8221;. Well, for networking, OpenSSH clearly deserves that title in my opinion. Besides the obvious feature of providing secure logins with different options for mutual authentication, it can also be used to transfer files. It is also a core component of software like git, which depend on ssh to securely push changes instead of reinventing their own server and dealing with the whole authentication/authorization stuff once again.
  
I&#8217;ve blogged about [using SSH to access hosts behind a firewall/router more conveniently](https://heipei.net/2008/08/28/ssh-through-proxyintermediate-host/), and I really suggest you sit down and read the manpage front-to-back, it will probably be rewarding for your current workflow.

**Reusing a connection**
  
Anyway, today I wanted to present another advanced feature, one I only stumbled upon while learning for an upcoming exam. The slides mentioned the possibility to share connections on one SSH-channel (to the same destination, obviously). Now, why do you need more than one connection in the first place? Well, sometimes you just need the space, and using screen just doesn&#8217;t cut it. Or you use git or scp to the same host you&#8217;re logged in already interactively. In that case, you just have to establish one connection and any further connection will use the first one. The benefit? Login is way faster, almost instantly, because the whole handshake and authentication doesn&#8217;t have to take place again. The caveat: You&#8217;ll have to close your master-connection last, otherwise the other connections will drop too. For me that&#8217;s no problem, since the host I use most of the time is also the host I&#8217;ve got a session open with 24/7 (IRC).

I&#8217;m just gonna show the fully automated version here, though you can use it manually as well, just when you need it. A better description can be found [here](http://www.debian-administration.org/articles/290). To automate it, put this in your <tt>~/.ssh/config</tt> (you don&#8217;t have a config yet? shocking!):
  
`ControlMaster auto<br />
ControlPath /tmp/%r@%h:%p`As usual, you can put it at the very top to apply for all hosts or you can activate it for specific hosts by putting below a <tt>Host</tt> declaration. Now all you have to do is use <tt>ssh host</tt> as usual. You&#8217;ll see it&#8217;s working when you terminate the connection:
  
<tt>Shared connection to host.de closed.</tt>

**Reverse tunnel**
  
Yes, you can tunnel with OpenSSH. You can even have it act as a SOCKS proxy, which is really neat when combined with Firefox-plugins like FoxyProxy. But you can also reverse-tunnel your way out of a closed network (or NATed network for that matter) when you don&#8217;t have access to any intermediate host (like the router/firewall). It&#8217;s easy:
  
`ssh -NR 12345:localhost:22 home.de`This assumes you&#8217;re issuing the command from the machine that you want to access (from home) later on. It will bind the port 12345 on home.de so that it is forwarded to port 22 (SSH) on the local host. Yeah, it requires some reverse thinking too to get it right ;) The <tt>-N</tt>-switch prevents a login, by the way. Obviously it is of little use if your home.de has a flaky dialup connection, so you might want to reverse-tunnel to a stable endpoint (or use something like autossh).
