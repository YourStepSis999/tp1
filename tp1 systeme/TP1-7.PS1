
$list = Get-ChildItem -ErrorAction Stop $args -File -Recurse

try {
    foreach ($file in $list){
        $nom = [System.IO.Path]::GetFileName("$file")
        Get-ChildItem -ErrorAction Stop $file -Depth 2 -file -filter "$nom" | add-content cd
    }  
}
catch {
    echo "Une Erreur c'est produite"
}
