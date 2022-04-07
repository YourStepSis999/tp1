# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

$Nombre = $args
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


