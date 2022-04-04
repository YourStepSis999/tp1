#!/bin/bash
#Check if the number of arguments passed is zero
if [ "$#" = 0 ]
then
    #Script exits if no
    #arguments passed
    echo "No arguments passed."
    exit 1
fi
  
#Initialize maxEle with 
#the first argument
maxEle=$1
minEle=$1
  
#Loop that compares maxEle with the 
#passed arguments and updates it
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