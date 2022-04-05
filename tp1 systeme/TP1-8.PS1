[System.Collections.ArrayList]$joueur1=@()
[System.Collections.ArrayList]$joueur2=@()
$deck =@("1", "1", "1", "1", "2", "2", "2", "2", "3", "3", "3", "3", "4", "4", "4", "4",
"5", "5", "5", "5", "6", "6", "6", "6", "7", "7", "7", "7", "8", "8", "8", "8",
"9", "9", "9", "9", "10", "10", "10", "10", "11", "11", "11", "11", "12", "12", "12",
"12", "13", "13", "13", "13")

[System.Collections.ArrayList]$DeckShuffled = $deck | Sort-Object {Get-Random}


for ($i = 0; $i -lt 26; $i++) {
    $joueur1+=$DeckShuffled[$i]
    $DeckShuffled.RemoveAt($i)
}
for ($i = 0; $i -lt 26 ; $i++) {
    $joueur2+=$DeckShuffled[$i]
    
} 
while ($joueur2.Count -ne 52) {
    if ([int]$joueur1[0] -gt [int]$joueur2[0]) {
        $joueur1+=$joueur2[0]
        $joueur2.RemoveAt(0)
        $joueur1+=$joueur1[0]
        $joueur1.RemoveAt(0)
        
    }
    elseif ([int]$joueur1[0] -eq [int]$joueur2[0]) {
        $joueur1.RemoveAt(0)
        $joueur2.RemoveAt(0)
    }else {
        $joueur2+=$joueur1[0]
        $joueur1.RemoveAt(0)
        $joueur2+=$joueur2[0]
        $joueur2.RemoveAt(0)
        
    }
    
}

    


if($joueur1.Count -eq 52){
 "Joueur 1 a gagner"
} elseif ($joueur2.Count -eq 52) {
    "Joueur 2 a gagner"
} 
    



