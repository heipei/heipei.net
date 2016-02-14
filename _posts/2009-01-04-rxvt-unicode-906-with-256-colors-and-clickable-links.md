---
id: 375
title: rxvt-unicode 9.06 with 256 colors (and clickable links)
date: 2009-01-04T13:47:20+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=375
permalink: /2009/01/04/rxvt-unicode-906-with-256-colors-and-clickable-links/
aktt_tweeted:
  - 1
categories:
  - Geekstuff
  - Gentoo
  - Linux
---
Up until right now I&#8217;ve been using xterm. While it&#8217;s not the best of terms it does support 256 colors out of the box (and I don&#8217;t use fancy stuff like transparency/translucency). What it has been lacking however, and which Flo pointed out, was the support to make URLs clickable. This is an important feature, especially since I use mutt and slrn regularly, and my IRC-client is irssi, so the majority of links I&#8217;m interested in arrives in my terminal.
  
So I went looking for a term with clickable urls but also with 256-color-support and found [rxvt-unicode (or short: urxvt)](http://software.schmorp.de/pkg/rxvt-unicode.html), which is a fork of the original rxvt with unicode-support (duh!). To get 256 colors working you have to apply the urxvt-8.2-256color.patch in the doc subdirectory of the source.
  
`Up until right now I&#8217;ve been using xterm. While it&#8217;s not the best of terms it does support 256 colors out of the box (and I don&#8217;t use fancy stuff like transparency/translucency). What it has been lacking however, and which Flo pointed out, was the support to make URLs clickable. This is an important feature, especially since I use mutt and slrn regularly, and my IRC-client is irssi, so the majority of links I&#8217;m interested in arrives in my terminal.
  
So I went looking for a term with clickable urls but also with 256-color-support and found [rxvt-unicode (or short: urxvt)](http://software.schmorp.de/pkg/rxvt-unicode.html), which is a fork of the original rxvt with unicode-support (duh!). To get 256 colors working you have to apply the urxvt-8.2-256color.patch in the doc subdirectory of the source.
  
` 
  
To configure urxvt you can conveniently use your ~/.Xdefaults. Mine looks like this:
  
``Up until right now I&#8217;ve been using xterm. While it&#8217;s not the best of terms it does support 256 colors out of the box (and I don&#8217;t use fancy stuff like transparency/translucency). What it has been lacking however, and which Flo pointed out, was the support to make URLs clickable. This is an important feature, especially since I use mutt and slrn regularly, and my IRC-client is irssi, so the majority of links I&#8217;m interested in arrives in my terminal.
  
So I went looking for a term with clickable urls but also with 256-color-support and found [rxvt-unicode (or short: urxvt)](http://software.schmorp.de/pkg/rxvt-unicode.html), which is a fork of the original rxvt with unicode-support (duh!). To get 256 colors working you have to apply the urxvt-8.2-256color.patch in the doc subdirectory of the source.
  
`Up until right now I&#8217;ve been using xterm. While it&#8217;s not the best of terms it does support 256 colors out of the box (and I don&#8217;t use fancy stuff like transparency/translucency). What it has been lacking however, and which Flo pointed out, was the support to make URLs clickable. This is an important feature, especially since I use mutt and slrn regularly, and my IRC-client is irssi, so the majority of links I&#8217;m interested in arrives in my terminal.
  
So I went looking for a term with clickable urls but also with 256-color-support and found [rxvt-unicode (or short: urxvt)](http://software.schmorp.de/pkg/rxvt-unicode.html), which is a fork of the original rxvt with unicode-support (duh!). To get 256 colors working you have to apply the urxvt-8.2-256color.patch in the doc subdirectory of the source.
  
` 
  
To configure urxvt you can conveniently use your ~/.Xdefaults. Mine looks like this:
  
`` 
  
The nice side-effect is that urxvt is about 10 times faster than xterm (try it by cat-ing a large file and using &#8216;time&#8217; to measure it).