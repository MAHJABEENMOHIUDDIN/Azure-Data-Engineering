IF NOT EXISTS (
    SELECT name 
    FROM sys.databases 
    WHERE name = 'SalesOrdersDB'
)
BEGIN
    CREATE DATABASE SalesOrdersDB;
END


go
use SalesOrdersDB;
go

CREATE TABLE Customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, Country)
VALUES 
('CUST001', 'Alice Johnson', 'USA'),
('CUST002', 'Bob Smith', 'UK'),
('CUST003', 'Carlos Martinez', 'Spain'),
('CUST004', 'Diana Chen', 'Australia'),
('CUST005', 'Ethan Lee', 'Canada');

CREATE TABLE Orders (
    OrderID VARCHAR(10) PRIMARY KEY,
    CustomerID VARCHAR(10),
    OrderDate DATETIME,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount)
VALUES 
('ORD1001', 'CUST001', '2023-10-05T10:45:00', 150.00),
('ORD1002', 'CUST002', '2023-10-06T14:20:00', 200.00),
('ORD1003', 'CUST001', '2023-11-01T09:15:00', 175.00),
('ORD1004', 'CUST003', '2023-10-07T17:30:00', 0.00),
('ORD1005', 'CUST004', '2023-10-10T13:00:00', 320.00),
('ORD1006', 'CUST002', '2023-11-03T11:10:00', 250.00),
('ORD1007', 'CUST005', '2023-10-15T08:55:00', 90.00),
('ORD1008', 'CUST003', '2023-11-10T16:40:00', 300.00),
('ORD1009', 'CUST001', '2023-12-01T12:05:00', 125.00),
('ORD1010', 'CUST004', '2023-11-20T15:25:00', 0.00);



CREATE TABLE OrderDetails (
    DetailID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID VARCHAR(10),
    ProductName VARCHAR(100),
    Quantity INT,
    PricePerUnit DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderDetails (OrderID, ProductName, Quantity, PricePerUnit)
VALUES
('ORD1001', 'Keyboard', 1, 150.00),
('ORD1002', 'Mouse', 2, 100.00),
('ORD1003', 'Monitor', 1, 175.00),
('ORD1005', 'Laptop', 1, 320.00),
('ORD1006', 'Webcam', 2, 125.00),
('ORD1007', 'Charger', 3, 30.00),
('ORD1008', 'Tablet', 1, 300.00),
('ORD1009', 'Speaker', 1, 125.00),
('ORD1010', 'Hard Drive', 2, 0.00),
('ORD1004', 'USB Drive', 1, 0.00);


SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Customers';

