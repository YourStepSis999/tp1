$startDate = Read-host -Prompt "Choissisez une date de début"
$lastDate = Read-host -Prompt "Choissisez une date de fin "

Get-WinEvent -FilterHashtable @{logname='Application';StartTime=[Datetime]::ParseExact($startDate, 'MM/dd/yyyy', $null);EndTime=[Datetime]::ParseExact($lastDate, 'MM/dd/yyyy', $null)}

