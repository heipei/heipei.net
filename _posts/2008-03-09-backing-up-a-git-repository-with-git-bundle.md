---
id: 162
title: Backing up a git repository with git bundle
date: 2008-03-09T15:51:01+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2008/03/09/backing-up-a-git-repository-with-git-bundle/
permalink: /2008/03/09/backing-up-a-git-repository-with-git-bundle/
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - Linux
tags:
  - git bundle linux backup
---
I have a git repository called ~/devel/ which is where all my development effort in various languages is stored (you can see that it&#8217;s not that much, otherwise I&#8217;d have separate repositories ;). I also occasionally merge projects that started in their own repositories into this one.
  
Anyway, while backing ~/devel/ to my new USB-drive i noticed that 1. the FAT32 partition seemed to mess with git, as git status showed \_all\_ of the files as changed and 2. i also backed up files which were in ~/devel/ but not in the repository (which is not what I want). I could have done something like git-archive or just backed it up without .git, but I want to keep the history.
  
In this case **git bundle** is what you want. git bundle was designed to allow transfer of git commits when there is no direct connection between repositories (i.e.: offline) but using patches is not an option because of the large number of commits and multiple branches. A git bundle is just one file which can be very easily created and again imported as it can be treated like another remote. A quick example:
  
`jojo@dualtron:~/devel$ git bundle create ~/devel.bdl master test` and a bundle is saved under ~/devel.bdl containing my master and test branches. If I am now at repository B I just use `jojo@dualtron:~$ git ls-remote devel.bdl` which shows me the branches stored in the bundle. To use the bundle I simple treat it like a remote, using **git fetch** (for example) `jojo@dualtron:~/git/repoB$ git fetch ~/devel.bdl refs/heads/\*:refs/remotes/bundle/\*`
  
If all of this doesn&#8217;t make any sense, **git help bundle** is your friend, as usual. If you still not get it afterwards you haven&#8217;t really understood how git works.
  
P.S.: If there is an easier way to accomplish this, or if there are any factual errors, please leave a comment!