---
id: 28
title: Passive Mode mit Airport Extreme
date: 2005-10-22T19:29:15+00:00
author: Jojo
layout: post
guid: http://heipei.net/2005/10/22/passive-mode-mit-airport-extreme/
permalink: /2005/10/22/passive-mode-mit-airport-extreme/
categories:
  - Geekstuff
  - Langeweile
---
Ich war schon ewig nicht mehr Wardriven. Liegt zum einen dadran dass ich jetzt als Laptop ein Powerbook mit Mac OS X drauf hab, zum andern hab ich irgendwann den Spass dran verloren. Heute als ich mal wieder ein wenig rumgebraust bin ist mir [dieser Thread](http://freaky.staticusers.net/ugboard/viewtopic.php?p=102970) aufgefallen. Dort wird behauptet das neueste KisMAC könnte Passive Mode Treiber für die Airport Extreme Karte laden um mit diesen zu scannen. Wow! Hätte nicht gedacht dass das nochmal passiert. Das neueste KisMAC gibt es unter [diesem Link](http://ftp.tu-ilmenau.de/pub/software/binaervarianz/KisMACR75.zip) und es funktioniert wirklich!
  
Parallel dazu hab ich (eigentlich hab ich danach gesucht und das erste mehr oder weniger zufällig gefunden) [ein Projekt entdeckt](http://linux-bcom4301.sourceforge.net/) was dabei ist/fast fertig ist die Binary-Only Treiber des im WRT54G verbauten Broadcom Wlan Chips zu Reverse Engineeren, welcher auch in der Airport Extreme verbaut ist. Da die fehlenden Treiber für die Wlan-Karte bisher für mich (und bestimmt genug andere) der einzige Grund waren kein Linux auf ihrem Powerbook/iBook zu installieren ist das ein Projekt das mit Spannung verfolgt wird. Um juristischen Problemen aus dem Weg zu gehen arbeiten die Leute dort nach dem [Clean-Room Prinzip](http://en.wikipedia.org/wiki/Clean_room_design), was soviel bedeutet wie dass eine Gruppe die Maschinenbefehle in C-Code zurückübersetzt, daraus eine komplette Dokumentation schreibt, und eine zweite Gruppe die den C-Code nie zu Gesicht bekommen hat mit Hilfe der Doku einen neuen Treiber für Linux schreibt. Geschickt ;)