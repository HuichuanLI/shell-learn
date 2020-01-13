#!/bin/bash

date1

if [ $? -eq 0 ];then
	echo "Sucess..."
else
	echo "Failed"
	exit 25
fi

