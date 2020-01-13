#!/bin/bash

# $() 命令替换
echo "This is $(date +%Y) year"

echo "Next year is $(($(date +%Y)+1)) year" 
