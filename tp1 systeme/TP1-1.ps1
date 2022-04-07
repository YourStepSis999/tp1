
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
