# convert-md

Markdown converter compatible with FreeBSD style syntax.
This inspiration for this project came as a need for writing weekly updates for both FreBSD-wiki and my blog, since FreeBSD supports a different format for styling in markdown, it would be a lot of work for writing same thing twice.

[Markdown Rules](https://wiki.freebsd.org/HelpOnMoinWikiSyntax) for FreeBSD.

## Requirements
* xclip (optional)
* GNU sed
* GNU awk

## Usage
* `git clone git@github.com:shivrai/convert-md.git && bash script.bash`.<br>
**Note:** Do not execute arbitrary scripts without being sure as in what they contain. This however is just a simple script making use of `sed` and `awk`.
* Your converted document in MoinWiki syntax is placed inside your clipboard. Enjoy !!

## TODO
* Currently multiple traversals are being used for replacement. A better approach would be to replace everything in a single traversal.
* A vim plugin doing in place conversion would also be good.
* Change styles for hyperlinks.
