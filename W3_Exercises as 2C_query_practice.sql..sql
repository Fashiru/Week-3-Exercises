--  List all products with their ID, name, and unit price in ascending order by price: 
SELECT ProductID, ProductName, UnitPrice 
From products 
order by UnitPrice ASC;

-- Find products with at least 100 units on hand, ordered by descending price	
SELECT ProductID, ProductName, UnitPrice 
From products 
WHERE UnitPrice >= 100
ORDER BY UnitPrice DESC;

-- What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price. 
-- If two or more have the same price, list those in ascending order by product name
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice >= 100
ORDER BY UnitPrice DESC, ProductName ASC;
-- Write a query against the orders table that displays the total number of distinct customers who have placed orders, by customer ID.
SELECT CustomerID, Count(DISTINCT CustomerID) 
AS TotalCustomers
 FROM Orders
 Group By CustomerID;
 
 
 -- Write a query against the orders table that displays the total number of distinct customers who have placed orders, by customer ID,
 -- for each country where orders have been shipped.
 SELECT ShipCountry, COUNT(DISTINCT CustomerID) 
 AS TotalCustomers 
 FROM Orders 
 Group By ShipCountry;
 
 -- What are the products that we carry where we have no units on hand, but 1 or more units of them are on backorder?
 -- Order them by product name.
 SELECT ProductID, ProductName 
 From Products 
 WHERE UnitsStock = 0 
 ORDER BY ProductName;

-- List the distinct job titles in employees.
SELECT DISTINCT Title FROM employees;

-- What employees have a salary that is between $2000 and $2500? Order them by job title.
SELECT EmployeeID, FirstName, LastName, Title
FROM employees
WHERE Salary BETWEEN 2000 AND 2500
ORDER BY Title;


