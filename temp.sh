#!/bin/bash

# Place your code here

if [[ ${1: -1} == 'C' ]]
then
  celsius=$(echo $1 | sed 's/C//g')
  echo "$((celsius + 273))K"
else
  kelvin=$(echo $1 | sed 's/K//g')
  echo "$((kelvin - 273))C"
fi
