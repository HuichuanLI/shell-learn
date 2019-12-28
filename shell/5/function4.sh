#!/bin/bash

lines_in_file () {
    cat $1 | wc -l
}

line_num=$(lines_in_file $1)

echo The file $1 has $line_num lines
