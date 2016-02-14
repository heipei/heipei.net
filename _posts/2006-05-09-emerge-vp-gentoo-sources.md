---
id: 91
title: emerge -vp gentoo-sources
date: 2006-05-09T23:24:18+00:00
author: Jojo
layout: post
guid: http://heipei.net/2006/05/09/emerge-vp-gentoo-sources/
permalink: /2006/05/09/emerge-vp-gentoo-sources/
autometa:
  - gentoo
categories:
  - Allgemein
  - Geekstuff
  - Linux
---
Ok ok, Thomas hat sich in den Kommentaren zum letzten Post schon beschwert. Also, here we go. Mein Rechner ist (nochmal danke an meine Eltern ;) seit letzter Woche Freitag hier. Ich hatte in der Zwischenzeit noch ein negatives Review ueber den Dell Dimension gelesen und schon Angst gekriegt, aber ich muss sagen dass das mehr als unberechtigt war. Der Rechner ist in jeder Hinsicht wirklich super (Rechner != Windows Media Center Edition die da drauf ist). Bisher hab ich wohl schon einen Hyperthreading P4, aber ein wirklicher Dual-Core, also SMP fast genau so wie man es meint, ist noch was ganz anderes. Jedenfalls hat ich am Wochenende nicht so unendlich viel Zeit da wir hier HBV-Wochenende (HBV=Hausbauverein, also Haus wieder reparieren) hatten und ich mich in die Garten/Draussen-Schichten eingeteilt hatte. Das war natuerlich super da ich kurz danach feststellen musste dass der Schnupfen die letzten 2 Sommer kein Zufall sondern viel eher ein ausgewachsener Heuschnupfen war. Jedenfalls reib ich mir jetzt fleissig die Augen.

**Installations-Orgien**

Ok, das erste was ich gemacht hab war natuerlich das vorinstallierte Windows Media Center Edition zu booten und Doom3 aus Benchmark-Gruenden zu installieren. Wow! Die Grafik-Karte ist gar nicht mal besser als meine zuhause, aber ich denke der RAM, die CPU und der PCIE Slot machen den Unterschied. Aber ok. Partition Magic, 20gb bleiben fuer Windows, der Rest ist 50mb /boot, 512mb swap und halt /. Gentoo bzw Linux im allgemeinen zu installieren wird heutzutage tatsaechlich von Tag zu Tag trivialier, allerdings ist das schon was anderes wenn man (wie ich) ein BIOS-Raid oder auch Fake-Raid besitzt und das auch nicht ausschalten kann. Hat mich jeden falls etwas Zeit gekostet bis ich Grub soweit hatte 1. zu funktionieren 2. meinen Kernel zu booten. Danach war es eigentlich relativ straight-forward. An dieser Stelle muss ich nochmal betonen wie schoen es ist einen Gentoo-Mirror im Uni-Netz zu haben auf den man mit bis zu 1.5Mb/s zugreifen kann :P.

**Gentoo**

Was ein Gefuehl. Das letzte Gentoo was ich hatte war auf auf dem Laptop den jetzt meine Eltern benutzen. Ich musste mich erstmal wieder in emerge einarbeiten und mich dran gewoehnen dass sowas wie Xorg halt doch laenger zum installieren dauert als nur die Zeit die es zum downloaden braucht. Macht aber nix, dafuer gibt es sowas nettes wie USE-flags.

Der momentane Stand ist dass fast alles laeuft. Meine Geforce 7300 LE hab ich mit den nvidia-Treibern ohne Probleme ans Laufen gekriegt, Xorg nach ein bisschen copy-paste der config auch und alsa war ebenso leicht. Der Treiber fuer meine Onboard Intel Gbit Karte (e1000) ist anscheinend inzwischen soweit dass er out-of-the-box funktioniert und ich mir nichts mehr von Intel.com downloaden muss. USB und alles dadran haengt klappt auch soweit, solange man nicht wie ich vergisst in einem der in den letzten Tagen zahlreichen Kernel-Builds USB-HID zu deaktivieren.

Im Moment gibt es nur noch ein paar wenige Sachen die wirklich dringend gemacht werden muessen. Da ist auf der einen Seite mein Laserdrucker (HP Laserjet 3120) und dann ist da noch dieses huebsche Geraet was 13 verschiedene Kartenformate lesen kann. Das werde ich als erstes in Angriff nehmen damit ich den WRAP mit einer neuen Version von Voyage Linux starten kann.<!--more-->

**Techie Stuff**

Ok, ihr wollt also wirklich wissen was genau momentan laeuft:

  * Gentoo AMD64 (64Bit) Stable
  * Xorg
  * Fluxbox (man sagte mir mit so einer Kiste wuerde auch KDE fluessig laufen, aber ich mag Fluxbox einfach, und ich moechte keine Resourcen verschwenden)
  * Das Uebliche: Firefox-bin (32Bit mit Flash-Plugin, yeah), Thunderbird-Bin, Mplayer-Bin (beides 32Bit, aus den gleichen Gruenden), XMMS, VLC usw.

Mehr gibts spaeter, wie ihr seht bin ich noch mitten drin das System aufzubauen.