#!/bin/bash
#


old_str=hadoop
new_str=HADOOP

sed -i 's/'$old_str'/'$new_str'/g' str.txt
