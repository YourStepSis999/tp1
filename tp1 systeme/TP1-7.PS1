# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

# recherche dans les répertoires présent et enfants tous les fichiers avec le même nom et les indiquer dans un fichier sortie

$list = Get-ChildItem -ErrorAction Stop $args -File -Recurse

try {
    foreach ($file in $list){
        $nom = [System.IO.Path]::GetFileName("$file")
        Get-ChildItem -ErrorAction Stop $file -Depth 2 -file -filter "$nom" | add-content sortie.txt
    }  
}
catch {
    echo "Une Erreur c'est produite"
}
