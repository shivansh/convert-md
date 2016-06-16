#!/bin/bash

# Change horizontal rule
# TODO Check for distinguishing from assignment operator
sed -e 's/=/-/g' $1 > new

# Change style for headings
sed -i -e 's/#/=/g' new

# Change style for italics
 sed -i -e "s/\*\*/\'\'/g" new

# Finally copy the output into clipboard
# xclip -sel clip < new
