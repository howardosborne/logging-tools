param ([Parameter(Mandatory)]$logfile)
$delimiter = " "

$regex = "^[^#]"
$cleanedlog = "$($logfile)_cleaned.log"
write-host "$cleanedlog"
foreach($line in Get-Content $logfile) {
    if($line -match $regex){
        $timestampedline = $line -replace '([^\s]+)\s(.*$)', '${1}T${2}'
        Add-Content -Path $cleanedlog -Value $timestampedline
    }
    else{
    Write-Host "comment: $line"
    }
}