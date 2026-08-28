#!/bin/sh
set "This is a test" and only a test
echo 'Here is the $* loop output: '
for var in "$*"
do
echo "$var"
done
echo
echo 'Here is the $@ loop output: '
for var in "$@"
do
echo "$var"
done
