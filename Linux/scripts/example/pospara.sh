#!/bin/sh
set uno duo tres # resets the value of the potitional parameters
echo "Executing script $0"
echo
echo "One, two, three in Latin is:"
for x # defaults to "in $*"
do
echo $x
done
