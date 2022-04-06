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