#!/bin/bash

MAXCOUNT=$1
count=1

while [ "$count" -le $MAXCOUNT ]; do
PORT=$(( ((RANDOM<<15)|RANDOM) % 65536 + 0 ))
 ARRAY+=($PORT)
 let "count += 1"
done

echo ${ARRAY[*]}

for i in ${ARRAY[@]} 
do
if ps -p $i;
then
  echo " is running"
   
fi
done

if pgrep -x "Registery" > /dev/null
then
    echo "Running"
else
    echo "Stopped"
fi