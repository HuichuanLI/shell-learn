#!/bin/bash

for (( i=0;i<50;i++))
do
	echo "Next Number is $i"
done
for ((i=1;i<=100;i++))
do
	((sum+=$i))
done

echo $sum
