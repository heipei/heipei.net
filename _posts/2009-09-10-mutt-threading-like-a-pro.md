---
id: 674
title: 'mutt: threading like a pro'
date: 2009-09-10T22:29:57+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=674
permalink: /2009/09/10/mutt-threading-like-a-pro/
categories:
  - Geekstuff
  - Gentoo
  - Linux
---
<img data-echo="/weblog/mutt_threads.png" alt="mutt" class="alignleft" style="border: 1px solid black; padding: 1px;" />I&#8217;m sure I could come up with 5 of these every day if I read the whole user-manual religilously and followed dozens of blogs, but I don&#8217;t, so here goes:
  
mutt supports threading (duh!) through

<pre>set sort="threads"
set strict_threads="yes"</pre>

But you want threads which have new mails appear at the top/bottom (whichever way you work):

<pre>set sort_browser="reverse-date"
set sort_aux="last-date-received"</pre>

Voila! Additionally it doesn&#8217;t hurt to unset

<pre>unset collapse_unread</pre>

The default-keybinding for threads isn&#8217;t the best, so it&#8217;s best to rebind it to something unused but easy:

<pre>bind index - collapse-thread
bind index _ collapse-all</pre>

Don&#8217;t wonder about the absence of &#8220;uncollapse&#8221;, in mutt there is only toggle (like it or not).
  
One of the most useful features when communicating with people who don&#8217;t give a crap about mail is the split and link-feature for threads: Use the key _&#8216;#&#8217;_ to break apart a thread, or tag some mails (using _&#8216;t&#8217;_ for example) and the use the ampersand _&#8216;&&#8217;_ to link them to another mail (because some people see the &#8220;Reply&#8221; button as a cheap way to get an address into the To-field).
  
<img data-echo="/weblog/mutt_delete_attachment.png" alt="mutt" class="aligncenter" style="border: 1px solid black; padding: 1px;" />Another feature of mutt (that&#8217;s worth using it over TB alone) is the quickness and ease with which it deletes attachments from mails without breaking the threading or anything else. Just press _&#8216;v&#8217;_ on mail, select the attachment, mark it deleted with _&#8216;d&#8217;_, go back to your mailbox and hit _&#8216;$&#8217;_ to write the changes to the mailbox. This will keep your mailbackups lean.
