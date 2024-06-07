--list of all orders shipped to Canada.
SELECT soh.SalesOrderID
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesTerritory st ON soh.TerritoryID = st.TerritoryID
WHERE st.CountryRegionCode = 'CA';















