write-host "hello world"
Invoke-Sqlcmd -Query "SELECT GETDATE() AS TimeOfQuery" -ServerInstance "DELLHNMMYB2\playground"
