---
id: 311
title: GitHub Commit Badge
date: 2008-08-20T16:47:09+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=311
permalink: /2008/08/20/github-commit-badge/
aktt_tweeted:
  - 1
categories:
  - Allgemein
  - Geekstuff
  - git
  - Langeweile
  - Web
tags:
  - github git commit badge banner website javascript
---
After searching (and finding no existing solution), [I created a small JavaScript-based commit-badge/banner](https://github.com/heipei/github-commit-badge/tree) which you can show of on your website to point at the latest (or a specific) commit in a Github-repo. This is what it looks like (if you see blank space here or something fubar please reload the page and after that complain ;):

<div id="gcb-container">
  <br />
</div>

(A live version with more than one repo can be seen [here.](https://heipei.net/files/github-commit-badge/))
  
So far this badge works with Firefox, Safari 3.x and Opera. I haven&#8217;t had the resources or motivation to make it work on IE though.
  
This has been my first foray into the world of JavaScript and DOM, and the first time I really wrote a CSS from scratch, so expect things to be buggy and the code to look slightly amateurish. The script uses JavaScript-libs, which I packed into one big file. [jQuery](http://jquery.com/) is used to get the data from the [Github API](http://github.com/guides/the-github-api), [Datejs](http://www.datejs.com/) for parsing the timestamp and an [MD5-lib](http://pajhome.org.uk/crypt/md5/) for requesting the gravatars.
  
If you want to use it on your website you should just download everything from Github and put it on your webspace. The README shows you how to embed it into your webpage (I made sure that the CSS-elements don&#8217;t clash with your existing stylesheets).
  
If you want to contribute to it you&#8217;re welcome to (the easiest way is forking the repo at Github), but please don&#8217;t try to make it into a monster-app which does much more than it was intended to do.
  
Thanks go out to [DrNic](http://drnicwilliams.com/) for contributing and also for his [Github-badges](http://github.com/drnic/github-badges/tree/master) project for the good code-examples.
  
(By the way, Github asked for a JavaScript-version [in this blog-post](http://github.com/blog/109-supercharged-commits-on-your-site), so here it is. I hope they&#8217;re not mad at me for stealing the two tiny logos. ;)
  
**Update:** I notified defunkt of GitHub and what do you know, I got featured on their blog ([entry here](http://github.com/blog/149-more-javascript-github-badges)). Awesome. I hope I can put some further touches into the project in the next few days.