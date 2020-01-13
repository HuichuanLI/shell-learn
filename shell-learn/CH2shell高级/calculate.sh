#!/bin/bash

#

function calculate
{
case "$2" in
	+)
	echo "$1 + $3 = $(expr $1 + $3)"
	;;
	-)
	echo "$1 + $3 = $(expr $1 - $3)"
	;;
	\*)			
	echo "$1 * $3 = $(expr $1 \* $3)"
	;;
	/)
	echo "$1 / $3 = $(expr $1 / $3)"
	;;
esac
}

calculate $1 $2 $3
