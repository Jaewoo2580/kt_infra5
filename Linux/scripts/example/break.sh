#!/bin/sh
typeset -i num=0
while true
do
echo -e "Enter any number (0 to exit): \c"
read num junk
if (( num == 0 ))
then
break
else
echo -e "Square of $num is $(( num * num )). \n"
fi
done
echo "script has ended"
