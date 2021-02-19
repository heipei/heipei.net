---
id: 403
title: 'git: full-length side-by-side diffs'
date: 2009-01-29T10:46:19+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=403
permalink: /2009/01/29/git-full-length-side-by-side-diffs/
categories:
  - Geekstuff
  - Gentoo
  - git
  - Linux
---
Got this one from the git-ml (which I read via gmane, but that&#8217;s a different post):
  
I&#8217;m not very good at reviewing patches. Especially not if it&#8217;s something like JavaScript. git at least colorizes its diffs, which makes it somewhat better. But as soon as you have a big file which is being patched in multiple, disconnected places (different &#8220;hunks&#8221; in git terminology), so that the context between these hunks is missing, it gets to messy imho.

<div class="img aligncenter">
  <a href="https://secure.flickr.com/photos/heipei/3236351860/" title="git-difftool in action by heipei, on Flickr"><img src="https://farm4.static.flickr.com/3346/3236351860_90f114d5c1.jpg" width="500" height="369" alt="git-difftool in action" /></a>
</div>

Fortunately there is an easy solution: In git there is contrib/difftool, which makes it easy to display git diffs side-by-side with a viewer of your choice. Of course that meant vimdiff for me. To see all the lines of a file (and not just the changed + a little context) I call git-difftool like this:
  
`git-difftool --tool=vimdiff -U99999`Now you can alias that command and use the normal rev-parse arguments. As you can see on the screenshot you can easily distinguish between removed lines, added lines and changed lines. For changed lines the part that was changed is highlighted.
