#!/bin/bash
#


old_str=hadoop
new_str=HADOOP

# 单引号
sed -i 's/'$old_str'/'$new_str'/g' str.txt

# 有变量的使用双引号

sed -i "s/$old_str/$new_str/g" str.txt
