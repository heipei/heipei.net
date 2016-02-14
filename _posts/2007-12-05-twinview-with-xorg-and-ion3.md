---
id: 157
title: TwinView with Xorg and ion3
date: 2007-12-05T22:23:15+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2007/12/05/twinview-with-xorg-and-ion3/
permalink: /2007/12/05/twinview-with-xorg-and-ion3/
categories:
  - Geekstuff
  - Gentoo
  - Linux
---
Ok, I was expecting a problem when I recently hooked up a second display to my machine. I knew that ion3 had dropped xinerama-support, and that without xinerama you&#8217;d get two seperate X-displays which could even run different window-managers but not allow for moving windows in-between. What I had totally forgotten (haven&#8217;t used two displays for a long time) was that there is TwinView. With TwinView the X-Server just sees one big screen (in my case 3200&#215;1200) and so there are almost no problems. But wait, you might say, what about windows which stretch across the screen, doesn&#8217;t that look stupid. Sure, but I totally forgot that with ion3 you can just tile your workspace vertically and it is tiled exactly in the middle. Problem solved! Ok, if you hit &#8216;f&#8217; in mplayer it maximizes to both screens (which in most cases is unwanted), but if you have one workspace which just has a &#8220;fullscreen&#8221; frame on one display you can just attach programs like mplayer to those windows. In case you&#8217;re wondering, here is how your xorg.conf should look:
  
`Section "Device"<br />
        Identifier     "geforce"<br />
        Driver         "nvidia"<br />
        Option          "DPMS"<br />
        Option          "NoLogo"<br />
        Option          "TwinView"<br />
        Option          "ConnectedMonitor"      "DFP,DFP"<br />
        Option          "MetaModes"             "1600x1200,1600x1200"<br />
        Option          "TwinViewOrientation"   "RightOf"<br />
EndSection`
  
Your mileage may vary. By the way: nobody really needs this much screen space ;)