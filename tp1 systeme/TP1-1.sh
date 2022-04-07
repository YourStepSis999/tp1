#!/bin/bash

if [ "$#" = 0 ]
then
  
    echo "Aucun argument a été écrit."
    exit 1
fi
  

maxEle=$1
minEle=$1
  

for arg in "$@"
do
    if [ "$arg" -gt "$maxEle" ]
    then
        maxEle=$arg
    fi
done


for arg in "$@"
do
    if [ "$arg" -lt "$minEle" ]
    then
        maxEle=$arg
    fi
done

echo "Largest value among the arguments passed is: $maxEle"
echo "Lowest value among the arguments passed is: $minEle"