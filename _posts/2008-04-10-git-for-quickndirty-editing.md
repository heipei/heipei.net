---
id: 165
title: 'git for quick&#8217;n&#8217;dirty editing'
date: 2008-04-10T17:58:47+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=165
permalink: /2008/04/10/git-for-quickndirty-editing/
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - git
  - Linux
tags:
  - git linux
---
<img src="/weblog/git-logo.png" alt="git" class="alignleft" />You can use git as a full-fledged, commit-driven VCS, with all its awesome features. I wrote about that (and probably will again) before. But often you just have to track some things over the course of a few minutes/hours and don&#8217;t even want a &#8220;repository&#8221; or a commit-history or branches.

Often you have some code/text in it&#8217;s original form and need to change a few lines until something works (again). Sometimes you&#8217;d like to keep track of these changes (for example to apply them on a different codebase/host). Before git, I just copied the files (or directory) I wanted to edit to some <file.bak> or <file.old> destination and later did a diff with the new files. That sucks for obvious reasons.
  
With git it can be much more convenient: You go into the directory with the vanilla files in it. Just do a **git init** and **git add .**. Thats pretty much it, now you just go on to edit whatever you want. To see the changes you made since the first **git add .** just type **git diff** (I don&#8217;t have to tell you that you can pipe this output into a patch).
  
If you happen to add new files, I usually commit the original version using **git commit -m &#8216;initial&#8217;** (even later on, since you haven&#8217;t staged any of your new changes for committing yet), and then do a **git add -u** and **git add <new -files>** and then diff with **git diff &#8211;cached**. If there is a better way please let me know!

That, imho, is one of the examples where git beats svn hands-down. The notion of a local repository (or in this case the index) is just great once you understood the concept somewhat. I wouldn&#8217;t use svn for little changes since it would mean setting up an svn-repo (in a different dir), checking it out, commit the vanilla version, changing stuff and then diffing it. And then you&#8217;d have all those .svn directories cluttering your working tree, whereas with git you can just do a **rm -rf .git** at the end of the day and forget that you even used git.

Something else I missed in my svn days was committing only some changes (called &#8220;hunks&#8221; in git) to a file. In git you can use **git add &#8211;patch** or **git-gui** to do just that and avoid the problem of having multiple unrelated changes in a single commit (which sucks when debbuging). I read a really good article (and comparison with other SCMs) today at <http://tomayko.com/writings/the-thing-about-git>.