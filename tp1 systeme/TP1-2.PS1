# Auteur : Charles-Olivier Lefebvre
# DA : 2130875
# Session : H2022
# Date de création : 2022-04-01

$startDate = Read-host -Prompt "Choissisez une date de début"
$lastDate = Read-host -Prompt "Choissisez une date de fin "

try {
  $appplication = Get-WinEvent -ErrorAction Stop -FilterHashtable @{logname='Application';StartTime=[Datetime]::ParseExact($startDate, 'MM/dd/yyyy', $null);EndTime=[Datetime]::ParseExact($lastDate, 'MM/dd/yyyy', $null)} | ConvertTo-Csv -NoTypeInformation

  Add-Content sortie.csv $appplication
}
catch {
    echo "Une Erreur c'est produite"
}
    


