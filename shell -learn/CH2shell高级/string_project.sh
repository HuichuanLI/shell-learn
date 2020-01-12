#!/bin/bash

string="Bigdata process framework is Hadoop,Hadoop is an open source project"
function tips_info
{
	echo "******************************************"
	echo "***  (1) 打印string长度"
	echo "***  (2) 在整个字符串中删除Hadoop"
	echo "***  (3) 替换第一个Hadoop为Mapreduce"
	echo "***  (4) 替换全部Hadoop为Mapreduce"
	echo "******************************************"
}

function print_len
{
	if [ -z "$string" ];then
		echo "Error,string is null"
		exit 1
	else
		echo "${#string}"
	fi
}
function del_hadoop
{

	if [ -z "$string" ];then
		echo "Error,string is null"
		exit 1
	else
		echo "${string//Hadoop/}"
	fi
}

function rep_hadoop_mapreduce_first
{
	if [ -z "$string" ];then
		echo "Error,string is null"
		exit 1
	else
		echo "${string/Hadoop/Mapreduce}"
	fi
}
function rep_hadoop_mapreduce_all
{
        if [ -z "$string" ];then
                echo "Error,string is null"
                exit 1
        else
                echo "${string//Hadoop/Mapreduce}"
        fi
}

while true
do
	echo "【string=\"$string\"】"
	tips_info
	read -p "Please Switch a Choice(1|2|3|4|q|Q): " choice
	case "$choice" in
        1)
		echo
		echo "Length Of String is: `print_len`"
		echo
		continue
		;;
	2)
		echo
		echo "删除Hadoop后的字符串为：`del_hadoop`"
		echo
		;;
	3)
		echo 
		echo "替换第一个Hadoop的字符串为：`rep_hadoop_mapreduce_first`"
		echo
		;;
	4)
		echo 
                echo "替换第一个Hadoop的字符串为：`rep_hadoop_mapreduce_all`"
                echo
		;;
	q|Q)
		exit 0
		;;
	*)
		echo "error,unlegal input,legal input only in { 1|2|3|4|q|Q }"
		continue	
		;;	
	esac
done
