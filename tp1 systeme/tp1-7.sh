# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

#!/bin/bash

cd "$1"
ls -1 -R | tr '[A-Z]' '[a-z]' | sort | uniq -c | grep -v " 1 
