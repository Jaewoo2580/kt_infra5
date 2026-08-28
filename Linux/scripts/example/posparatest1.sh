#!/bin/sh
# Script name: posparatest1.sh
set This is only a test
echo 'Here is the $* loop output: '
for var in $*
do
echo "$var"
done

echo
echo 'Here is the $@ loop output: '
for var in $@
do
echo "$var"
done
