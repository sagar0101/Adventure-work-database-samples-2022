-- Orderdate of most expensive order
SELECT TOP 1 OrderDate
FROM Sales.SalesOrderHeader
ORDER BY TotalDue DESC;
























