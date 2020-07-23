$sql = "
DROP TABLE IIS.dbo.IISLOG;
CREATE TABLE IIS.dbo.IISLOG (
[timestamp] [DATETIME] NULL,
[s-ip] [VARCHAR] (48) NULL,
[cs-method] [VARCHAR] (8) NULL,
[cs-uri-stem] [VARCHAR] (255) NULL,
[cs-uri-query] [VARCHAR] (2048) NULL,
[s-port] [VARCHAR] (4) NULL,
[s-username] [VARCHAR] (256) NULL,
[c-ip] [VARCHAR] (48) NULL,
[cs(User-Agent)] [VARCHAR] (1024) NULL,
[cs(Referer)] [VARCHAR] (4096) NULL,
[sc-STATUS] [INT] NULL,
[sc-substatus] [INT] NULL,
[sc-win32-STATUS] [BIGINT] NULL,
[time-taken] [INT] NULL,
INDEX cci CLUSTERED COLUMNSTORE
)"

Invoke-Sqlcmd -Query $sql -ServerInstance "DELLHNMMYB2\playground"
