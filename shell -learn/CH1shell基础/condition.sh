#!/bin/bash

if [ $1 -eq $2 ];then
	echo "$1 = $2"
elif [ $1 -ge $2 ];then
	echo "$1 >= $2"
else
	echo "$1 < $2"
fi
