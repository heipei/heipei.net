---
id: 131
title: SVN Hooks und Jabber Notification
date: 2007-01-16T19:09:50+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2007/01/16/svn-hooks-und-jabber-notification/
permalink: /2007/01/16/svn-hooks-und-jabber-notification/
categories:
  - Allgemein
  - Geekstuff
  - Linux
  - Uni
---
Da ich svn für alle meine Studien-Unterlagen (Skript, Übungsblätter, Lösungen und halt auch alles geTeXetes) benutze (und fw mit mir das gleiche Repository benutzt) kommen da regelmässig commits rein die halt nicht nur von mir sind. Was man manchmal will ist etwas was einen drauf hinweist dass etwas committed wurde, da man eh nicht jedes mal svn up macht wenn man in das Arbeitsverzeichniss wechselt. Und so werden z.B. conflicts vermieden, bzw fängt man gar nicht erst an Sachen runterzuladen nur um 5 Minuten später feststellen zu müssen dass die schon drin sind.
  
Wie man das am besten macht ist mit [svn hooks](http://svnbook.red-bean.com/en/1.1/ch05s02.html), also hooks die Sachen z.B. nach dem commiten ausführen. Dazu muss man im Repository in den Ordner hooks navigieren, und dort eine der Templates bearbeiten, und danach ohne die .tmpl-Endung speichern. Sieht bei mir so aus:
  
`/var/lib/svn/studium/hooks/jabber_notification.rb "$REPOS" "$REV" heipei@jabber.ccc.de fw@jabber.ccc.de`
  
Dann geht man auf [diese Seite](http://trac.c3d2.de/subversion-hooks/browser) (danke Sven) und lädt sich das Ruby-Script für jabber-notification runter. Ruby ist so einfach zu lesen dass man nach 2 Minuten alles so angepasst haben sollte wie man will. Funktioniert echt super. Das ganze geht natürlich auch mit so Sachen wie E-Mail Notification, was für meinen Zweck aber nicht angebracht ist. Jabber-Accounts gibt übrigens überall, auf jabber.ccc.de, auf jabber.rwth-aachen.de oder z.B. bei Google Talk.