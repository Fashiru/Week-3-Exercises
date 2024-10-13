-- 1. List product ID, name, unit price, and category name, ordered by category and product name
Select Products.ProductID, Products.Productname, Products.UnitPrice, Categories.CategoryName
From Products
Inner Join Categories 
ON Products.CategoryID = Categories.CategoryID
Order By Categories.CategoryName, Products.ProductName;


-- List the product id, product name, unit price and supplier name of all products that cost more than $75. Order by product name.
SELECT Products.ProductID, Products.ProductName, Products.UnitPrice, Suppliers.SupplierID
FROM Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Products.UnitPrice > 75
ORDER BY Products.ProductName;

-- List the product id, product name, unit price, category name, and supplier name of every product. Order by product name.
SELECT Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName, Suppliers.CompanyName
From Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
ORDER BY Products.ProductName;

-- List the order id, ship name, ship address, and shipping company name of every order that shipped to Germany.
SELECT Orders.OrderID, Orders.ShipName, Orders.ShipAddress, Shippers.CompanyName
FROM Orders
INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID
WHERE Orders.ShipCountry = 'Germany';

-- List the order id, order date, ship name, ship address of all orders that ordered "Sasquatch Ale"
SELECT Orders.OrderID, Orders.ShippedDate, Orders.ShipName, Orders.ShipAddress
FROM Orders
INNER JOIN `order details` ON Orders.OrderID = `order details`.OrderID
INNER JOIN Products ON `order details`.ProductID = Products.ProductID
WHERE Products.ProductName = 'Sasquatch Ale'; 