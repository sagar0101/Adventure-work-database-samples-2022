--list of all customers where company name ending in N
SELECT 
    c.CustomerID,
    s.Name AS Company_Name
FROM 
    Sales.Customer c
JOIN 
    Sales.Store s ON c.StoreID = s.BusinessEntityID
WHERE 
    s.Name LIKE '%N';

