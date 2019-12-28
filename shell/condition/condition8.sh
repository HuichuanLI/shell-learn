#!/bin/bash

if [ $# -ge 1 ] && [ $1 = 'love' ]
then
    echo "Great !"
    echo "You know the password"
else
    echo "You do not know the password"
fi
