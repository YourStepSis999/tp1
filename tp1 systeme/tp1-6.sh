# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

# créer un script qui va parcourir les fichiers images (.jpg ou .gif ou .png) du répertoire x. Pour chaque image, le script devra créer une image .png de taille dim dans le répertoire y.

# Le script sera appelé de la façon suivante, par exemple:

# 6.sh x y dim

# !/bin/bash

cd"$1"
magick mogrify -format png *.gif
magick mogrify -format png *.jpg
magick mogrify -format png *.png
cd "$2"
magick mogrify -resize $3x$4\! *.png