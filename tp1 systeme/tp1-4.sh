# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

# demander à l'utilisateur un chiffre, créer un tableau de x éléments random (jusqu'à 65536).
#Par la suite, on parcoure le tableau de x éléments:

#Pour chaque élément, on recherche si un processus existant a le même numéro de processus (ID):

#Si oui, afficher le # et le nom,
#Si non, affiche le # et indique qu'il n'y a aucun processus ayant ce #.

#!/bin/bash

echo "Choissisez un chiffre"
read maxCount



nombre=$(shuf -i 1-65536 -n$maxCount)

echo "${nombre[@]}"

for i in ${nombre[@]}; do
if ps -W -p $i > /dev/null;
then
   nom=(ps -p $i -o comm=)
   echo "$i, $nom a ce process"
else 
   echo "$i, aucun processus a ce numéro de processus"
fi
done
