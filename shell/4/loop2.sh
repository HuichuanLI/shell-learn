#!/bin/bash

until [ "$response" = 'yes' ]
do
    read -p 'Say yes : ' response
done
