#!/bin/bash

print_something () {
    echo Hello $1
    return 1
}

print_something Luke
print_something John
echo Return value of previous function is $?
