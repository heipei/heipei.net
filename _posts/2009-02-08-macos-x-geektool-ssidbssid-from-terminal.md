---
id: 414
title: 'MacOS X: GeekTool &#038; SSID/BSSID from Terminal'
date: 2009-02-08T13:54:52+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=414
permalink: /2009/02/08/macos-x-geektool-ssidbssid-from-terminal/
categories:
  - Apple
  - Geekstuff
---
Working on my laptop a little bit more since I bought myself a new one I began the never-ending quest of doing things in MacOS via command-line that you&#8217;d have to do by GUI otherwise. But let me start by introducing [GeekTool, a funny little PrefPane](http://projects.tynsoe.org/en/geektool/) to display the output of commands on your desktop. Mine looks like this right now:
  
[<img data-echo="https://farm4.static.flickr.com/3497/3260073285_9a51ddff9a.jpg" width="500" height="313" alt="GeekTool" class="aligncenter" />](https://secure.flickr.com/photos/heipei/3260073285/ "GeekTool by heipei, on Flickr")Most of the information there is redundant or meaningless. But two things I do care about: The SSID and BSSID (MAC-address) of the access-point I&#8217;m currently connected with. To get that info via the GUI you can Alt-Click the Airport-logo in the menubar, but you can also query it via commandline:
  
SSID: `/usr/sbin/system_profiler SPAirPortDataType|grep "Current Wireless Network"`BSSID: `/System/Library/PrivateFrameworks/Apple80211. framework/Versions/A/Resources/airport -I|grep BSSID`
  
In case you&#8217;re wondering: I have a wireless network at home with two APs, and sometimes I want to know which one I&#8217;m connected to, to see which one is causing trouble and to generally watch how the two signals propagate through the building.
  
**Update**
  
Hey, even better than just bitching about being on the &#8220;wrong&#8221; AP is manually changing to a different BSSID:
  
`./airport -z<br />
./airport --associate="heipei" --bssid="00:00:00:00:00:00" --password="supersecret"`
