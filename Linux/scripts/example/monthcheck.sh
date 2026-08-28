#!/bin/sh
# Script name: monthcheck.sh
mth=$(date +%m)
if (( mth == 2 ))
then
echo "February usually has 28 days."
echo "If it is a leap year, it has 29 days."
elif [[ $mth = @(04|06|09|11) ]]
then
echo "The current month has 30 days."
else
echo "The current month has 31 days."
fi
