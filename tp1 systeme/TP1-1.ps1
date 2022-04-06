
$repertoire = $args


try{
foreach($file in (get-childitem $repertoire -File -Filter "*.txt" -ErrorAction Stop )){
   $nom = [System.IO.Path]::GetFileName("$file")

 "$nom" + " " + (get-content $file.fullname | select -First 10) | add-content entete.txt -ErrorAction Stop
     
  }
} 
catch {
  echo "Une Erreur c'est produite"
}
