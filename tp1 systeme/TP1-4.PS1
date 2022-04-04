
$Nombre = $args
$Nombre2 = 0
$list = @()
do {
     $chiffre = 1..65536| Get-Random
     $list += $chiffre
     $nombre2++
} while ($args -gt $nombre2)
    

foreach($object in $list){
     if ( Get-Process -Id $object -ErrorAction SilentlyContinue ) {
          $nom = (Get-Process -id $object).Name
          "$object" + "," + "$nom a ce numéro"
     } 
     else {"$object, aucun processus a ce numero"
} }
     

