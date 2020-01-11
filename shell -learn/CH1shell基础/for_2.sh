#!/bin/bash

#IFS input field seperate
IFS=":"
list="zhangsan:lisi:Tom"

for i in $list
do 
	echo "Name is $i"
done
