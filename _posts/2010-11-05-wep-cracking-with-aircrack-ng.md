---
id: 865
title: WEP cracking with aircrack-ng
date: 2010-11-05T01:21:06+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=865
permalink: /2010/11/05/wep-cracking-with-aircrack-ng/
categories:
  - Geekstuff
  - Gentoo
  - Linux
  - Unterwegs
---
<img src="https://heipei.net/weblog/aircrack.jpg" alt="Aircrack" class="alignleft" />Up until recently I thought of quickly cracking a WEP-enabled wireless as complicated. I was under the impression that not only special wireless NICs were needed to perform the necessary attack, but furthermore some time, a lot of luck and extensive knowledge of the necessary tools were absolutely necessary. I had seen videos of someone using Kismac to discover a WEP-key in about 10 minutes, but since my Airport Extreme does not support packet injection and I didn&#8217;t follow up on it, I quickly forgot about it.

For some reason I delved into the topic again about a month ago. I realized that my tiny and cheap Acer Aspire One 110L, with its Atheros NIC (AR242x, 802.11abg) does in fact possess the ability to inject packets. Out of curiosity I had to try it for myself. This is not meant as a tutorial for cracking WEP (there is [a comprehensive guide](http://www.aircrack-ng.org/doku.php?id=simple_wep_crack) for aircrack), but rather as an encouragement to try it yourself, or at least to think very hard if you&#8217;re still using WEP.

The most shocking thing I discovered was that the number of necessary packets to crack WEP had dramatically decreased with new attack methods. The aircrack-team talks about 20k / 40k packets (with the new PTW attack, origin and paper [here](http://www.cdc.informatik.tu-darmstadt.de/aircrack-ptw/)) for cracking 64bit/128bit WEP, which is well below the 1000k packets I read about in the past. At a rate of 500 packets/s this amounts to less than 5 minutes of time needed. This is still a lot if you have to depend on legitimate network traffic and don&#8217;t have a few days of time. To speed things up, packet re-injection is the way to go today. It works like this: You wait and try to record an ARP-request (which should be no problem if someone is on the network), and then replay this request back to the network, meaning you simply re-inject the same packet you captured. For every ARP-request, the AP/router should respond with an ARP-reply, which in turn is a new data packet and the kind of packet you want to capture in order to get to 20k/40k unique IVs (initialization vectors). Now imagine doing this re-injection at a rate of 500 packets/s and you get the point.

A few caveats:

  * If nobody&#8217;s on the network you won&#8217;t be able to capture an ARP-request. Tough luck ;)
  * If someone is on the network but you missed their initial ARP you can try disassociating them
  * I wasn&#8217;t able to do fake auth with the AP, which is why I had to replay the ARPs as long as the original client was still associated
  * If you wan&#8217;t to make extra sure you capture all the interesting replies you can keep Kismac running along airodump-ng
  * I suppose this is illegal in Germany. Oh well, I did it while on vacation ;)

The nice thing about this attack:

  * Really fast (think &#8216;car&#8217; and &#8216;battery slowly discharging&#8217;)
  * Not much storage needed to capture packets
  * Cracking efficiently possible, even on a laptop
  * If used for malicious purposes, the kind of people still using WEP will be the last to notice a few thousands extra 802.11 packets over a 5-minute span