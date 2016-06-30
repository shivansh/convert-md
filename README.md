Markdown converter to FreeBSD style syntax.
This inspiration for this project came as a need for writing weekly updates for both FreBSD-wiki and my blog, since FreeBSD supports a different format for styling in markdown, it would be a lot of work for writing same thing twice.

[Markdown Rules](https://wiki.freebsd.org/HelpOnMoinWikiSyntax) for FreeBSD.

## Requirements
* xclip (optional)
* GNU sed
* GNU awk

## Usage
`./script.bash` and you are done.

## TODO
* Update the above section.
* Currently multiple traversals are being used for replacement. A better approach would be to replace everything in a single traversal.
* A vim plugin doing in place conversion would also be good.
* Change styles for hyperlinks.
