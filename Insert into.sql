USE [IIS]
GO

INSERT INTO [dbo].[IISLOG]
           ([timestamp]
           ,[s-ip]
           ,[cs-method]
           ,[cs-uri-stem]
           ,[cs-uri-query]
           ,[s-port]
           ,[s-username]
           ,[c-ip]
           ,[cs(User-Agent)]
           ,[cs(Referer)]
           ,[sc-STATUS]
           ,[sc-substatus]
           ,[sc-win32-STATUS]
           ,[time-taken])
     VALUES
           (<timestamp, datetime,>
           ,<s-ip, varchar(48),>
           ,<cs-method, varchar(8),>
           ,<cs-uri-stem, varchar(255),>
           ,<cs-uri-query, varchar(2048),>
           ,<s-port, varchar(4),>
           ,<s-username, varchar(256),>
           ,<c-ip, varchar(48),>
           ,<cs(User-Agent), varchar(1024),>
           ,<cs(Referer), varchar(4096),>
           ,<sc-STATUS, int,>
           ,<sc-substatus, int,>
           ,<sc-win32-STATUS, bigint,>
           ,<time-taken, int,>)
GO


