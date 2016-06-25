#!/bin/bash

# Horizontal rule
# TODO Check for distinguishing from assignment operator
sed -e 's/=/-/g' $1 > bsd-md

# Headings
sed -i -e 's/#/=/g' bsd-md

# Bold formatting
sed -i -e "s/\*\*/\'\'\'/g" bsd-md

# Italics formatting
sed -i -e "s/_/\'\'/g" bsd-md

# Finally copy the output into clipboard
xclip -sel clip < bsd-md
