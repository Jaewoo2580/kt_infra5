#!/bin/sh
echo "Enter some text: \c"
read INPUT
for var in $INPUT
do
echo "var contains: $var"
done
