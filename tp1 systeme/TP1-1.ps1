# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

# un script qui parcourt tous les fichiers txt d'un répertoire donné en argument et qui affiche les 10 premières lignes de chacun de ces fichiers dans le fichier entêtes.txt

$repertoire = $args


try{
foreach($file in (get-childitem -ErrorAction Stop $repertoire -File -Filter "*.txt"  )){
   $nom = [System.IO.Path]::GetFileName("$file")

 "$nom" + " " + (get-content -ErrorAction Stop $file.fullname | select -First 10) | add-content entete.txt 
     
  }
} 
catch {
  echo "Une Erreur c'est produite"
}
