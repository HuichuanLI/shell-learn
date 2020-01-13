#!/bin/bash


variable_1="Global Variable"

function local_func
{
  variable_2="Local Variable"
}

echo "variable_1=$variable_1"
echo "variable_2=$variable_2"

local_func

echo "variable_1=$variable_1"
echo "variable_2=$variable_2"

function test_local
{
  local variable_3="huichuan"
  echo "variable_2=$variable_2"
  echo "variable_3=$variable_3"
}

test_local

echo "variable_3=$variable_3"
