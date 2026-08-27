SELECT 
  [Тип звернення]
  ,ROUND(AVG(CAST([Час виконання (год)] AS DECIMAL(10,2))),2) AS [Середній час виконання (год)]
FROM [ServiceDesk].[requests].[support_requests_sample]
GROUP BY [Тип звернення]
ORDER BY 2 DESC;
