
$repertoire = $args




foreach($file in (get-childitem $repertoire -File -Filter "*.txt" )){
   $nom = [System.IO.Path]::GetFileName("$file")

 "$nom" + " " + (get-content $file.fullname | select -First 10) | add-content entete.txt
     
}