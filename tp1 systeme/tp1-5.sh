# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

#!/bin/bash

cd "$1"
find . -type f -print0 | xargs -0 ls -lh -go --time-style=+""  | sed -E '2,$s/ +[0-9]+//' | sed -re 's/^[^ ]* //' |  sort -k5,5n 
