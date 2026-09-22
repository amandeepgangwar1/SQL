-- Create a new database
CREATE DATABASE assignment_9;

-- Select the database
USE assignment_9;

------------------------------------------------------
-- Create Customers table
------------------------------------------------------
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,      -- Unique ID for each customer
    CustomerName VARCHAR(100)        -- Customer name
);

-- Insert sample records into Customers table
INSERT INTO Customers (CustomerID, CustomerName) 
VALUES 
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Sam Brown');

-- Show all customers
SELECT * FROM Customers;

------------------------------------------------------
-- Create Orders table with foreign key referencing Customers
------------------------------------------------------
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,         -- Unique order ID
    CustomerID INT,                  -- Links to Customers table
    Product VARCHAR(100),            -- Product name
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert sample order records
INSERT INTO Orders (OrderID, CustomerID, Product)
VALUES 
(101, 1, 'Laptop'),
(102, 2, 'Tablet'),
(103, 3, 'Phone');

------------------------------------------------------
-- Show Orders table
------------------------------------------------------
SELECT * FROM Orders;

------------------------------------------------------
-- Display Customers table again
------------------------------------------------------
SELECT * FROM Customers;

------------------------------------------------------
-- INNER JOIN: Show customers who placed orders
------------------------------------------------------
SELECT Customers.CustomerName, Orders.Product
FROM Customers
INNER JOIN Orders 
    ON Customers.CustomerID = Orders.CustomerID;

------------------------------------------------------
-- UNION: CustomerID from both tables (removes duplicates)
------------------------------------------------------
SELECT CustomerID FROM Customers
UNION
SELECT CustomerID FROM Orders;

------------------------------------------------------
-- Subquery: Find customer name who ordered a Laptop
------------------------------------------------------
SELECT CustomerName
FROM Customers
WHERE CustomerID = (
    SELECT CustomerID FROM Orders WHERE Product = 'Laptop'
);

------------------------------------------------------
-- LEFT JOIN + GROUP BY: Count orders for each customer
------------------------------------------------------
SELECT Customers.CustomerName, COUNT(Orders.OrderID) AS OrderCount
FROM Customers
LEFT JOIN Orders 
    ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName;
