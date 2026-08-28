#!/bin/sh
function hello
{
echo '$1 in the function is: ' $1
}
echo 'Input passed and stored in $1 is: ' $1
hello John # execute the function hello
echo
echo 'After the function $1 is still ' $1
