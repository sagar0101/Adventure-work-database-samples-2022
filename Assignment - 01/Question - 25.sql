--List of managers who have more than four people reporting to them.
SELECT m.BusinessEntityID AS ManagerID, m.FirstName, m.LastName, COUNT(e.BusinessEntityID) AS NumberOfDirectReports
FROM HumanResources.Employee m
JOIN HumanResources.Employee e ON m.BusinessEntityID = e.ManagerID
GROUP BY m.BusinessEntityID, m.FirstName, m.LastName
HAVING COUNT(e.BusinessEntityID) > 4;











