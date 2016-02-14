---
id: 106
title: Rails 1.1 / lighttpd-1.4.11 / fastcgi fuckup
date: 2006-08-04T19:12:23+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2006/08/04/rails-11-lighttpd-1411-fastcgi-fuckup/
permalink: /2006/08/04/rails-11-lighttpd-1411-fastcgi-fuckup/
autometa:
  - tend slower problems updating rails work lighttpd anymore
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - Linux
  - Rails
---
some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
`some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
` 
  
you have to do what is being told in [this bugreport](http://trac.lighttpd.net/trac/ticket/487) and change the line in config/lighttpd.conf from
  
``some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
`some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
` 
  
you have to do what is being told in [this bugreport](http://trac.lighttpd.net/trac/ticket/487) and change the line in config/lighttpd.conf from
  
`` 
  
to:
  
```some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
`some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
` 
  
you have to do what is being told in [this bugreport](http://trac.lighttpd.net/trac/ticket/487) and change the line in config/lighttpd.conf from
  
``some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
`some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
` 
  
you have to do what is being told in [this bugreport](http://trac.lighttpd.net/trac/ticket/487) and change the line in config/lighttpd.conf from
  
`` 
  
to:
  
``` 

also [this tip about the she-bang line](http://wiki.rubyonrails.org/rails/pages/ShebangChangeScripts) in rails applications proved to be very useful.
  
**Update:**
  
Ive looked a little further, and ive come to the conclusion that when developing/deploying rails apps on multiple systems (like Mac OS X and Gentoo Linux in my case) its best to use rails with the &#8211;ruby option when generating a new app. So whenever you build your new rails app do it like this (or even use an alias):
  
````some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
`some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
` 
  
you have to do what is being told in [this bugreport](http://trac.lighttpd.net/trac/ticket/487) and change the line in config/lighttpd.conf from
  
``some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
`some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
` 
  
you have to do what is being told in [this bugreport](http://trac.lighttpd.net/trac/ticket/487) and change the line in config/lighttpd.conf from
  
`` 
  
to:
  
```some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
`some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
` 
  
you have to do what is being told in [this bugreport](http://trac.lighttpd.net/trac/ticket/487) and change the line in config/lighttpd.conf from
  
``some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
`some people, like me, tend to be a little slower. so if you run into the same problems after updating to rails 1.1 and your old 1.0 rails app dont work with lighttpd anymore (but instead quit with this error:)
  
` 
  
you have to do what is being told in [this bugreport](http://trac.lighttpd.net/trac/ticket/487) and change the line in config/lighttpd.conf from
  
`` 
  
to:
  
``` 

also [this tip about the she-bang line](http://wiki.rubyonrails.org/rails/pages/ShebangChangeScripts) in rails applications proved to be very useful.
  
**Update:**
  
Ive looked a little further, and ive come to the conclusion that when developing/deploying rails apps on multiple systems (like Mac OS X and Gentoo Linux in my case) its best to use rails with the &#8211;ruby option when generating a new app. So whenever you build your new rails app do it like this (or even use an alias):
  
```` 
  
this way your apps work on most systems (as long as env installed which seems to be pretty standard) without modifiying any files like the dispatch.fcgi