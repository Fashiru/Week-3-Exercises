-- What is the product name(s) of the most expensive products?
--  HINT: Find the max price in a subquery and then use that value to find products whose price equals that value. 
SELECT ProductName FROM Products WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

-- What is the product name(s) and categories of the most expensive products? 
-- HINT: Find the max price in a subquery and then use that in your more complex query that joins products with categories.
SELECT Products.ProductName, Categories.CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Products.UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

-- What is the order id, shipping name and shipping address of all orders shipped via "Federal Shipping"? 
-- HINT: Find the shipper id of "Federal Shipping" in a subquery and then use that value to find the orders that used that shipper.
SELECT Orders.OrderID, Orders.ShipName, Orders.ShipAddress
FROM Orders
INNER JOIN Shippers  
ON Orders.ShipVia = Shippers.ShipperID
WHERE Shippers.CompanyName = (SELECT ShipperID FROM Shippers WHERE CompanyName = 'Federal Shipping');

-- What are the order ids of the orders that ordered "Sasquatch Ale"? HINT: Find the product id of "Sasquatch Ale" 
-- in a subquery and then use that value to find the matching orders from the 'order details' table. 
-- Because the 'order details' table has a space in its name, you will need to surround it with back ticks in the FROM clause. 
SELECT Orders.OrderID
FROM Orders
INNER JOIN `Order Details` ON Orders.OrderID = `Order Details`.OrderID
INNER JOIN Products ON `Order Details`.ProductID = Products.ProductID
WHERE Products.ProductName + 'Sasquatch Ale';

-- What is the name of the employee that sold order 10266?
SELECT Employees.LastName, Employees.FirstName
FROM Employees
INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.OrderID = 10266; 

-- What is the name of the customer that bought order 10266?
SELECT Customers.CustomerID, Customers.ContactName
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID = 10266;

