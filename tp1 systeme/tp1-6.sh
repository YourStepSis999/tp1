# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

#!/bin/bash

cd"$1"
magick mogrify -format png *.gif
magick mogrify -format png *.jpg
magick mogrify -format png *.png
cd "$2"
magick mogrify -resize $3x$4\! *.png