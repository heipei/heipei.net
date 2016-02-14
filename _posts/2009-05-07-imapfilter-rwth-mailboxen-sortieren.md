---
id: 540
title: 'imapfilter: RWTH Mailboxen sortieren'
date: 2009-05-07T20:07:46+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=540
permalink: /2009/05/07/imapfilter-rwth-mailboxen-sortieren/
categories:
  - Allgemein
  - Geekstuff
  - Linux
  - Uni
---
Wie jeder RWTH-Student hab ich natürlich auch ein RWTH-Postfach. Und dazu noch eins als Mitarbeiter des RZ. Ist eigentlich eine ganz nette Sache, nur dass man die Dinger nirgends vorsortieren kann (aka procmail oder so) sondern nur mit sowas wie dem Thunderbird-Filter auf Anwenderseite. Heisst dann im Endeffekt auf bestimmt 5 Systemen die Regel anlegen wenn man sich eine neue ML abonniert.
  
[imapfilter](http://imapfilter.hellug.gr/) macht auch nichts anderes, nur dass man es bequem von einer Stelle (sprich: Server) aus alle 5 Minuten laufen lassen kann, und nur eine config hat. Dann sind die Mails auch richtig sortiert falls man mal den Webmail-Client benutzen muss. Die Konfiguration ist auch ziemlich easy, so sieht sie z.B. eine einfache Config aus:
  
`Wie jeder RWTH-Student hab ich natürlich auch ein RWTH-Postfach. Und dazu noch eins als Mitarbeiter des RZ. Ist eigentlich eine ganz nette Sache, nur dass man die Dinger nirgends vorsortieren kann (aka procmail oder so) sondern nur mit sowas wie dem Thunderbird-Filter auf Anwenderseite. Heisst dann im Endeffekt auf bestimmt 5 Systemen die Regel anlegen wenn man sich eine neue ML abonniert.
  
[imapfilter](http://imapfilter.hellug.gr/) macht auch nichts anderes, nur dass man es bequem von einer Stelle (sprich: Server) aus alle 5 Minuten laufen lassen kann, und nur eine config hat. Dann sind die Mails auch richtig sortiert falls man mal den Webmail-Client benutzen muss. Die Konfiguration ist auch ziemlich easy, so sieht sie z.B. eine einfache Config aus:
  
` Mit einer Regel die alle Mails aus der INBOX die im Betreff [mailingliste] haben in den Folder &#8220;mailingliste&#8221; auf dem gleichen Server verschiebt. Das Ganze geht natürlich auch mit mehreren Servern und sogar mit Mails kopieren/verschieben zwischen diesen Servern. Die verschiedenen Optionen um Mails zu matchen bzw. was man damit macht sieht man unter &#8220;man imapfilter&#8221;.