---
id: 18
title: Space and Naval Warfare Systems Command
date: 2005-10-06T17:07:19+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=18
permalink: /2005/10/06/space-and-naval-warfare-systems-command/
categories:
  - Langeweile
---
Thema: Warum (Apache) Logfiles spannend sind und warum man DNS Lookups aktivieren sollte.
  
Mir war also mal wieder ein wenig langweilig. Nein, eigentlich gar nicht mal so, hatte mir bloss grade wieder ein kleines Programm eingerichtet was meine Apache logs analysiert (Awstats). Und dann hab ichs natuerlich direkt mal laufen lassen um zu gucken. Es ist nicht so dass mich was besonders überrascht hätte, das Ding läuft schon ewig, bloss bisher ohne dabei DNS Lookups zu machen (und der Apache halt auch nicht). Das Gute an der Sache ist dass man so ungefähr sehen kann aus welchen Ländern bzw bei welchen Providern die Besucher der Seite sind. Oder man lernt sogar mal eine ganz neue tld kennen. Was hatten wir da also, .de, ganz klar, .net, auch klar, brazil, ok, und, oh, .mil. Also mal schnell die logs gegrept, und siehe da: In den 10 Minuten in denen das DNS Lookup aktiviert war hatte schon jemand auf mich zugegriffen dessen IP reverse auf einen navy.mil hostnamen gelegt wurde. Das sah dann so aus:<!--more-->


  
`ardentg4.spawar.navy.mil - - [06/Oct/2005:15:55:13 +0200] "GET /weblog/hackvalue-banner2.jpg HTTP/1.1" 200 12098 "http://hackvalue.de/" "Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/412.7 (KHTML, like Gecko) Safari/412.5"`
  
Ok, da hatte also jemand versucht auf hackvalue.de zugegriffen und da ein paar der Dateien auf heipei.net liegen wurde das hier geloggt. Also rueber zu den anderen logs. Das einzige was mich an der Stelle direkt beruhigte war dass der Mensch allem Anschein nach Safari auf Mac OS X benutzt, die Navy hat also auch Macintosh im Einsatz, und leute die so ein schönes Betriebssystem benutzen würden mich nicht direkt in einer Seitengasse umlegen lassen.
  
`ardentg4.spawar.navy.mil - - [06/Oct/2005:15:55:12 +0200] "GET / HTTP/1.1" 200 15894 "http://images.google.com/imgres?imgurl=https://heipei.net/weblog/googleearth-nsa.jpg&imgrefurl=http://hackvalue.de/&h=857&w=996&sz=161&tbnid=kJmkwfHOxIUJ:&tbnh=128&tbnw=<br />149&hl=en&start=44&prev=/images%3Fq%3DNSA%26start%3D40%26svnum%3D30%26hl%3Den%26lr%3D%26client%3Dsafari%26rls%3Den%26sa%3DN" "Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/412.7 (KHTML, like Gecko) Safari/412.5"`
  
Aha, schon viel aufschlussreicher, da war wohl jemand über Googles Bildersuche auf meine Seite gestossen, und offenbar hatte er nach &#8220;NSA&#8221; gesucht. Da ich kürzlich einen [Artikel über Google Earth und US Regierungseinrichtungen](http://hackvalue.de/2005/07/04/44/) geschrieben hatte war das kein Wunder, bloss wunderte mich dass ich mein eigenes Bild nirgends auf Google Images gefunden hab. Schnell auf <http://enterprise.spawar.navy.mil/> gesurft und ich wusste auch was das fuer Jungs sind. Nun ja, ich weiss ja nicht was die Leute da beim Space and Naval Warfare Systems Command (oder auch &#8220;Spawar&#8221;, rofl, da muessen die doch selber drueber lachen) den lieben langen Tag so machen, aber auf einem Misstrauenstrip nach &#8220;NSA&#8221; bei Google suchen hoert sich merkwuerdig an. Vielleicht hatte auch bloss jemand vergessen wie der grosse Schwarze Kasten aussah.
  
Jetzt weiss ich natuerlich nicht wie spannend ihr das findet (wenn ihr bis hierhin gelesen habt anscheinend sehr spannend) oder was mir das sagen soll, vielleicht hab ich inzwischen einfach schon zuviel Tom Clancy gelesen oder beim Spawar arbeiten auch ganz normale Menschen die (genau wie ich) zuviel Clancy lesen und dann nach &#8220;NSA&#8221; oder anderen Dingen suchen. Wie auch immer, in diesem Artikel sind schon wieder soviele neue Buzzwords eingebaut dass vielleicht noch ein paar andere Schlapphüte diese Seite in ihren Wortfiltern bemerken, lol. Ich denke bloss dass die Jungs aus McLean z.B. wissen dass man für sowas besser nicht den Namen seines Arbeitsgebers als reverse-dns hostname benutzt ;)