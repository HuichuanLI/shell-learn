#!/bin/bash

num=10
while [ $num -lt 20 ]
do
	echo "Number is $num"
	(( num++ ))
	num=$[$num+1]
done
