#!/bin/bash
#

function create_random()
{
	min=$1
  	max=$(($2-$min+1))
  	num=$(date +%s%N)
  	echo $(($num%$max+$min))
}

INDEX=1

while true
do
	for user in allen mike jerry tracy han lilei
	do
		COUNT=$RANDOM
		NUM1=`create_random 1 $COUNT`
		NUM2=`expr $COUNT - $NUM1`		
		echo "`date '+%Y-%m-%d %H:%M:%S'` $INDEX Batches: user $user insert $COUNT records into database:product table:detail, insert $NUM1 records successfully,failed $NUM2 records" >> ./db.log.`date +%Y%m%d`
		INDEX=`expr $INDEX + 1`
	done
done
