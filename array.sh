#!/bin/bash

array=('1' '2' '3')
array[5]=5
echo ${array[2]}
echo ${array[*]}
