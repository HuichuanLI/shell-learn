#!/bin/bash

FILE=$(ls)
for i in $FILE
do
	if [ -d ./$i ];then
		echo "$i is DIR"
	elif [ -f ./$i ];then
		echo "$i is File"
	else
		echo "ERROR"
	fi
done
