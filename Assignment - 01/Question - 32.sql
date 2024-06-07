--List of product Names that were shipped to France
SELECT DISTINCT p.Name AS ProductName
FROM Production.Product p
JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
JOIN Sales.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
JOIN Person.Address a ON soh.ShipToAddressID = a.AddressID
JOIN Sales.SalesTerritory st ON a.CountryRegionCode = st.CountryRegionCode
WHERE st.CountryRegionCode = 'FR';
















