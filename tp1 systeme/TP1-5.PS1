# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01


$repertoire = $args
try {
    Get-ChildItem -ErrorAction Stop -Path $repertoire -Recurse | Sort-Object Length -Descending | Select-Object name,@{Name="Taille_en_KB";Expression={$_.Length / 1Kb}}  | Format-Table -AutoSize

}
catch {
    echo "Une Erreur c'est produite"
}
