---
id: 421
title: 'Xcode: git describe in your Info.plist'
date: 2009-02-23T13:50:41+00:00
author: Jojo
layout: post
guid: http://hackvalue.de/heipei/?p=421
permalink: /2009/02/23/xcode-git-describe-in-your-infoplist/
categories:
  - Allgemein
  - Apple
  - Geekstuff
  - git
---
<img src="/weblog/xcode_git_describe.png" alt="Xcode git describe" class="alignleft" />Debugging programs for yourself (or from bug-reports from other people) requires knowing which version caused the bug. Of course most people think in terms of major releases, but a developer needs to know the exact revision, as this might make the crucial difference. UNIX command-line programs usually offer a &#8211;version switch, which returns detailed version and build-option information.

If you want to have something similar with Xcode you can use the &#8220;New Run Script Build Phase&#8221; to add a simple script to your build-process. In the case of GitX, the code looks like this (the original can be found at [xcode-git-build-scripts at GitHub](http://github.com/indirect/xcode-git-build-scripts/tree/master)):

<pre>#!/usr/bin/env ruby

version = `/usr/bin/env git describe`.chomp

info_file = File.join(ENV['BUILT_PRODUCTS_DIR'], ENV['INFOPLIST_PATH'])
info = File.open(info_file, "r").read

version_re = /([t ]+&lt;key&gt;CFBundleVersion&lt;/key&gt;n[t ]+&lt;string&gt;).*?(&lt;/string&gt;)/
info =~ version_re
bundle_version_string = $1 + version + $2

info.gsub!(version_re, bundle_version_string)
File.open(info_file, "w") { |file| file.write(info) }
puts "Set version string to '#{version}'"
</pre>

Needless to say that this script is not very error-resistant, but since ruby is included with OSX and people compiling GitX usually have git installed, it should work in most cases.
  
**Update**
  
I just discovered that the CFBundVersion is supposed to be a monotically increasing integer, separated only by periods. This is required by MacOS and things like Sparkle. The string &#8220;git describe&#8221; returns doesn&#8217;t match these criteria, obviously. So, if you encounter problems, you should fall back to using the format of x.y.z.<commits> where x.y.z is your major release number and <commits> is the number of commits since mentioned tag.