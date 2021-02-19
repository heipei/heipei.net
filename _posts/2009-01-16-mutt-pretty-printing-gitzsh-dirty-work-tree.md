---
id: 386
title: 'mutt: pretty printing, git,zsh: dirty work-tree'
date: 2009-01-16T19:15:49+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=386
permalink: /2009/01/16/mutt-pretty-printing-gitzsh-dirty-work-tree/
aktt_tweeted:
  - 1
categories:
  - Geekstuff
  - Gentoo
  - git
  - Linux
---
OK, I can already hear you saying &#8220;here we go again&#8221;. Well, I&#8217;m sorry that I&#8217;m not really in the mood to report much on my personal life (though, rest assured, everything is really going smooth, so don&#8217;t worry). Maybe this blog will undergo certain changes in the near future, but right now I&#8217;m not at liberty to discuss this (just wait a few more weeks).
  
For today I&#8217;ve got two small tips for you. The first is about printing directly from mutt (not that I print mails that often). If you&#8217;re not satisfied with the default output you can use [a2ps](http://www.gnu.org/software/a2ps/) (which has many other uses as well!) to produce a more readable output. To do that simply place this into your .muttrc:`set print_command="a2ps -r --columns=2 -j -B|lpr"` This of course assumes that you can use lpr to print on your system (which is my preferred way of printing stuff).
  
<img src="/weblog/git_dirty.jpg" alt="git/zsh dirty work tree" class="alignleft" />The next tip builds on [my previous post about a zsh prompt showing the current branch](/heipei/2008/08/05/zsh-git-branch-prompt-and-cygwin/) if inside a git repo. Instead of just showing the branch-name we want to indicate whether the working directory is clean or if it has uncommitted changes. With git there are two kinds of &#8220;dirty&#8221; though: changes in the index but not committed and changes not in the index. So we have two indicators, which makes the whole thing look like the image. Red is changes not in index, and green is changes already added to the index. The code you&#8217;re gonna need in your .zshrc looks like this:

<pre># Set a nice git-prompt (calls git_status())
git_prompt_info() {
  local git_dir ref br;
  git_dir=$(git rev-parse --git-dir 2&gt; /dev/null) || return
  ref=$(git symbolic-ref HEAD 2&gt; /dev/null) || return
  branch_prompt=${ref#refs/heads/}
  if [ -n "$branch_prompt" ]; then
    status_icon=$(git_status)
    echo "$status_icon%{$fg[yellow]%} [$branch_prompt]"
  fi
}
# Show character if index and/or work-tree are dirty
git_status() {
  my_status=$(git status)

  if [[ "$my_status" == *"Changes to be committed"* ]]; then
    output="%{$fg[green]%}+"
  fi
  
  if [[ "$my_status" == *"Changed but not updated"* ]]; then
    output="$output%{$fg[red]%}*"
  fi

  echo $output
}</pre>

Now all you&#8217;ve gotta do is call $(git\_prompt\_info) somewhere in your RPS1.
