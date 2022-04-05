$repertoire = $args
Get-ChildItem -Path $repertoire -Recurse | Sort-Object Length -Descending | Select-Object name,@{Name="Taille_en_KB";Expression={$_.Length / 1Kb}}  | Format-Table -AutoSize
