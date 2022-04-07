# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

# parcourt tous les fichiers txt d'un répertoire donné en argument et qui affiche les 10 premières lignes de chacun de ces fichiers de façon suivante dans le fichier entêtes.txt

#!/bin/bash

cd "$args"
head -10 *.txt  >> entete.txt
