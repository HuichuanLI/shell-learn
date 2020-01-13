#!/bin/bash

for ((i=10;i<30;i++))
do
	if((i>14 && i >20));then
		continue
	fi
	echo "Number is $i"
done
