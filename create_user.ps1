$sql = "create user grafana"

Invoke-Sqlcmd -Query $sql -ServerInstance "DELLHNMMYB2\playground"
