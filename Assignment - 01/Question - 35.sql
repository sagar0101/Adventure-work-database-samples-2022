-- List of products where units in stock is less than 10 and units on order are 0.
SELECT ProductID, Name AS ProductName, Quantity AS UnitsInStock, UnitsOnOrder
FROM Production.Product
WHERE Quantity < 10 AND UnitsOnOrder = 0;





















