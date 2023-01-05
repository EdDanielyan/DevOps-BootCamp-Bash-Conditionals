#!/bin/bash

IFS=', ' read -r -a array <<< "$1"
sum=0
for ((i=0;i<=${#array[@]};i++))
do
    if ((array[i]%2==0))
    then
        sum=$((array[i]+sum))
    fi
done

echo "$sum"
