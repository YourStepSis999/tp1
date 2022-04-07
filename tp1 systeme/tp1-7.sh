# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

# recherche dans le répertoire présent et les enfants, les fichiers ayant le même nom et les indique dans un fichier sortie.

#!/bin/bash

cd "$1"
ls -1 -R | tr '[A-Z]' '[a-z]' | sort | uniq -c | grep -v " 1 