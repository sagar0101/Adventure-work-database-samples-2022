--For each order get the OrderID and Average quantity of items in that order
SELECT soh.SalesOrderID, AVG(sod.OrderQty) AS AvgQuantity
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY soh.SalesOrderID;







