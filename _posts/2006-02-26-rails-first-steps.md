---
id: 78
title: 'Rails: First Steps'
date: 2006-02-26T14:23:37+00:00
author: Jojo
layout: post
guid: http://heipei.net/2006/02/26/rails-first-steps/
permalink: /2006/02/26/rails-first-steps/
autometa:
  - 
categories:
  - Allgemein
  - Geekstuff
  - Rails
---
[<img src="https://static.flickr.com/35/104615408_077361cbfa_m.jpg" width="240" height="180" alt="my first little rails application" class="alignleft" />](https://secure.flickr.com/photos/heipei/104615408/ "Photo Sharing")I thought i&#8217;d report back here to tell you how much progress i made (with RoR). Well, to be honest, not that much. But as always I learned some other useful things in the progress. Anywho, as you can see in the photo i created a little rails application which takes a search string and returns the image results from flickr and yahoo image search. [Flo](http://hackvalue.de) inspired me to do this, and i was planning on adding other search engines as well (Google Images, MSN Image Search). The good thing about flickr is that there is a ruby gem called &#8216;flickr&#8217; which does everything one could need, albeit reaaally slow (takes 3-5 sec. per image, somethings wrong there). The same guy also created a yahoo-search library, but for some reason didnt include the url for the thumbnails cached at yahoo, which is why i had to implement it (easy though). Having looked at the flickr, the yahoo and the google api for search request i can say that i cant stop padding the shoulder of the flickr-guys. Not only is their whole service really great but the api is as well.
  
Now, i cant say that developing it has been much fun so far. Sure, rails is cool when you do what its supposed to do. Like create a form which sends something and using the magic that is ajax re-renders a part of your webpage. Cool thing, and compared to writing it yourself (like in the current german it magazine c&#8217;t) it saves you a lot of time. But then you reach a point where you ask &#8216;how can one form call multiple methods which update multiple regions in turn&#8217; or &#8216;i dont get this whole render :foo principle, why can there only be one render command?&#8217; and finally &#8216;why do the flickr results take so f\***ing long to render?&#8217;
  
[tags]ruby, rails, flickr, yahoo, search, engine, web, development[/tags]
