#!/bin/bash

while true
do
echo "a. sudo apt-get update
b. sudo apt-get upgrade
c. sudo apt-get dist-upgrade
d. sudo apt-get clean
e. quitter"
    read input
    
case $input in 

    
  A | a)
    sudo apt-get update

    ;;

  b | B )
    sudo apt-get dist-upgrade
    
    ;;

    C | c)
    sudo apt-get dist-upgrade
    
    ;;

  d|D)
    sudo apt-get clean
 
    ;;

    e|E)
    break
    ;;

    *)
    echo "Une erreur est survenu"
    ;;
esac
done
