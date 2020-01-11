#!/bin/bash

var1=56
var2=34
var3=89

if [ $var1 -gt $var2 ] && [ $var2 -lt $var3 ];then
	echo "$var1 < $var2 并且 $var2 < $var3"
fi
