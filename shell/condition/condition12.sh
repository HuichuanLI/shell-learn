#!/bin/bash

case $1 in
    "dog" | "cat" | "pig")
        echo "It is a mammal"
        ;;
    "pigeon" | "swallow")
        echo "It is a bird"
        ;;
    *)
        echo "I do not know what it is"
        ;;
esac
