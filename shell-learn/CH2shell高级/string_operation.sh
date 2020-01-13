#!/bin/bash


var1="Hello world"
echo ${#var1}
echo `expr length "$var1"`
#获取索引位置
var2="quickstart is a app"
echo `expr index "$var2" start`
echo `expr index "$var2" uniq`
#获取字段长度
var3="quickstart is a app"
#从头开始的
sublen=`expr match "$var2" quick`
echo $sublen
#抽取字符串的字串
var1="kafka hadoop yarn mapreduce"
#从0开始从起始位置开始查找
substr=${var1:10}
echo $substr

echo ${var1:10:5}
#要有空格
echo ${var1: -5}
#另一种形式
echo ${var1:(-5):2}
#从1开始
substrsubstr=`expr substr "$var1" 10 5`
echo $substrsubstr
