--list of employee firstname, lastName, superviser FirstName, LastName
SELECT e.FirstName AS EmployeeFirstName, e.LastName AS EmployeeLastName, 
       s.FirstName AS SupervisorFirstName, s.LastName AS SupervisorLastName
FROM HumanResources.Employee e
JOIN HumanResources.Employee s ON e.EmployeeID = s.ManagerID;






