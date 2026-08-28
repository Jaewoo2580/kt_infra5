#!/bin/sh
# Script name: snoopy2.sh
name=snoopy
if [[ "$name" == "snoopy" ]]
then
echo "It was a dark and stormy night."
elif [[ "$name" == "charlie" ]]
then
echo "You're a good man Charlie Brown."
elif [[ "$name" == "lucy" ]]
then
echo "The doctor is in."
elif [[ "$name" == "schroder" ]]
then
echo "In concert."
else
echo "Not a Snoopy character."
fi
