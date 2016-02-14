---
id: 172
title: SVN is not a content-tracker
date: 2008-06-15T12:02:55+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=172
permalink: /2008/06/15/svn-is-not-a-content-tracker/
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - git
  - Linux
tags:
  - git svn content tracker inefficient
---
`<em>jojo@host:~/svn/test$</em> svn add git-talk.pdf<br />
A  (bin)  git-talk.pdf<br />
<em>jojo@host:~/svn/test$</em> svn commit -m 'First file'<br />
Adding  (bin)  git-talk.pdf<br />
Transmitting file data .<br />
Committed revision 1.<br />
<em>jojo@host:~/svn/test$</em> du -sh ../test-repo<br />
<strong>6.5M</strong>    ../test-repo<br />
<em>jojo@host:~/svn/test$</em> <strong>cp git-talk.pdf git-talk2.pdf</strong><br />
<em>jojo@host:~/svn/test$</em> svn add git-talk2.pdf<br />
A  (bin)  git-talk2.pdf<br />
<em>jojo@host:~/svn/test$</em> svn commit -m 'Second file'<br />
Adding  (bin)  git-talk2.pdf<br />
Transmitting file data .<br />
Committed revision 2.<br />
<em>jojo@host:~/svn/test$</em> du -sh ../test-repo<br />
<strong>13M</strong>     ../test-repo`
  
I rest my case. Now some of you (those who know git and know why they use it) might say &#8220;so what, that is no secret&#8221; while others may flip over backwards. The second group of people is the one I wanted to reach ;)