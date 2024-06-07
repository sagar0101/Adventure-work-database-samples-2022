-- List of orders placed by customers who do not have a Fax number
SELECT soh.SalesOrderID, soh.OrderDate
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
WHERE c.Phone IS NULL OR c.Phone = '';













