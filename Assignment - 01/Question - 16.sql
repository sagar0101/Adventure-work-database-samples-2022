--Get the OrderID and the total quantity for each order that has a total quantity of greater than 300
SELECT soh.SalesOrderID AS OrderID, SUM(sod.OrderQty) AS TotalQuantity
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY soh.SalesOrderID
HAVING SUM(sod.OrderQty) > 300;










