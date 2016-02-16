---
id: 371
title: 'Unison &#8211; Stay in sync'
date: 2008-12-03T00:06:32+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=371
permalink: /2008/12/03/unison-stay-in-sync/
aktt_tweeted:
  - 1
categories:
  - Apple
  - Geekstuff
  - Gentoo
  - Linux
---
<img data-echo="/weblog/unison.gif" alt="Unison" class="alignleft" />I use git to version almost everything I work with on a daily basis. My emails reside on an IMAP-server and my bookmarks are on delicious. My config files are written such that the same file can be used on any machine I have. The question remains how to keep all of the other stuff in sync.
  
There are excellent backup-solutions (and you can easily write your own), there&#8217;s git for version-control and of course there is rsync, but often you wan&#8217;t something else. Obviously you don&#8217;t want to put big files that can&#8217;t be efficiently compressed into a git repo (making it twice as big) and then push/pull multiple repos everytime you changed one file on one host. rsync also has a few drawbacks.
  
Enter Unison. Unison can best be described as a bi-directional rsync with a nice GUI which can be started from one host. The problem with just using rsync is that when you sync you effectively designate one host as master and the other one as the one that should be overwritten if needed. The user interface leaves much to be desired as well. I use rsync mostly for unsupervised backups.
  
<img data-echo="/weblog/unison_macos.png" alt="Unison" class="aligncenter" />
  
Unison solves all of these problems. It works with profiles, where local and remote paths are specified and ignore masks can be set. Then when started on a profile it checks the paths, and gives you pretty good settings to sync it (obviously if a file is changed you probably want the newer one on both hosts, and if a file was deleted but was there before, you probably want to delete it on the other host as well). You can then go through the file list and use keyboard shortcuts to mark files as use-local, use-remote, skip for this sync and ignore permanently. It may not sound that spectacular, but that is exactly what sets Unison apart. So, if you work on more than one host give it a try, it works on Windows, Linux and Mac OS X.
