#!/bin/bash

array=('value0' 'value1' 'value2')
array[5]='value5'
echo ${array[*]}
