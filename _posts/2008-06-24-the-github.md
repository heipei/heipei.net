---
id: 173
title: The GitHub
date: 2008-06-24T22:46:26+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=173
permalink: /2008/06/24/the-github/
categories:
  - Geekstuff
  - Gentoo
  - git
  - Linux
tags:
  - git github review
---
[<img src="/weblog/github.png" alt="GitHub" class="alignleft" />](http://github.com)Ok, I hinted that I would do a more thorough review of GitHub, the new and easy-to-use git repository hosting site. Although I&#8217;m still no power-user I&#8217;ve come to know the features that make GitHub worth using and so far unique.
  
The &#8220;Fork&#8221; feature is probably the most important one. Instead of just cloning a repository and working on it locally, you can fork it on GitHub. When you fork a project everyone can see you did, and has a nice flashy graph-view so they can see where you branched and what commits you made that are not (yet) in the upstream. <img src="/weblog/fork.png" alt="GitHub fork" class="alignleft" />And if you have introduced changes that you think would benefit the project you can send people (e.g. the original project owner) a &#8220;pull-request&#8221;. The recipient can then easily fetch/merge your changes into his project. It really doesn&#8217;t get much easier to contribute to (open-source) projects. I certainly did for the first time ;)

<div align="center">
  <img src="/weblog/branch.png" alt="GitHub forks" />
</div>

Then there are feeds. You can watch projects, which means that your feed includes any commits/comments on the watched projects. It goes without saying that this can be quickly overwhelming for active projects. <img src="/weblog/github_comment.png" alt="GitHub" class="alignleft" />Comments can be made on specific lines in a commit (or on the whole commit), which is a great feature (think of it as the equivalent to patches being discussed line-by-line in mailing-lists). I still prefer mails though ;)
  
The syntax-highlighting looks pretty good. I&#8217;ve already mentioned the very pale interface (as in low-contrast) and it still has not changed. But I think that most people really browse the commit history in their local clones anyway.
  
Each project has an attached Wiki too, so you can add a few pages (or a lot if you wish).
  
To conclude I can say that GitHub is a great service, since it has a free plan for public projects. I would not need it for my personal projects, but to run a or contribute to a open-source project it&#8217;s perfect. The amount you use its features is up to you. If you already have a Wiki, already have an active mailing-list and discuss patches there too then you can just use GitHub as the central source code repository (plus the forks of course). The real work is done on your local repository with git anyway, but y&#8217;already knew that I guess ;)