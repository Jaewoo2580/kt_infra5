#!/bin/sh
typeset -l new
for file in *
do
echo "Working on file $file..."
if [[ $file != *[A-Z]* ]]
then
continue
fi
orig=$file
new=$file
mv $orig $new
echo "New file name for $orig is $new."
done
echo "Done."
