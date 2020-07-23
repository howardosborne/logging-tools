USE [IIS]
GO

/****** Object:  Table [dbo].[IISLOG]    Script Date: 22/07/2020 19:53:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IISLOG]') AND type in (N'U'))
DROP TABLE [dbo].[IISLOG]
GO

/****** Object:  Table [dbo].[IISLOG]    Script Date: 22/07/2020 19:53:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[IISLOG](
	[timestamp] [datetime] NULL,
	[s-ip] [varchar](48) NULL,
	[cs-method] [varchar](8) NULL,
	[cs-uri-stem] [varchar](255) NULL,
	[cs-uri-query] [varchar](2048) NULL,
	[s-port] [varchar](4) NULL,
	[s-username] [varchar](256) NULL,
	[c-ip] [varchar](48) NULL,
	[cs(User-Agent)] [varchar](1024) NULL,
	[cs(Referer)] [varchar](4096) NULL,
	[sc-STATUS] [int] NULL,
	[sc-substatus] [int] NULL,
	[sc-win32-STATUS] [bigint] NULL,
	[time-taken] [int] NULL
) ON [PRIMARY]
GO


