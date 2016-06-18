#!/bin/bash

# Change horizontal rule
# TODO Check for distinguishing from assignment operator
sed -e 's/=/-/g' $1 > bsd-md

# Change style for headings
sed -i -e 's/#/=/g' bsd-md

# Change style for italics
sed -i -e "s/\*\*/\'\'/g" bsd-md

# Finally copy the output into clipboard
xclip -sel clip < bsd-md
