-- List of products that were never ordered
SELECT p.ProductID, p.Name AS ProductName
FROM Production.Product p
LEFT JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
WHERE sod.ProductID IS NULL;


















