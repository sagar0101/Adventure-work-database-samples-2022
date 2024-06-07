--7. list of all orders placed on or after 1996/12/31
SELECT soh.SalesOrderID, soh.OrderDate
FROM Sales.SalesOrderHeader soh
WHERE soh.OrderDate >= '1996-12-31';











