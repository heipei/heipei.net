---
id: 161
title: OpenOffice / git tips
date: 2008-03-06T18:36:02+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/2008/03/06/openoffice-git-tips/
permalink: /2008/03/06/openoffice-git-tips/
categories:
  - Allgemein
  - Geekstuff
  - Gentoo
  - git
  - Linux
tags:
  - git linux
---
If nothing else I can at least give you the occasional tips about things I stumbled over.

## OpenOffice/sqlite3 or: Spreadsheet -> SQLite3

Ok, someone gave you a spreadsheet (i.e.: XLS or ODS-file). That certain someone managed to sneak a lot of whitespaces into the cells which are not needed. Of course this table has been in use for some years and no-one paid attention because OpenOffice doesn&#8217;t really care about the spaces and you can only see them when selecting the text of the cell. The trouble starts if some random nerd (me) wants to export the table as a CSV (Comma-separated-values). The first thing that comes to mind is &#8220;if only I had regular expressions I would be done in two minutes&#8221;. Believe it or, OpenOffice supports POSIX-compatible regexes (not as pretty as Perl regexps, but it will do).

  * Select the offending cells
  * Use Edit->Search&Replace
  * Make it display more options and activate &#8220;Regular Expression&#8221;
  * Put in [:space:]+\> and hit &#8220;Replace all&#8221;
  * Search for &#8220;Regular Expression&#8221; in the OOffice help and be happy

Then you can save your spreadsheet as csv (pay attention to the separator depending on your cell cotents). The cool thing is that sqlite3 can import csv-files (guess MySQL can do the same, haven&#8217;t yet looked into it though). You just have to create a table that matches your csv (meaning the number of columns and the type). After that use **.separator** and **.import**.

## Git: Creating and deleting remote branches

This isn&#8217;t really a &#8220;tip&#8221; or something cool I found, I just haven&#8217;t used it before. If you have a remote repository that you push to then **git push $remote $localbranch** will create that branch in the remote repository if it doesn&#8217;t exist yet (otherwise it does an update). Now, if you want to delete that branch again just do **git push $remote :$remotebranch**

## Conclusion:

Now that I mentioned OOffice and git I won&#8217;t forget to mention how to diff OOffice-files in git somewhat better: [GitWiki](http://git.or.cz/gitwiki/GitTips#head-1cdd4ab777e74f12d1ffa7f0a793e46dd06e5945)