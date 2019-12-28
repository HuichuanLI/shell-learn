#!/bin/bash

while [ -z $response ] || [ $response != 'yes' ]
do
    read -p 'Say yes : ' response
done
