--Product name and total revenue from that product
SELECT p.Name AS ProductName, SUM(sod.LineTotal) AS TotalRevenue
FROM Production.Product p
JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
GROUP BY p.Name
ORDER BY TotalRevenue DESC;

























