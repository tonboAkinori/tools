$check_sum = 0

$readline = Get-Content $Args[0]


foreach($d in $readline){
    
    Write-Host $d.Substring(0,2)
    Write-Host $d.Substring(2,2)
    Write-Host $d.Substring(4,2)
    Write-Host $d.Substring(6,2)

    $byte1 = [Convert]::ToUint32($d.Substring(0,2),16)
    $byte2 = [Convert]::ToUint32($d.Substring(2,2),16)
    $byte3 = [Convert]::ToUint32($d.Substring(4,2),16)
    $byte4  = [Convert]::ToUint32($d.Substring(6,2),16)

    $sum = $byte1 + $byte2 + $byte3 + $byte4
    $check_sum += ($sum -band 0xFF)

    Write-Host $sum $check_sum.ToString("X2")
}
 