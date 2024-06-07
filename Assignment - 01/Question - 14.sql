-- For each order get the orderID, minimum quantity and maximum quantity for that order
SELECT soh.SalesOrderID, MIN(sod.OrderQty) AS MinQuantity, MAX(sod.OrderQty) AS MaxQuantity
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY soh.SalesOrderID;








