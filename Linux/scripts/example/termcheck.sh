#!/bin/sh
# Script name: termcheck.sh
if [[ "$TERM" == “ibm" ]]
then
echo "You are using the sun console device."
elif [[ "$TERM" == "vt100" ]]
then
echo "You are using a vt100 emulator."
elif [[ "$TERM" == "dtterm" ]]
then
echo "You are using a dtterm emulator."
else
echo "I am not sure what emulator you are using."
fi
