$Processus = $args

if ($args[0].GetType() -eq [string]) {
    Get-Process -ProcessName $Processus | Select-Object Id, ProcessName, WS,  @{name = 'ThreadCount'; expression = { $_.Threads.Count } }
}
else {
    Get-Process -Id $Processus | Select-Object Id, ProcessName, WS, @{name = 'ThreadCount'; expression = { $_.Threads.Count } }
}