---
id: 69
title: Postfix-Mysql and Forward Addresses
date: 2006-01-18T16:56:26+00:00
author: Jojo
layout: post
guid: http://heipei.net/2006/01/18/postfix-mysql-and-forward-addresses/
permalink: /2006/01/18/postfix-mysql-and-forward-addresses/
autometa:
  - 
categories:
  - Allgemein
  - Geekstuff
  - Linux
---
<img src="/weblog/postfix-mysql.png" alt="Postfix-Mysql" class="alignleft" />I have a problem. Im running a Postfix with lots of forwarded addresses in the aliases file. Recently we decided to move all the entries from the very unhandy static file (which you have to rebuild after every change) to a MySQL-Database. The reason is obvious: Its easier to manage, and one day you can take that Ruby on Rails book thats been rotting in the shelf and write a cool webinterface to manage those forwards.
  
Everything went well so far (even learned some sed/awk in the process), but i still have a problem. In the original aliases we had groups you could mail to. This means mail\_to\_file. The record looked a little like this:

<pre>foo:  :include:/path/to/file-with-mail-addresses</pre>

So every time a mail was sent to foo@ it was automatically mailed to all the recipients defined in the remote file (Postfix did all of this, so we didnt have to use some mailing-list software). Now, i&#8217;d like to know how to include these in a mysql database. I \_can\_ create a mysql record which points to the file, no problem, but then we would have all our forwards in the database and the groups in files flying around. And nobody wants that.
  
So my question: How would you do it? Is there a solution to maybe reference another mysql table which stores the mail-addresses for the group? Help is appreciated ;)
