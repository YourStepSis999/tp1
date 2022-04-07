# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

# Indiquez le nombre le plus grand et le nombre le plus petit parmi les arguments reçus.

#!/bin/bash


if [ "$#" = 0 ]
then
  
    echo "Aucun argument a été écrit."
    exit 1
fi
  
  regex = "[!0-9]"
if [[ ! "$#" =~ $regex ]]
then
    echo "argument n'est pas une chiffre"
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