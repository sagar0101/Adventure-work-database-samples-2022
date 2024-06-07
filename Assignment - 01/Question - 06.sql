--list of all products where product name starts with an A
SELECT ProductID, Name, ProductNumber, Color, StandardCost, ListPrice
FROM Production.Product
WHERE Name LIKE 'A%';




