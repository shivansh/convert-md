#!/bin/bash

# Horizontal rule
# TODO Check for distinguishing from assignment operator
sed -e 's/===/----/g' $1 > bsd-md

# Headings
# TODO Surround the line with =
sed -i -e 's/#/=/g' bsd-md

### Bold formatting ###
sed -i -e "s/\*\*/\'\'\'/g" bsd-md

### Italics formatting ###
sed -i -e "s/_/\'\'/g" bsd-md

### Code formatting ###
# Replace every even occurence of ```
awk '/```/&&v++%2{sub(/```/, "}}}")}{print}' $1 > bsd-md

# Replace all remaining ```
sed -i -e "s/\`\`\`/{{{/g" bsd-md

# Finally copy the output into clipboard
xclip -sel clip < bsd-md
