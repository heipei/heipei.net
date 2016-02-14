---
id: 85
title: Lussumo Filebrowser
date: 2006-03-27T10:38:57+00:00
author: Jojo
layout: post
guid: http://heipei.net/2006/03/27/lussumo-filebrowser/
permalink: /2006/03/27/lussumo-filebrowser/
autometa:
  - 
categories:
  - Allgemein
  - Geekstuff
---
<img alt="Filebrowser" class="alignleft" src="/weblog/filebrowser.jpg" />So, yeah, im a flickr fanboy. But often enough there are times where you dont put pictures onto your flickr account. Like, if you just want to show it to your buddy and then delete it. Or to be independent from flickr. Anyway, ive been using Gallery 2 on this server, which was ok, but proved to be

  * Soooo slow
  * Cumbersome to administer
  * Impossible to update
  * Very Insecure (which with the point above is nothing you&#8217;d want)

So, i was looking for a way to easily show off some images, without any overhead from big database-driven php applications, cached images in 3 different dimensions, user administration, and sooo on. I had [Lussumo Filebrowser](http://thefilebrowser.com/) in [my del.icio.us](http://del.icio.us/heipei/) bookmarks for a while (del.icio.us now supports private bookmarks btw, awesome!) but never got around to try it out. Let me tell you how you get it working:

  * Download the 47kb(!) zip file
  * Unzip, copy resulting files (you can leave out the GPL which is the biggest file in the bundle ;) into each directory you want to share (unless its a subdir of an already shared directory)
  * Make sure the dir is writable by the webserver

Aaaand, youre done. Now, the thing generates thumbnails, which get prefixed with a _ which goes really fast. If you delete an image from the folder the thumbnail automatically gets deleted to. Only if you add pictures you have to run the thumbnailer manually, but ok.
  
What am i telling you? Try it out in my [tmp](/heipei/tmp/) and my [weblog](/weblog/) directories. This thing really blew me away. Its perfect for keeping an eye on what kinda sick stuff is residing in your tmp (\*g\*) and is **perfect** for blogging purposes.
  
[tags]lussumo, filebrowser, php, gallery, images[/tags]