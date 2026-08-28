#!/bin/sh
USAGE="usage: $0 arg1 arg2 ... argN"
if (( $# == 0 ))
then
echo $USAGE
exit 1
fi
echo "The arguments to the script are:"
while (($#))
do
echo $1
shift
done
echo 'The value of $* is now:' $*
