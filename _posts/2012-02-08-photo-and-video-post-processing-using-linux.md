---
id: 888
title: Photo and video post-processing using Linux
date: 2012-02-08T19:42:41+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=888
permalink: /2012/02/08/photo-and-video-post-processing-using-linux/
categories:
  - Fotos
  - Geekstuff
  - Gentoo
  - Linux
---
<img src="https://heipei.net/weblog/imagemagick.png" class="alignleft" />As you might have noticed I tend to shoot a lot of photos (and recently the occasional video) on events such as parties and birthdays. Being a Linux user, and a strong believer in straight-out-of-camera shots, I tend to shy away from individual post-processing for my shots. I might crop the occasional shot, especially when it is to be used in a blog-post or something similar, but usually I simply like to throw a batch of images into a simple workflow to upload them to the web.

**Photos**
  
When uploading photos to my [llgal gallery](http://photos.heipei.net/), I resize and sharpen them so they don&#8217;t take up quite as much storage and bandwidth. I start by using the EXIF auto-rotation flag to losslessly rotate any upright photos:
  
`jhead -autorot IMG_*.JPG`Next, I rename the photos so there are no filename collisions when I throw together photos from different events:
  
`exiftool '-FileName<EVENT_ ${CreateDate}_$filename' -d %Y%m%d IM*.JPG`
  
Finally, if I want to upload the batch, I resize and sharpen the photos using the excellent imagemagick tools. Careful! <tt>mogrify</tt> will modify images in-place, so be sure to apply it on a copy of your original JPGs:
  
`mogrify -resize "1024x1024>" -unsharp 1x1+1+0 -sampling-factor 2x2 *.JPG`After that the folder with the photos is a simple <tt>scp</tt> and <tt>llgal</tt> call away from making it into my gallery.

**Videos**
  
<img src="https://heipei.net/weblog/ffmpeg.png" class="alignleft" />I&#8217;ve just recently started shooting video, but I already love the functionality on my EOS 60D. Even though I use the Magic Lantern firmware (you absolutely should too!) to reduce the bitrate of the videos by half, the 1080p25 videos from the EOS are still way too large to be used in any reasonable way, so it&#8217;s a good idea to compress them. I start by merging all the videos of an event into one file, using the mkvtools package:
  
`mkvmerge MVI_0001.MOV + MVI_0002.MOV -o MVI_EVENT.MOV`
  
Next, I use ffmpeg to downscale and recompress the video and audio. Depending on your distribution, you might need to install extra packages from special repositories to do this:
  
`ffmpeg -i MVI_EVENT.MOV -s 854x480 -b 2048k -vcodec libx264 -acodec libfaac -ac 2 -ar 48000 -ab 128k MVI_EVENT.mp4`
  
This will give you a nice small file with very good quality, even if it takes a while to render. The adjusting knob is the bitrate behind the <tt>-b</tt> parameter. Be careful not to change the framerate of the original video using <tt>-r</tt>, this will degrade quality and take forever because frames will have to be interpolated!

The ffmpeg-call could certainly be optimized, and I&#8217;m happy to hear about any suggestions.
