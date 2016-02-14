---
id: 74
title: 'Prolog (oder: ist doch logisch)'
date: 2006-02-12T23:28:24+00:00
author: Jojo
layout: post
guid: http://heipei.net/2006/02/12/prolog-oder-ist-doch-logisch/
permalink: /2006/02/12/prolog-oder-ist-doch-logisch/
autometa:
  - 
categories:
  - Aachen
  - Allgemein
  - Geekstuff
  - Uni
---
Jaja, ich mach gleich weiter, dachte nur mal kurz ich könnte die Freude weiterverteilen.

<pre>{trace}
| ?- f(D,g(A,B)) = f(g(B,C),g(u(v(t),B),h(v(C)))).
1 1 Call: f(_16,g(_17,_18))=f(g(_18,_25),g(u(v(t),_18),
         h(v(_25)))) ? 
1 1 Exit: f(g(h(v(_25)),_25),g(u(v(t),h(v(_25))),h(v(_25))))=
         f(g(h(v(_25)),_25),g(u(v(t),h(v(_25))),h(v(_25)))) ? 

A = u(v(t),h(v(C)))
B = h(v(C))
D = g(h(v(C)),C)

yes
</pre>

Alles klar? Prima!