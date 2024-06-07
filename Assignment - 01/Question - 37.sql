-- Number of orders each employee has taken for customers with CustomerlDs between A and AO
SELECT e.BusinessEntityID AS EmployeeID, e.FirstName, e.LastName, COUNT(soh.SalesOrderID) AS NumberOfOrders
FROM HumanResources.Employee e
JOIN Sales.SalesPerson sp ON e.BusinessEntityID = sp.BusinessEntityID
JOIN Sales.SalesOrderHeader soh ON sp.BusinessEntityID = soh.SalesPersonID
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
WHERE c.CustomerID BETWEEN 'A' AND 'AO'
GROUP BY e.BusinessEntityID, e.FirstName, e.LastName;























