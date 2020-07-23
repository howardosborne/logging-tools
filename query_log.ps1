
$sql = "select datepart(hh,timestamp) 'timestamp', [cs-uri-stem] 'uri', [sc-status] 'status', count(*) 'count', avg([time-taken]) 'avg', max([time-taken]) 'max'
from IISLog
group by , [cs-uri-stem], [sc-status]
"
#cast(concat(yourDateColumnName, ' ', yourTimeColumnName) as datetime)

$ds = Invoke-Sqlcmd -Query $sql -ServerInstance "DELLHNMMYB2\playground"
#Write-Host $ds
foreach($row in $ds){
    write-host $row['day'], $row['hour'], $row['uri'], $row['status'], $row['count'], $row['avg'], $row['max']
}