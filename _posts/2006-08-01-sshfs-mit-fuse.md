---
id: 105
title: sshfs mit fuse
date: 2006-08-01T11:58:28+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2006/08/01/sshfs-mit-fuse/
permalink: /2006/08/01/sshfs-mit-fuse/
autometa:
  - fuse filesystem userspace sshfs filesystems dateien verzeichniss remote
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - Linux
---
Eine kleine Sache auf die ich hinweisen moechte. Ich hatte schon laenger von [FUSE (Filesystem in Userspace)](http://fuse.sourceforge.net/) gehoert aber dem nie besonders Beachtung geschenkt. Neulich hab ich mich dann mal dazu durchgerungen, FUSE als Kernelmodul gebaut und sshfs-fuse auf meiner Gentoo Kiste installiert. Was ist das Ganze jetzt?

1. FUSE ist wie der Name sagt etwas was Filesystems im Userspace laufen laesst. Es gibt inzwischen [eine riesige Sammlung an lustigen Dingen](http://fuse.sourceforge.net/wiki/index.php/FileSystems) die man wie ein lokales Filesystem mounten kann und dann damit arbeiten. Z.B. flickr, webdav, gmail und halt auch ssh.
  
2. Vorteile davon: Dazu komme ich jetzt.

Ich logge mich haeufig auf anderen Hosts ein (wie etwa hackvalue, classic-addicition oder auch den wohnheimsinternen Rechnern). Und es kommt auch ab und zu mal vor dass ich Dateien per scp auf diese Rechner kopiere (z.B. in das /weblog oder /tmp Verzeichniss meiner Webseite). Oder dass ich an einem Programm arbeite das serverseitig laeuft, wie z.B. ein PHP-Skript oder ein rails-programm. Natuerlich funktioniert scp gut, besonders dank remote completion der zsh, aber es bleibt unintuitiv. Und wer files ueber ssh editiert kennt die Probleme: Manchmal einfach lags, oder Verbindungen die unterbrochen werden.

<img src="/weblog/sshfs.png" alt="sshfs" class="alignleft" />

Also mountet man das ganze einfach mit sshfs: **sshfs jojo@hostname.de:/home/www/webseiten/ mountpoint** als Beispiel. Hinter dem **:** wird angegeben welches Verzeichniss als root-verzeichniss fuer die operationen gelten soll (default: ~). Jetzt kann man ganz einfach wie sonst auch mit allen lokalen Programmen auf dem gemounteten Verzeichniss arbeiten. Der grosse Vorteil fuer mich ist dabei dass ich meine lokale shell und meine .vimrc und lauter andere Programme die ich vielleicht zum editieren brauche weiter benutzen kann ohne erst vorher alles remote installieren und die config-dateien rueberkopieren zu muessen. Und laggen tut es wenn dann beim oeffnen und beim schreiben von dateien, dazwischen arbeitet man ja lokal. Mit der richtigen anbindung (wie ich sie momentan zum glueck habe) kann man sogar mit sowas wie gqview die bilder auf einem server ziemlich flott angucken.

Wenn man fertig ist einfach wieder: **fusermount -u mountpoint** und die Verbindung wird wieder getrennt. Kinderleicht und seeehr praktisch.
