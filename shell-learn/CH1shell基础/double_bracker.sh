#!/bin/bash
a=10
((a++))
echo $a

if (( $1 > $2 && $3 > $2));then
	echo "$2 > $1 and $3 > $2"
else
	echo "no"
fi

if [ $1 -gt $2 ] && [ $3 -gt $2 ];then
	echo "yes"
else
	echo "no"
fi
