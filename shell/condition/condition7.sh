#!/bin/bash

read -p 'Enter a directory : ' file

if [ -d $file ]
then
    echo "$file is a directory"
else
    echo "$file is not a directory"
fi
