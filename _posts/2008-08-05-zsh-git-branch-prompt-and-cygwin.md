---
id: 260
title: zsh git-branch prompt and cygwin
date: 2008-08-05T00:00:34+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=260
permalink: /2008/08/05/zsh-git-branch-prompt-and-cygwin/
categories:
  - Geekstuff
  - Gentoo
  - git
  - Linux
tags:
  - git zsh cygwin prompt
---
This is a post about a few things at once, since I have all these little tips/hints I&#8217;d like to make public which don&#8217;t deserve their own post ;)
  
Ok, first about the git-branch status on your zsh. What is that good for? Well, I often find myself working in git-repositories with different local branches (obviously), and sometimes you lose track which branch you have checked out in which repository at the moment. Instead of issuing &#8220;git branch&#8221; all the time (also note that the git-<command> syntax is no longer valid, the commands are used without the dash now!) you can use that unused space on the right side of your prompt to display the active branch of the current directory (given it is a git repository of course). This is what it will look like (the yellow text is the current branch):
  
<a class="thickbox" rel="" href='http://hackvalue.de/heipei/wp-content/gallery/screenshots/zsh-git-cygwin.gif' title=''><img data-echo='http://hackvalue.de/heipei/wp-content/gallery/screenshots/zsh-git-cygwin.gif' alt='zsh-git-cygwin.gif' class='ngg-singlepic ngg-center' /></a>To achieve that (and the colors too) you have to put the following into your .zshrc:

<pre>setopt prompt_subst
autoload -U colors
colors
function __prompt_git()
{
        local git_dir ref br top;
        git_dir=$(git rev-parse --git-dir 2> /dev/null) || return
        ref=$(git symbolic-ref HEAD 2> /dev/null) || return
        br=${ref#refs/heads/}
        top=$(cat $git_dir/patches/$br/current 2>/dev/null) \
                  && top="/$top"
                  echo "[$br$top]"
}
export PS1='[%?]%{$fg[green]%}%n%{$reset_color%}@%m:%~\$ '
export RPS1='%{$fg[yellow]%}$(__prompt_git) %{$reset_color%}%*'
if [[ "$USER" == "root" ]] ; then
        export PS1='[%?]%{$fg[red]%}%n%{$reset_color%}@%m:%~# '
fi
</pre>

(RPS1 is the right side of the prompt)
  
This colors your username green and red if you&#8217;re root (really helpful). I&#8217;ve picked up the habit of giving remote hosts different colors for the username so that when I have many terminals open I can identify the corresponding host not only by name but also by color. The number in front of the username is the return-code of the command just executed.

<img data-echo='http://hackvalue.de/heipei/wp-content/gallery/logos/cygwin-logo.jpg' alt='cygwin-logo.jpg' class='alignleft' />The title of this post (and the screenshot) already mentioned the second topic. Cygwin. I heard about it before but always dismissed it as a poor attempt to bring something into an operating system in a strange and crippled way just because some people are too scared to switch to a unix system. Well, being at home right now (and using Windows XP here because I am too lazy to switch this old machine and also play the occasional game in my free time ;) made me try cygwin, and I have to say I am impressed. I don&#8217;t use it extensively, to be honest I only use it to be able to ssh/scp without using gui-software like PuTTY/WinSCP, to use git without a gui and to have a decent zsh with screen in it. Oh yeah, and vim. Basically all the little life-savers you have with linux (tar, grep, less, sed, man). Just being able to download a tarball (like git or stow) and compiling/installing it like on any unix is quite convenient too. And that works fine with cygwin. You can also access you normal windows-drives and it has a tool (cygstart) to open files with the associated programes (like &#8220;open&#8221; in Mac OS). Last but not least you can even run an ssh-server, which seems weird at first, but comes in handy when all you want to do is shutdown you windows-box remotely ;). So if you don&#8217;t like the rxvt you can always use putty to ssh to localhost (yeah, I don&#8217;t do that neither).
