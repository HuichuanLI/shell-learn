#!/bin/bash
#

FILE_NAME=./my.cnf

function get_all_segments
{
  # 替换左右中括号
	echo "`sed -n '/\[.*\]/p' $FILE_NAME  | sed -e 's/\[//g' -e 's/\]//g'`"
}

function count_items_in_segment
{
	items=`sed -n '/\['$1'\]/,/\[.*\]/p' $FILE_NAME | grep -v "^#" | grep -v "^$" | grep -v "\[.*\]"`
	
	index=0
	for item in $items
	do
		index=`expr $index + 1`
	done

	echo $index

}

number=0

for segment in `get_all_segments`
do
	number=`expr $number + 1`
	items_count=`count_items_in_segment $segment`
	echo "$number: $segment  $items_count"
done
