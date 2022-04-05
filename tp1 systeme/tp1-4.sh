#!/bin/bash

MAXCOUNT=$1


nombre=$(shuf -i 1-65536 -n$MAXCOUNT)

echo "${nombre[@]}"

for i in ${nombre[@]}; do
if ps -W -p $i > /dev/null;
then
   nom=(ps -p $i -o comm=)
   echo "$i, $nom a ce process"
fi
done
