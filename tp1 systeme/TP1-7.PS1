
$list = Get-ChildItem D:\2SteamLibrary -File -Recurse

foreach ($file in $list){
    $nom = [System.IO.Path]::GetFileName("$file")
    Get-ChildItem "D:\2SteamLibrary" -Depth 2 -file -filter "$nom" | add-content cd
