--Supplierid and number of products offered
SELECT pv.BusinessEntityID AS SupplierID, COUNT(p.ProductID) AS NumberOfProductsOffered
FROM Purchasing.ProductVendor pv
JOIN Production.Product p ON pv.ProductID = p.ProductID
GROUP BY pv.BusinessEntityID;


























