--List of top 10 countries by sales
SELECT TOP 10 st.CountryRegionCode AS CountryCode, SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader soh
JOIN Person.Address a ON soh.ShipToAddressID = a.AddressID
JOIN Sales.SalesTerritory st ON a.CountryRegionCode = st.CountryRegionCode
GROUP BY st.CountryRegionCode
ORDER BY SUM(soh.TotalDue) DESC;






















