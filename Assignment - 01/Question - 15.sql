-- Get a list of all managers and total number of employees who report to them.
SELECT e.ManagerID,m.FirstName + ' ' + m.LastName AS ManagerName,
COUNT(e.BusinessEntityID) AS TotalEmployees
FROM HumanResources.Employee e
JOIN Person.Person m ON e.ManagerID = m.BusinessEntityID
GROUP BY e.ManagerID, m.FirstName, m.LastName;








