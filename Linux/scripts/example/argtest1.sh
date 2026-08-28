#!/bin/sh
# Script name: argtest1.sh
if (( $1 > $2 ))
then
echo "num1 is larger"
else
echo "num2 is larger"
fi
