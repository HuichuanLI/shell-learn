#!/bin/bash

var1="hello"
var2="aorld"

if [ $var1 \< $var2 ];then
	echo "<"
else
	echo ">"
fi

if [ -n "$var3" ];then
	echo "var3 is not null"
else
	echo "var3 is null"
fi
