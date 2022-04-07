# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

# demander à l'utilisateur un chiffre, créer un tableau de x éléments random (jusqu'à 65536).
#Par la suite, on parcoure le tableau de x éléments:

#Pour chaque élément, on recherche si un processus existant a le même numéro de processus (ID):

#Si oui, afficher le # et le nom,
#Si non, affiche le # et indique qu'il n'y a aucun processus ayant ce #.

$Nombre = Read-host -Prompt "Choissisez un chiffre"
$NombreMax = 0
$list = @()

try {
  do {
     $chiffre = 1..65536| Get-Random
     $list += $chiffre
     $NombreMax++
} while ($Nombre -gt $NombreMax)
    

foreach($object in $list){
     if ( Get-Process -ErrorAction stop -Id $object -ErrorAction SilentlyContinue ) {
          $nom = (Get-Process -ErrorAction stop -id $object).Name
          "$object" + "," + "$nom a ce numéro"
     } 
     else {"$object, aucun processus a ce numero"
} }   
}
catch {
     echo "Une Erreur c'est produite"
}


