#!/bin/bash

IFS=$'\n'
for i in $(cat ./1.txt)
do
	echo $i
done
