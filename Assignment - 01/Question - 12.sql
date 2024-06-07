--Find the details of most expensive order date
SELECT TOP 1 soh.SalesOrderID, soh.OrderDate, soh.TotalDue
FROM Sales.SalesOrderHeader soh
ORDER BY soh.TotalDue DESC;






