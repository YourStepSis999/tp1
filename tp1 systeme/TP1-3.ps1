# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

# le code permet d'avoir plus de détail (nom, id, taille en mémoire centrale, nombre de threads) sur un processus passé en ligne de commande.

$Processus = $args


try {
    if ($args[0].GetType() -eq [string]) {
        Get-Process -ErrorAction Stop -ProcessName $Processus | Select-Object Id, ProcessName, WS,  @{name = 'ThreadCount'; expression = { $_.Threads.Count } }
    }
    elseif ($args[0].GetType() -eq [int]){
        Get-Process -Id $Processus -ErrorAction Stop | Select-Object Id, ProcessName, WS, @{name = 'ThreadCount'; expression = { $_.Threads.Count } }
    } 
}
catch {
    echo "Une Erreur c'est produite"
}
    
