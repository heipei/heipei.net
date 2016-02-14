---
id: 104
title: SVN für das Studium
date: 2006-08-01T11:43:39+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2006/08/01/svn-fur-das-studium/
permalink: /2006/08/01/svn-fur-das-studium/
autometa:
  - subversion dateien geaendert repository runtergeladen
categories:
  - Allgemein
  - Geekstuff
  - Linux
  - Uni
---
Ok, hier liest zwar im Moment wohl eh keiner weil meine Leserschaft sich, wie ich denke, nur aus einer Handvoll Leute zusammensetzt die mich in RSS-Reader drinhaben, aber sobald meine Domain wieder da ist sollten die Einträge ja auch darein rieseln.

Fangen wir mit [SVN (Subversion)](http://subversion.tigris.org/) an. Subversion ist ein Version-Control-System. Also ein System was dazu gut ist verschiedene Versionen von Dateien zu verwalten und es zu ermoeglichen mit mehreren Leuten moeglichst schnell und einfach zusammenzuarbeiten. Das ganze muss man sich also vorstellen wie ein Wiki, man macht was, es wird was geaendert, man sieht aber noch die alten Versionen alle und kann zu jedem Zeitpunkt dahin zurueckkehren (wenn man z.B. merkt dass die Aenderungen totaler Mist waren). Ich werd einfach mal beschreiben wie Flo und ich das fuers Studium einsetzen.

Zuerst erstellt man ein Repository, also quasi ein Projekt unter dem man arbeiten will. Bei uns heisst das &#8220;studium&#8221;. Dieses Repository liegt dann auf einem Server und kann auf unterschiedlichste Arten angesteuert werden. Entweder per http/https, per eigenem svn protokoll oder einfach per file wenn das Ding auf dem eigenen Rechner liegt. Man faengt damit an indem man einen &#8220;checkout&#8221; von dem Repository macht. Dabei werden alle Dateien vom Server runtergeladen und auf dem lokalen Rechner angelegt. Man hat also jetzt quasi die aktuelle Kopie an der gearbeitet wird. Wenn man jetzt Schreibzugriff hat kann man lokal dateien editieren und diese dann &#8220;committen&#8221;, also hochladen. Diese werden vom SVN-Server als neue Revision (Version) erkannt. Wenn jetzt jemand anders bei sich ein &#8220;update&#8221; macht werden alle Dateien die sich seit dem letzten Update geaendert haben runtergeladen. Somit haben alle Teilnehmer immer die aktuelle Version um damit zu arbeiten, und das moeglichst komfortabel.

Warum das ganze fuers Studium verwenden? Nunja, es gibt einen Haufen Vorlesungen, und zu jeder Vorlesung wollen Skripte, Uebungen, Beispiele, andere Internet-Fundsachen runtergeladen werden. Zusaetzlich muessen noch Uebungsblaetter bearbeitet und die Abgaben geTeXt werden. Dadurch dass Flo und ich ein Repository haben muss alles nur einmal geladen werden, was also quasi schonmal eine Halbierung des Arbeitsaufwands ist. Wenn man gemeinsam an Code arbeitet ist das auch sehr praktisch. Ich lade mir Quelldateien vom Server, spiel sie kaputt, merke das, mache ein &#8220;revert&#8221; und die Datei ist im Originalzustand. Oder ich schreibe ein Programm, Flo guckt es sich an, veraendert/optimiert 2-3 Sachen dadran, laedt das ganze wieder hoch und ich kann beim naechsten Update genau sehen was er geaendert hat (und wann) und es werden auch nur die Sachen uebertragen die geandert wurden. Wenn es mal passieren sollte dass zwei Leute gleichzeitig an einer Datei was machen und dann beim hochladen merken dass die Datei mit der man lokal gearbeitet hat grade eben von jemand anders veraendert wurde so laesst sich das in den meisten Faellen interaktiv mergen.
  
Ich hoffe ich habe das jetzt gut genug erklaert dass es auch Leute verstehen die sich sonst mit sowas nicht auseinander setzen. Subversion macht besonders viel Sinn wenn man Dateien hat die sich oft veraendern (Quelltext an dem viel rumgeschraubt wird), aber auch fuer einfache PDFs die nur einmal eingecheckt werden hats in unserm Fall Sinn gemacht. Wer mehr wissen woll sollte sich auf jeden Fall das [SVN-Book](http://svnbook.red-bean.com/) angucken, und nicht abschrecken lassen, das ganze ist furchtbar einfach zu benutzen und einzurichten.<!--more-->

Kleines Schlusswort: Unser Repository ist nach dem SS06 client-seitig nun etwa 333mb gross, und dadrin sind so ziemlich alle Folien und Skripte zu den Faechern DaStru, RS, Diskrete und ATFS. Dazu noch ein paar andere Sachen die nebenbei anfallen, wie etwa die Algorithmen der Woche, oder allgemein Dinge/PDFs aus Wikipedia oder dem restlichen Internet. Waehrend des ganzen Semester gab es kein einziges mal &#8220;hast du schon das oder das geladen&#8221; oder &#8220;zeig mal bitte die allerneuste Version von deiner Implementation, ich glaub ich hab nicht die aktuelle&#8221; sondern nur ein regelmaessige &#8220;svn up&#8221; ;) Der Subfolder fuer das WS06 steht auch schon.