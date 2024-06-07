--Top ten customers based on their business
SELECT TOP 10 c.CustomerID, c.Name AS CustomerName, SUM(soh.TotalDue) AS TotalSales
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
GROUP BY c.CustomerID, c.Name
ORDER BY TotalSales DESC;




























