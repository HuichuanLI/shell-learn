#!/bin/bash

for (( i=1;i<=10;i++))
do
	echo $i
	for ((j=1;j<=5;j++))
	do
		echo $i $j
                if ((i==3));then
			break 2
		fi
	done
done
