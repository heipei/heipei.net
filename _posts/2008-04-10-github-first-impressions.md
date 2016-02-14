---
id: 166
title: 'github: first impressions'
date: 2008-04-10T23:10:00+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=166
permalink: /2008/04/10/github-first-impressions/
categories:
  - Geekstuff
  - git
  - Linux
---
[<img src="/weblog/github.png" alt="GitHub" class="alignleft" />](http://github.com)Just as I wanted to start writing this article I noticed that [github](http://github.com) is no longer beta. So, you might as well just go there and try it for yourself.
  
Now, about github. github is a public git-hosting-site. Put short, it&#8217;s like [repo.or.cz](http://repo.or.cz/), just with a shiny interface and a few special features. To be honest, I am not the perfect candidate for a service like this, since I don&#8217;t have any public repositories, I don&#8217;t know any people I&#8217;d like to cooperate with and I have my own account on a server where I run my private git repos. Also I often react allergic when I see something that already looks like another one of those Web2.0-mint-colors-big-font websites that offer some kind of paid plans just so that you can have a textbox in your webbrowser which others can edit too&#8230;
  
Since I spent way too much time writing full text in my last article I&#8217;m just gonna do some lists now :P
  
<img src="/weblog/github-test.png" alt="github" class="aligncenter" />

**The good**

  * It uses git and ssh. I know, i know. Let&#8217;s just say I&#8217;m happy that more and more people (like the Rails-crowd) are coming to their minds and use git.
  * It has a free plan for public repositories which is 100mb (which is a lot for a bare git-repo).
  * For beginners it&#8217;s probably a lot easier than repo.or.cz or setting up of an own server.
  * It has private repositories, which repo.or.cz does not offer.
  * It is built like a social network, which means it supports sending mails, pull-request and the like directly inline.

**The bad**

  * Right now it&#8217;s pretty slow.
  * It still feels like it&#8217;s missing some features (which I can&#8217;t really pin down since I haven&#8217;t used it extensively)
  * When giving instructions to connect to their server they didn&#8217;t mention the fingerprint of their SSH-key anywhere.

**The ugly**

  * The theme (which atm can&#8217;t be changed) sucks to high heavens. The important things (i.e. the list of files and the commit messages) are barely readable right now, and even less so under worse lighting conditions.
  * It still need some options to view the history and search it with some live-search-box

To sum it up: It&#8217;s a step in the right direction. It enables people to have their git-repositories quite fast and without hassle. Maybe the web-ui features aren&#8217;t even that important since with git you always get the full repository and can perform all history-related queries (like diffing) on your own machine with the weapon of your choice anyway. I&#8217;m really interested in how many people take advantage of the paid plans and if there will be more sites switching to/support git hosting. Having said that, I don&#8217;t think I will use it very much for the reasons mentioned before. Unless I start some public project&#8230; ;)