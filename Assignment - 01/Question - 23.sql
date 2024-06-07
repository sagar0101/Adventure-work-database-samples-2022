--List of discontinued products which were ordered between 1/1/1997 and 1/1/1998
SELECT p.ProductID, p.Name AS ProductName
FROM Production.Product p
JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
JOIN Sales.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE p.DiscontinuedDate IS NOT NULL
AND soh.OrderDate BETWEEN '1997-01-01' AND '1998-01-01';




