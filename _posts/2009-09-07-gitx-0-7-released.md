---
id: 573
title: 'GitX 0.7 &#8211; Visual changelog'
date: 2009-09-07T22:00:07+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=573
permalink: /2009/09/07/gitx-0-7-released/
categories:
  - Apple
  - Geekstuff
  - git
---
<img src="/weblog/gitx_logo.png" alt="GitX 0.7" class="alignleft" />[GitX 0.7](http://gitx.frim.nl/) was just released today. This is the latest release since 0.6.3 and the first real feature release for some time, although we don&#8217;t make that distinction to strictly. After the jump I&#8217;ll outline the cool new features and how to make use of them.

#### GitX mailing-list

We&#8217;ve been using [our Lighthouse tracker](http://gitx.lighthouseapp.com/projects/17830-gitx/overview) to respond to bugs and to discuss features for quite a while now. Email exchanges between Pieter and other contributors were getting more common, so we decided to open a [mailing-list for GitX](http://googlegroups.com/group/gitx/). We already got some nice patches through the list, which has the great advantage that patches can easily be reviewed inline and discussed. The use of the GitHub-wiki is discouraged, as is the Pull-request functionality.

#### GitX survey

[<img src="/weblog/survs.jpg" alt="GitX survey" class="alignright" style="margin-top: -15px; border:0px;" />](http://www.survs.com/survey?id=DCJKLP2B&channel=E965G53EBB)To accompany this release, and to improve the input from our users, we have created a small (< 5 min) survey for GitX. We&#8217;d be happy if you took the time to go through it. Link to the [GitX user survey](http://www.survs.com/survey?id=DCJKLP2B&channel=E965G53EBB)

The juicy details after the jump:
  
<!--more-->

#### Operations on hunks/lines

<img src="/weblog/gitx_0.7_discard_hunk.png" alt="GitX" class="alignleft" />Staging and unstaging hunks has been possible for some time. What&#8217;s new is the &#8220;Discard Hunk&#8221; button which simply gets rid of that change, i.e. uses apply &#8211;reverse. As usual, the warning-box that shows up can be silenced by Alt-Clicking the button.
  
<img src="/weblog/gitx_0.7_stagelines.png" alt="GitX 0.7" class="aligncenter" />The most obvious change is the ability to stage specific lines from a hunk, using the left mouse-button to drag-select a few lines and then hit &#8220;Stage lines&#8221;. This is by far the most advanced method to stage stuff in a git-gui up until now.

#### History

Two small changes that should make life easier are the orange color for you current branch in the rev-list and the menu-title, which displays your current HEAD as well.<img src="/weblog/gitx_0.7_head.png" alt="GitX" class="aligncenter" />
  
The panes which hold the list of commits and the individual diffs can now be collapsed/uncollapsed using double-click or the keystroke &#8220;Command-Shift-Up/Down&#8221;. This gives you the ability to quickly maximize complicated history or diffs.

#### Committing

<img src="/weblog/gitx_0.7_commit_info.png" alt="GitX" class="alignleft" />The commit-view gained a &#8220;Sign-Off&#8221; button. Commits keep their author information when amending. And the (Un)staged-changes list gained a &#8220;Show in Finder&#8221; menu item. The diff now shows the committer, who can be someone other than the author of a patch. Commit-hooks now get executed upon committing.

#### General

A small preference called &#8220;Show white-space differences&#8221; shows you diffs with white-space-only changes. We also tried to make most of the alert-messages run non-modal, which means they won&#8217;t block other instances of GitX. The tree-view doesn&#8217;t try to display the content of binary-files anymore. Furthermore we updated a few passages of the UserManual to reflect the current state of GitX.

#### Bugfixes

The big heap of stuff were bugfixes, some trivial, very few regressions, some simply annoying and some features to protect users from doing harm to themselves. A few of those fixes were performance-related, and with the new Safari 4 the diff-view should suffer less.

#### What&#8217;s in the pipeline for GitX 0.8

One of the changes that almost made it to GitX 0.7 is the auto-refresh feature, which monitors the repository and reloads GitX automatically when something is changed. We&#8217;re confident that this feature will be in 0.8, if not earlier.

#### Diffstat/shortlog

Shortlog:

<pre>Benjamin Kramer (9):
      HistoryView: Factor out email formatting
      HistoryView: Show committer if his name differs from the author's
      HistoryView: Show commit date
      HistoryView: Make table header large enough so the text doesn't shift
      Don't compile plain ObjC files as ObjC++
      Get rid of some unnecessary casts
      Remove a .DS_Store
      Fix an obvious typo
      Fix checkbox scaling warnings

Benoit Cerrina (1):
      PBGitRepository: Fix opening of large directories due to bug in NSFileWrapper.

Charles O'Rourke (2):
      Ticket #142: Add Show in Finder to Unstaged and Staged table views.
      Tickets #151 and #155: check for illegal branch names before creating.

Gerd Knops (1):
      Fix build with external build products directory

JD Smith (4):
      commit view: Ensure buttons display on top of text ... but beneath title line.
      diffHighlighter.js: Record the line index as attribute.
      commit.js: Refactor hunk retrieval. To work with subhunks, allow passing a header line explicitly to search for.
      commit.js: Interface for selecting lines to (un-)stage.

Joe Fiorini (3):
      Write commit message to file
      Enable arguments to be passed to executeHook.
      Trigger commit-msg hook when committing

Johannes Gilger (31):
      GitX: Make toolbar in history and commit view equal height
      Info.plist: Fix handling of directories
      PBGitCommit: Call git show with --no-color to be safe
      PBGitRepository: Display branch-name in window title
      PBGitRepository: Correctly indicate bare/non-bare repos
      history.js: Fix display of mode-change and rename
      PBGitCommitController: Fix unstaging of files
      PBWebChanges: Allow discarding of hunks
      PBGitRepository: Add method to remove branch
      PBGitWindowController: Use beginSheetModalForWindow instead of runModal
      keyboardNavigation: Fix keys 'c' and 'v' from webView
      PBGitCommit: Add "Sign-Off" button/method
      PBGitCommitController: Don't allow duplicate Sign-Offs
      PBGitHistory: Add "Show in Finder" to files
      PBGitIndexController: Renamed "Revert" to "Discard"
      Add PBCollapsibleSplitView as subclass of PBNiceSplitView
      PBCollapsibleSplitView: Enable collapse/uncollapse using keys
      Statusbar: Bring View-Mode buttons to front
      Keep window-title up-to-date in commit view
      commit.js: Fix discardHunk functionality
      This fixes a CSS-bug which makes the gitx-website display the same font with Firefox and Safari instead of using a serif with FF.
      Add empty line at end of previous release notes
      UserManual: Add disclaimer as to what GitX is
      GitX 0.7 Release-Notes
      UserManual: Add disclaimer as to what GitX is
      UserManual: Rewrite most parts for GitX 0.7
      About-Panel: Show git-describe using Info.plist
      Site: W3C-Valid and CSS/HTML corrections
      ReleaseNotes for v0.7 with author information
      Site: Get rid of auto-refresh description
      PBGitTree: Don't try to print binary-file contents

Mike Czepiel (1):
      Added very basic tag info menu item and alert.

Nicholas Riley (6):
      Reduce font size of staged/unstaged changes lists.
      Don't disturb editing state when inserting "Signed-off-by" line.
      Remove extraneous space in "Are you sure you wish to revert changes?" message.
      Set keyboard focus reasonably when switching between views.
      Clean up UI and add keyboard support for create branch sheet.
      Truncate the middle of pathnames in the Unstaged/Staged Changes lists.

Pieter de Bie (51):
      Update diffHighlighter test
      HistoryView: speed up diff display
      Allow executing of hooks
      Trigger pre and post-commit hooks when committing
      CommitController: Don't rewrap commit message when amending
      Allow a user to select which columns to display
      HistoryView: Autosave column information
      GitRevList: fix crash when loading 0 commits
      GitRevList -- Try to read the encoding of the commit message
      GitRevList: cache the values of string encodings
      GitRevList: Use std::map.find() rather than count()
      GitCommitController: clean up index functions
      CommitController: Use a dictionary lookup when refreshing index
      GitCommitController: Also use dictionary lookup for untracked files
      PBChangedFile: remove shouldBeDeleted boolean
      Rename 'CachedChanges" to "StagedChanges" for greater consistency
      Add an example of how drag-selection for staging lines could work.
      HistoryView: Resize the detail webview
      Site: add link to Twitter
      PBEasyPipe: Add method that allows you to specify the environment stuff
      PBGitRepository: Specify environment when calling hooks
      PBGitRepository: Add support for changing the environment when executing commands
      NSSTring_RegEx: Add support for regular expressions to NSString
      PBGitCommitController: retain author information of previous commit
      Preferences: Resize views
      Add preference to ignore whitespace differences in history view
      CommitController: don't mutate array we enumerate when refreshing index
      HistoryView: only add parents if parents array exists
      Site: update links to reflect move to mailing list
      Remove use of deprecated stringWithCString
      PBGitConfig: Add missing sentinel
      CommitController: Notify observers when adding files
      History fileview: select current item on rightclick
      Display context menu in the history tree to show related commits
      HistoryController: Add some marks
      WebHistoryController: Refactor menu search to be recursive
      HistoryController: Use a programatically created context menu
      WebHistoryView: Also use the tree context menu
      HistoryController: Add "Open Files" menu item
      CommitController: Reject merges
      PBGitRepository: Clean up the readFromURL: method
      CommitController: Don't turn of off automatic rearranging
      Site: smush.it images
      Also set blobMode / blobSha for unstaged changes.
      PBChangedFile: Add assert to make sure we're not doing something stupid
      IndexController: re-add ellipsis to "Discard Changes" menu item
      DiffHighlighter: Remove weird end line
      HistoryView: Add "SHA" Column and make it hidden by default
      Update releasenotes, as autorefresh won't make it into 0.7
      Add a few more release points
      Add a link to the user survey

Steven Michalske (1):
      HistoryView: Change the way the HEAD is displayed

Stonewall Ballard (1):
      Add preferences for opening things at launch.

dbr (1):
      When selecting a folder in tree-view, display the path rather than the &lt;PBGitTree: 0x...&gt; object.
</pre>

The shortstat has this to say:

<pre>84 files changed, 5474 insertions(+), 1470 deletions(-)
</pre>