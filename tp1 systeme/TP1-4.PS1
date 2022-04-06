
$Nombre = $args
$Nombre2 = 0
$list = @()

try {
  do {
     $chiffre = 1..65536| Get-Random
     $list += $chiffre
     $nombre2++
} while ($Nombre -gt $nombre2)
    

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


