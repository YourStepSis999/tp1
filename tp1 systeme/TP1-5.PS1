# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

# recherche dans le répertoire en cours et enfant tous les fichiers et inscris en ordre décroissant (du plus gros au plus petit), le nom et la taille du fichier.

$repertoire = $args
try {
    Get-ChildItem -ErrorAction Stop -Path $repertoire -Recurse | Sort-Object Length -Descending | Select-Object name,@{Name="Taille_en_KB";Expression={$_.Length / 1Kb}}  | Format-Table -AutoSize

}
catch {
    echo "Une Erreur c'est produite"
}
