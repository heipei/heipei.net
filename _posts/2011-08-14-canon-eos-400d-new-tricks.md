---
id: 882
title: 'Canon EOS 400D: New tricks'
date: 2011-08-14T14:44:56+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=882
permalink: /2011/08/14/canon-eos-400d-new-tricks/
categories:
  - Allgemein
  - Fotos
  - Geekstuff
  - Linux
---
<img src="/weblog/eos400d.jpg" alt="Canon EOS 400D" class="alignleft" />You can&#8217;t teach an old dog new tricks. This wisdom is only partially true for most modern devices, thanks to firmware updates. I&#8217;ve [briefly mentioned having used a &#8220;hacked&#8221; firmware](https://heipei.net/2010/12/29/the-photographic-year-2010/) for the past few months. This weekend, contemplating whether and when to buy a new camera body, I decided to see if there have been new features added to alternative firmwares for my Canon EOS 400D. Boy, was I in for a surprise!

**400plus &#8211; Firmware Hack for the Canon EOS 400D**
  
[The 400plus project](http://code.google.com/p/400plus/) is currently implementing a lot of additional features for the EOS 400D and distributing builds of hacked firmware which can be applied to the camera through a file which is loaded during camera startup, meaning they are easily reversible by simply deleting the firmware from the CF card. Recently, some really killer features where implemented, which even make some hardware additions redundant. This is an incomplete list, representing the most important features for me:

  * **Intervalometer**: The 400D can be used to shoot at regular intervals by itself, without any additional controlling hardware. This is perhaps the coolest feature, and I&#8217;ve yet to put it to good use by creating a time-lapse movie.
  * **Intermediate ISO / Auto-ISO**: Found in newer cameras, the 400D now supports intermediate ISO steps (seamlessly between ISO 100 and ISO 3200) as well as providing a basic Auto-ISO function with upper and lower limit. The ISO can also be adjusted while looking through the viewfinder.
  * **Handwave support**: This is a mode where the camera takes a shot each time the proximity sensor above the display is triggered. Useful for macro shots where you don&#8217;t want to rock the camera rig.
  * **Timer**: The camera simply fires after a certain amount of seconds has elapsed. It can also start the interval program instead.
  * **Manual Kelvin**: Useful if you don&#8217;t want to shoot RAW to get spot-on white balance.
  * **Spot Metering**: Metering light at a very small spot in the center.
  * **AF patterns**: Found in more recent camera, AF patterns are a cool addition. External flash AF assist doesn&#8217;t work with it though.

For me, the Intervalometer/Timer/Handwave functions replace using an IR remote for self-portraits or macro shots. The Intervalometer replaces rather expensive external hardware triggers. The current version of the 400plus firmware seems very polished, providing simple menus and settings for its features, without any adverse side-effects. I expect more cool features to follow in the near future.

**Tethered shooting using the command line**
  
<img src="/weblog/gphoto2.png" alt="gphoto2" class="alignleft" />There are a number of solutions for tethered shooting with Canon DSLRs. Some of them even work on Linux. I wanted something simple to take and download shots from my 400D, so I used [gphoto2](http://www.gphoto.org/). gphoto2 provides a lot of other features which I won&#8217;t cover here, and [supports remote control for a wealth of cameras](http://www.gphoto.org/doc/remote/), so go check the compatibility of your own camera.

I wanted to use my EOS 400D as some sort of webcam, taking shots at intervals and directly transfering those shots to my PC. This is easy enough with gphoto:
  
`gphoto2 --port=usb:005,048 --capture-image-and-download -I 30 --force-overwrite --filename=webcam.jpg --capture-preview`This takes a photo every 30 seconds and writes it to webcam.jpg. The port can be inferred by hooking up your camera and having a look at the output of <tt>lsusb</tt>. One small problem I encountered with my 2.6.39 kernel: The 400D did not work with ehci_hcd, so I had to disable it. If its modular, you can simply do <tt>modprobe -r ehci_hcd</tt>, but if, like me, its builtin, you can disable it by following [this guide](http://www.absolutelytech.com/2010/04/18/solved-unable-to-enumerate-usb-device-disabling-ehci_hcd/).