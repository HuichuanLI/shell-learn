#!/bin/bash

declare -a array
array=("jones" "mike" "kobe" "jordan")

echo ${array[@]}
echo ${array[1]}

echo ${#array}

echo ${#array[2]}
unset array[2]
echo ${array[@]}
#echo ${array[@]:1:4}	
for v in ${array[@]}
do
	echo $v
done
