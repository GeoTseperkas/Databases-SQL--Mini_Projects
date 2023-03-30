SELECT
  n.name,
  COALESCE(t1.jobs, 0) AS Sales,
  COALESCE(t2.jobs, 0) AS Imports,
  COALESCE(t3.jobs, 0) AS Revenue_Analysis,
  COALESCE(t4.jobs, 0) AS Profit_Analysis,
  COALESCE(t1.jobs, 0) + COALESCE(t2.jobs, 0) + COALESCE(t3.jobs, 0) + COALESCE(t4.jobs, 0) AS Grand_Total
FROM
  (SELECT DISTINCT name FROM Sales
   UNION
   SELECT DISTINCT name FROM Imports
   UNION
   SELECT DISTINCT name FROM Revenue_Analysis
   UNION
   SELECT DISTINCT name FROM Profit_Analysis) n
LEFT JOIN
  (SELECT name, SUM(jobs) AS jobs FROM Sales 
  WHERE date BETWEEN TO_DATE('01/03/2023', 'DD/MM/YYYY') AND TO_DATE('31/03/2023', 'DD/MM/YYYY') GROUP BY name) t1
ON n.name = t1.name
LEFT JOIN
  (SELECT name, SUM(jobs) AS jobs FROM Imports 
  WHERE date BETWEEN TO_DATE('01/03/2023', 'DD/MM/YYYY') AND TO_DATE('31/03/2023', 'DD/MM/YYYY') GROUP BY name) t2
ON n.name = t2.name
LEFT JOIN
  (SELECT name, SUM(jobs) AS jobs FROM Revenue_Analysis 
  WHERE date BETWEEN TO_DATE('01/03/2023', 'DD/MM/YYYY') AND TO_DATE('31/03/2023', 'DD/MM/YYYY') GROUP BY name) t3
ON n.name = t3.name
LEFT JOIN
  (SELECT name, SUM(jobs) AS jobs FROM Profit_Analysis 
  WHERE date BETWEEN TO_DATE('01/03/2023', 'DD/MM/YYYY') AND TO_DATE('31/03/2023', 'DD/MM/YYYY') GROUP BY name) t4
ON n.name = t4.name
WHERE COALESCE(t1.jobs, 0) + COALESCE(t2.jobs, 0) + COALESCE(t3.jobs, 0) + COALESCE(t4.jobs, 0) > 0
ORDER BY n.name;
