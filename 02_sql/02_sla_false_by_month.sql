SELECT
  DATEFROMPARTS(
    YEAR([Дата звернення])
    ,MONTH([Дата звернення])
    ,1
  ) AS [Місяць]
  ,COUNT(*) AS [Порушень SLA]
FROM [ServiceDesk].[requests].[support_requests_sample]
WHERE [SLA] = 'порушено'
GROUP BY 
  YEAR([Дата звернення])
  ,MONTH([Дата звернення])
ORDER BY 1;
