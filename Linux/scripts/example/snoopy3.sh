#!/bin/sh
name=snoopy
case $name in
"snoopy")
echo "It was a dark and stormy night."
;;
"charlie")
echo "You're a good man Charlie Brown."
;;
"lucy")
echo "The doctor is in."
;;
"schroder")
echo "In concert."
;;
*)
echo "Not a Snoopy character."
exit 1
;;
esac
exit 0
