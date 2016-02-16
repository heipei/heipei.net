---
id: 148
title: tig, a text-mode interface to git
date: 2007-08-25T19:05:40+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2007/08/25/tig-a-text-mode-interface-to-git/
permalink: /2007/08/25/tig-a-text-mode-interface-to-git/
categories:
  - Geekstuff
  - Gentoo
  - git
  - Linux
tags:
  - linux git tig
---
<img data-echo="/weblog/tig.jpg" alt="tig" class="alignleft" />Like git? Good. Like the UI of slrn/mutt? Even better. Then you should try out [tig](http://repo.or.cz/w/tig.git) which is a text-mode interface to git (written in C). Users of slrn should feel right at home, everyone else should not have a hard time using it. tig enables you to view the repository history in a variety of ways (diff-view, log-view, main-view). The cool thing (and the reason it extends the already good git log) is that you can, for example, view the history as one-line-per-commit with author and commit message, and upon pressing enter view the details (i.e. the log and diff of this commit) just like viewing posts in newsgroups. You can also pipe git-log output to tig which will then recognize and colorize the syntax of git-log output. Just clone the repository (using git of course ;), configure, make and install the single binary and youre good to go. When in the program hitting &#8216;h&#8217; brings up a familiar help-screen which should pretty much explain everything you need to know.
