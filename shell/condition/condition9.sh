#!/bin/bash

read -p 'Enter a file : ' file

if [ ! -e $file ]
then
    echo "$file does not exist"
else
    echo "$file exists"
fi
