#!/bin/bash


deck=(1 2 3 4 5 6 7 8 9 10 11 12 13 1 2 3 4 5 6 7 8 9 10 11 12 13 1 2 3 4 5 6 7 8 9 10 11 12 13 1 2 3 4 5 6 7 8 9 10 11 12 13)
DeckShuffled=( $(shuf -e "${deck[@]}") )

gagner=$false

for i in {0..25};
do
    joueur1+=(${shuffledDeck[$i]})
done

for i in {26..52};
do
    joueur2+=(${shuffledDeck[$i]})
done


while [ true ]
do
    if [[ ${joueur1[0]} -eq ${joueur2[0]} ]]
    then
        joueur1=("${joueur1[@]:1}")
        joueur2=("${joueur2[@]:1}")
        
    elif [[ ${joueur1[0]} -gt ${joueur2[0]} ]]
    then
        joueur1+=(${joueur2[0]})
        joueur2=("${joueur2[@]:1}")
        joueur1+=(${joueur1[0]})
        joueur1=("${joueur1[@]:1}")
       
    else
        joueur2+=(${joueur1[0]})
        joueur1=("${joueur1[@]:1}")
        joueur2+=(${joueur2[0]})
        joueur2=("${joueur2[@]:1}")
        
    fi
    
    if [[ ${#joueur2[@]} -eq $null ]]
    then
        echo "Le joueur un a gagner"
        break
    elif [[ ${#joueur1[@]} -eq $null ]]
    then
        echo "Le joueur deux a gagner "
        break
    fi
done