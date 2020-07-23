param ([Parameter(Mandatory)]$logfile)
$sql = "BULK INSERT IIS.dbo.IISLog
FROM '$($logfile)'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ' ',
ROWTERMINATOR = '\n'
)"

Invoke-Sqlcmd -Query $sql -ServerInstance "DELLHNMMYB2\playground"
