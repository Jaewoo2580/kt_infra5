#!/bin/sh
echo "Select a terminal type"
cat << ENDINPUT
ibm
hp
ansi
wyse50
ENDINPUT
echo -e "Which would you prefer? \c"
read termchoice
echo
echo "You choice is terminal type: $termchoice“
