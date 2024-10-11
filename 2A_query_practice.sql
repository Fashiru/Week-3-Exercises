USE northwind;
-- Write a query to list the product id, product name, and unit price of every product that Northwind sells. 
SELECT ProductID, ProductName, UnitPrice 
FROM products;

-- What are the products that we carry where the unit price is $7.50 or less? 
SELECT ProductID, ProductName, UnitPrice 
FROM products 
WHERE UnitPrice <='7.50';

-- What are the products that we carry where we have no units on hand, but 1 or more units are on backorder? 
SELECT ProductID, ProductName 
FROM products 
WHERE UnitPrice = 0 
AND UnitsOnOrder;

-- Examine the products table. How does it identify the type (category) of each item sold? Write a query to list all the seafood items we carry.
SELECT Products.ProductID, Products.ProductName 
FROM products
INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName ='Seafood';

-- What employees have "manager" in their titles? 
SELECT EmployeeID, LastName, FirstName 
FROM Employees 
WHERE Title 
LIKE '%manager%';

-- Examine the products table. How do you know what supplier supplies each product? Write a query to list all of the items that "Tokyo Traders" supplies to Northwind.
SELECT Products.ProductID, Products.ProductName 
FROM products
INNER JOIN Suppliers 
ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.CompanyName = 'Tokyo Traders';