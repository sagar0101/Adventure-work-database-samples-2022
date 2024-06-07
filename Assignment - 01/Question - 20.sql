--List of countries and sales made in each country
SELECT st.CountryRegionCode AS Country, SUM(sod.UnitPrice * sod.OrderQty) AS TotalSales
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Sales.SalesTerritory st ON soh.TerritoryID = st.TerritoryID
GROUP BY st.CountryRegionCode;

















