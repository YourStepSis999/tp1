# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

#!/bin/bash

MAXCOUNT=$1


nombre=$(shuf -i 1-65536 -n$MAXCOUNT)

echo "${nombre[@]}"

for i in ${nombre[@]}; do
if ps -W -p $i > /dev/null;
then
   nom=(ps -p $i -o comm=)
   echo "$i, $nom a ce process"
else 
   echo "$i, aucun processus a ce numéro de processus"
fi
done
