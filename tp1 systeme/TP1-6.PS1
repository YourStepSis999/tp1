





$disks = get-wmiobject Win32_LogicalDisk  -Filter "DriveType = 3"

foreach ($disk in $disks) {$letter = $disk.deviceID
    $volumename = $disk.volumename
    $totalspace = [math]::round($disk.size / 1GB, 2)
    $freespace = [math]::round($disk.freespace / 1GB, 2)
    $usedspace = [math]::round(($disk.size - $disk.freespace) / 1GB, 2)
    $usedpercent = [math]::round(($usedspace * 100)/ $totalspace, 2)
   $disk | Select-Object  @{n = "Nom du disque"; e = { $letter } }, @{n = "Place total"; e = { ($totalspace).tostring() + " GB" } }, @{n = "Place Libre"; e = { ($freespace).tostring() + " GB" } }, @{n = "Place Utilise"; e = { ($usedspace).tostring() + " GB" } } , @{n = "Pourcentage"; e = { ($usedpercent).ToString() + "%"}}| ConvertTo-Html | Out-file Fichier.html
    }