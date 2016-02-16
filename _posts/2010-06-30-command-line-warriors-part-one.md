---
id: 862
title: Command-line warriors, part one
date: 2010-06-30T16:19:18+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=862
permalink: /2010/06/30/command-line-warriors-part-one/
categories:
  - Fotos
  - Geekstuff
  - Gentoo
  - Linux
---
<img data-echo="https://heipei.net/weblog/terminal.png" alt="Terminal" class="alignleft" />This is a post about some things you might have used a graphical tool for in the past, but which can be done just as well using command-line tools. Since I keep finding these little gems I hope I can continue this kind of post in the future. I&#8217;ll try to categorize the tips and I&#8217;ll only post the functionality I recently discovered and use myself, so this is not a reference for any of the programs mentioned.

**Photography**
  
You accidentally selected &#8220;Delete All&#8221; on your digital cameras and now your photos are gone? You even fear they might have been overwritten by photos taken after the accident? Fear not, the same thing happened to me, and I was able to restore all the photos from the event plus photos going back as far as three months from my CF card in my 400d using the [**PhotoRec**](http://www.cgsecurity.org/wiki/PhotoRec) software.

Cameras today often have an orientation sensor, so pictures taken in portrait mode will automatically be rotated. But this usually happens in the viewer, while the orientation is simply an EXIF tag. Of course this takes up precious computing time and not every viewer supports it. **[jhead](http://www.sentex.net/~mwandel/jhead/)** can not only display EXIF information in a consistent manner but can also rotate pictures lossless and clear the orientation-tag afterwards. The call is `jhead -autorot *.JPG`
  
If you want to rename your images using EXIF-information, [**exiftool**](http://www.sno.phy.queensu.ca/~phil/exiftool/) is the way to go. The command `exiftool '-FileName<Party_ ${CreateDate}_${filename}' -d %Y%m%d *.jpg` would prefix all the photos with &#8220;Party&#8221; and the create-date, while keeping the original filename as the suffix. exiftool can shift dates too, if you ever forget to adjust for daylight saving.

When uploading the images you&#8217;ll often want to resize them. The [**ImageMagick**](http://www.imagemagick.org/) collection can do just that, and many other things (like sharpening etc.). If you `mogrify -resize 1600x1600` your photos will be resized to 1600px maximum edge length, while keeping the ratio. But be careful, mogrify overwrites the pictures in place!

**Music**
  
Thanks to services like [video2mp3.net/](http://www.video2mp3.net/) you can download a lot of music from YouTube. But sometimes there is silence at the end or the beginning of a song, and a whole collection of songs might have differing levels of volume. To cut an mp3 you can use [**mp3splt**](http://mp3splt.sourceforge.net/mp3splt_page/home.php) like this to cut everything after 03:30 minutes:`mp3splt file.mp3 00.00 03.30`The sound levels can be normalized, losslessly, using [**mp3gain**](http://mp3gain.sourceforge.net/):`mp3gain -rk *`

**Misc**
  
When pretty-printing flat text files I use [**a2ps**](http://www.gnu.org/software/a2ps/) to format them nicely and get a PostScript-document. a2ps however does not support UTF-8, while the only characters I care about (German Umlauts) can be represented using Latin1 just fine. So, one can use iconv to convert them on the fly like this:`iconv --from-code=UTF-8 --to-code=LATIN1 textfile.txt|a2ps --font 9 -E -B -r --column=1 > out.ps`

To export images from a PDF-file I discovered [**pdfImages**](http://gd.tuwien.ac.at/linuxcommand.org/man_pages/pdfimages1.html), which is part of the xpdf-suite. Use it like this:`pdfimages -j foo.pdf  bar`
