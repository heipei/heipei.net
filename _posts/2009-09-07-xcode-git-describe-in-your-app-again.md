---
id: 654
title: 'Xcode: &#8220;git describe&#8221; in your app &#8211; again'
date: 2009-09-07T12:21:25+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=654
permalink: /2009/09/07/xcode-git-describe-in-your-app-again/
categories:
  - Apple
  - Geekstuff
  - git
---
<img data-echo="/weblog/gitx-about.png" alt="GitX" class="alignleft" />A while back [I wrote about having the output of &#8220;git describe&#8221; as your version-string](https://heipei.net/2009/02/23/xcode-git-describe-in-your-infoplist/) in your Mac-OS app, only to discover that this doesn&#8217;t work that well since the string in the Info.plist is supposed to be an constantly increasing number of the form x.y.z.zzzz, which doesn&#8217;t really work with the SHAs git gives you. But since I really wanted that feature I kept searching and found a solution which seems to work pretty well and doesn&#8217;t interfere with the version-string.

**Introducing a new key to Info.plist**
  
First of you&#8217;ll need an additional key in your Info.plist where your custom version-string will be stored. I used &#8220;CFBundleGitVersion&#8221; and set its content to &#8220;GIT_VERSION&#8221;. You can simply do that in XCode.

**The build-script**
  
You&#8217;ll still need a build-script, [like I described before](https://heipei.net/2009/02/23/xcode-git-describe-in-your-infoplist/). A really simple one would be:
  
`VERSION=$(cd $PROJECT_DIR; git describe)<br />
echo -n "#define GIT_VERSION $VERSION" > $PROJECT_TEMP_DIR/revision<br />
touch Info.plist`If that doesn&#8217;t work you might need to include some PATH exports above, but I wanted to keep this example to the relevant parts.

**Info.plist preprocessing**
  
Now you can preprocess the Info.plist when building your app, using the revision-file as a header. This means that your GIT_VERSION string will be replaced. Edit your Build-Settings like this:<img data-echo="/weblog/gitx-info-plist-prep.png" alt="Info.plist preprocessing using git describe" class="aligncenter" />
  
**Using the string in the About-window**
  
So, now your Info.plist contains a meaningful string. You want that to be displayed to the user when he opens the &#8220;About&#8221; window, but you don&#8217;t want to write your own window. First you have to write an IBAction in some controller that&#8217;s in your MainMenu.xib. Then you&#8217;ll have to reconnect the About-button to that action from your controller, which should look like this:

<pre>- (IBAction)showAboutPanel:(id)sender
{
	NSString *gitversion = [[[NSBundle mainBundle] infoDictionary] 
		objectForKey:@"CFBundleGitVersion"];
	NSMutableDictionary *dict = nil;
	if (gitversion)
		dict = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
			gitversion, @"Version", nil];

	[NSApp orderFrontStandardAboutPanelWithOptions:dict];
}</pre>

So, if gitversion is set then the default Version-string is overwritten with it when calling the about-panel, while for Mac-OS the extra-key in your Info.plist is completely meaningless and to differentiate between version you can still use a simple integer. If that was to hard to follow just have a look [at the commit in the GitX-repo](http://github.com/pieter/gitx/commit/0b81911d76a819fea58d7c1aba98302cb8703d70).
