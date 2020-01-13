#!/bin/bash
			#

while true
do
read -p "Pls enter a positive integer(num>0): " num

# 不输出终端
expr $num + 1 &> /dev/null
if [ $? -ne 0 ];then
	echo "Error,You must input a interger"
	continue
else
if [ `expr $num \> 0` -ne 1 ];then
	echo "Error,You must input a postive interger"
	continue
else
	sum=0
	for((i=0;i<=$num;i++))
	do
		sum=`expr $sum + $i`
	done
	echo "1+2+3+4+5+...+$num=$sum"
	exit
fi
fi
done
