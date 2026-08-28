#!/bin/sh

num=5
while (( num ))
do
echo $num
let num=num-1 # (( num = num - 1 ))
done
