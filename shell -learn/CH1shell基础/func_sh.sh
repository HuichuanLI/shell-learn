#!/bin/bash

function add
{
	value=`expr $1 + $2`
	echo $value
}
add $1 $2
