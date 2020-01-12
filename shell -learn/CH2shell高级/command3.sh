#!/bin/bash

echo "This year have passed $(date +%j) days"
echo "This year have passed $(($(date +%j)/7)) weeks"
echo "There is $((365 - $(date +%j))) days before new year"
echo "There is $(((365 - $(date +%j))/7)) week before new year"

