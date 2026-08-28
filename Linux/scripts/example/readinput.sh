#!/bin/sh
echo -e "Enter a string: \c"
while read var
do
echo "Keyboard input is: $var"
echo -e "\nEnter a string: \c"
done
echo "End of input.“
