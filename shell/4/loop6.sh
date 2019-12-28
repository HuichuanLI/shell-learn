#!/bin/bash

for file in `ls *.sh`
do
    cp $file $file-copy
done
