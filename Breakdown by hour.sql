/****** Script for SelectTopNRows command from SSMS  ******/
SELECT dateadd(hour, datediff(hour, 0, timestamp), 0) hour, [cs-uri-stem], count(1) count, avg([time-taken]) avg, MAX([time-taken]) max, sum([time-taken]) total
  FROM [IIS].[dbo].[IISLOG]
  group by dateadd(hour, datediff(hour, 0, timestamp), 0), [cs-uri-stem]
  order by hour, [cs-uri-stem]

/*errors*/
SELECT dateadd(hour, datediff(hour, 0, timestamp), 0) hour, [sc-STATUS], [cs-uri-stem], count(1) count, avg([time-taken]) avg, MAX([time-taken]) max, sum([time-taken]) total
  FROM [IIS].[dbo].[IISLOG]
  where [sc-STATUS] > 400
  group by dateadd(hour, datediff(hour, 0, timestamp), 0), [sc-STATUS], [cs-uri-stem]
  order by hour, [cs-uri-stem]

/*breakdown by status code*/
SELECT dateadd(hour, datediff(hour, 0, timestamp), 0) hour, [sc-STATUS], count(1) count, sum([time-taken]) total
  FROM [IIS].[dbo].[IISLOG]
  group by dateadd(hour, datediff(hour, 0, timestamp), 0), [sc-STATUS]
  order by hour, [sc-STATUS]