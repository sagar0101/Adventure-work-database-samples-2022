--list of all orders with order total > 200
SELECT soh.SalesOrderID, SUM(sod.UnitPrice * sod.OrderQty) AS OrderTotal
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY soh.SalesOrderID
HAVING SUM(sod.UnitPrice * sod.OrderQty) > 200;
















