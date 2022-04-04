
$joueur2 = [System.Collections.ArrayList]@()
$joueur1 =[System.Collections.ArrayList]@()
$deck = "1", "1", "1", "1", "2", "2", "2", "2", "3", "3", "3", "3", "4", "4", "4", "4",
"5", "5", "5", "5", "6", "6", "6", "6", "7", "7", "7", "7", "8", "8", "8", "8",
"9", "9", "9", "9", "10", "10", "10", "10", "11", "11", "11", "11", "12", "12", "12",
"12", "13", "13", "13", "13"

$joueur1 = get-random -InputObject $deck -Count 5
$joueur2 = get-random -InputObject $deck -Count 5
$joueur1.GetType()

$nombre1 = $joueur1 | select -first 1
$nombre2 = $joueur2 | select -first 1
if ($nombre1 -gt $nombre2) {
    $joueur1.Remove("$Nombre1")
    $joueur2.Remove("$Nombre2")
    "caca"
}
$joueur1
$joueur2

        
    
