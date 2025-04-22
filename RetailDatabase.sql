create database RetailDatabase;
go 
use RetailDatabase;
go

CREATE TABLE RetailSales (
    TransactionID INT PRIMARY KEY,
    ProductID INT,
    ProductName VARCHAR(100),
    CustomerID VARCHAR(10),
    SaleDate DATE,
    Region VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10, 2)
);

INSERT INTO RetailSales (TransactionID, ProductID, ProductName, CustomerID, SaleDate, Region, Quantity, Price) 
VALUES
(1, 501, 'Shoes',     'C101', '2023-05-01', 'Sydney',     2, 79.99),
(2, 502, 'Jacket',    'C102', '2023-05-03', 'Melbourne',  1, 149.99),
(3, 503, 'T-Shirt',   'C103', '2023-05-04', 'Brisbane',   3, 39.99),
(4, 504, 'Hat',       'C104', '2023-05-05', 'Perth',      1, 24.99),
(5, 505, 'Bag',       'C105', '2023-05-06', 'Adelaide',   2, 59.99),
(6, 501, 'Shoes',     'C106', '2023-05-07', 'Sydney',     1, 79.99),
(7, 502, 'Jacket',    'C107', '2023-05-08', 'Melbourne',  2, 149.99),
(8, 503, 'T-Shirt',   'C108', '2023-05-09', 'Brisbane',   4, 39.99),
(9, 504, 'Hat',       'C109', '2023-05-10', 'Perth',      1, 24.99),
(10,505, 'Bag',       'C110', '2023-05-11', 'Adelaide',   3, 59.99),
(11,501, 'Shoes',     'C111', '2023-05-12', 'Sydney',     2, 79.99),
(12,502, 'Jacket',    'C112', '2023-05-13', 'Melbourne',  1, 149.99),
(13,503, 'T-Shirt',   'C113', '2023-05-14', 'Brisbane',   5, 39.99),
(14,504, 'Hat',       'C114', '2023-05-15', 'Perth',      2, 24.99),
(15,505, 'Bag',       'C115', '2023-05-16', 'Adelaide',   1, 59.99),
(16,501, 'Shoes',     'C116', '2023-05-17', 'Sydney',     2, 79.99),
(17,502, 'Jacket',    'C117', '2023-05-18', 'Melbourne',  3, 149.99),
(18,503, 'T-Shirt',   'C118', '2023-05-19', 'Brisbane',   2, 39.99),
(19,504, 'Hat',       'C119', '2023-05-20', 'Perth',      1, 24.99),
(20,505, 'Bag',       'C120', '2023-05-21', 'Adelaide',   2, 59.99),
(21,501, 'Shoes',     'C121', '2023-05-22', 'Sydney',     1, 79.99),
(22,502, 'Jacket',    'C122', '2023-05-23', 'Melbourne',  2, 149.99),
(23,503, 'T-Shirt',   'C123', '2023-05-24', 'Brisbane',   3, 39.99),
(24,504, 'Hat',       'C124', '2023-05-25', 'Perth',      1, 24.99),
(25,505, 'Bag',       'C125', '2023-05-26', 'Adelaide',   2, 59.99),
(26,501, 'Shoes',     'C126', '2023-05-27', 'Sydney',     2, 79.99),
(27,502, 'Jacket',    'C127', '2023-05-28', 'Melbourne',  1, 149.99),
(28,503, 'T-Shirt',   'C128', '2023-05-29', 'Brisbane',   2, 39.99),
(29,504, 'Hat',       'C129', '2023-05-30', 'Perth',      1, 24.99),
(30,505, 'Bag',       'C130', '2023-06-01', 'Adelaide',   3, 59.99),
(31,501, 'Shoes',     'C131', '2023-06-02', 'Sydney',     2, 79.99),
(32,502, 'Jacket',    'C132', '2023-06-03', 'Melbourne',  1, 149.99),
(33,503, 'T-Shirt',   'C133', '2023-06-04', 'Brisbane',   2, 39.99),
(34,504, 'Hat',       'C134', '2023-06-05', 'Perth',      1, 24.99),
(35,505, 'Bag',       'C135', '2023-06-06', 'Adelaide',   2, 59.99),
(36,501, 'Shoes',     'C136', '2023-06-07', 'Sydney',     1, 79.99),
(37,502, 'Jacket',    'C137', '2023-06-08', 'Melbourne',  2, 149.99),
(38,503, 'T-Shirt',   'C138', '2023-06-09', 'Brisbane',   3, 39.99),
(39,504, 'Hat',       'C139', '2023-06-10', 'Perth',      1, 24.99),
(40,505, 'Bag',       'C140', '2023-06-11', 'Adelaide',   2, 59.99),
(41,501, 'Shoes',     'C141', '2023-06-12', 'Sydney',     2, 79.99),
(42,502, 'Jacket',    'C142', '2023-06-13', 'Melbourne',  1, 149.99),
(43,503, 'T-Shirt',   'C143', '2023-06-14', 'Brisbane',   2, 39.99),
(44,504, 'Hat',       'C144', '2023-06-15', 'Perth',      1, 24.99),
(45,505, 'Bag',       'C145', '2023-06-16', 'Adelaide',   3, 59.99),
(46,501, 'Shoes',     'C146', '2023-06-17', 'Sydney',     1, 79.99),
(47,502, 'Jacket',    'C147', '2023-06-18', 'Melbourne',  2, 149.99),
(48,503, 'T-Shirt',   'C148', '2023-06-19', 'Brisbane',   2, 39.99),
(49,504, 'Hat',       'C149', '2023-06-20', 'Perth',      1, 24.99),
(50,505, 'Bag',       'C150', '2023-06-21', 'Adelaide',   2, 59.99);

--------------Queries on the above records

---update command 
UPDATE RetailSales
SET Price = 80
WHERE ProductID = 501;

---alter command
alter Table RetailSales
alter column Price decimal(18,2);

 --- view command
create view Melbourne_Customers as
select * 
from RetailSales
where Region = 'Melbourne';


---Procedure
create procedure Shoes_Product
as 
  begin
      select * from RetailSales
	  where ProductName = 'Shoes'
  end

exec Shoes_Product;


---Query: View All Data
select * from RetailSales;

---Query:Top 5 Recent Sales
select Top 5 * 
from RetailSales
order by SaleDate;

---Query:Total Sales Revenue
select sum(Quantity * Price) as TotalRevenue
from RetailSales;

---Query:Total Quantity Sold by Product

select ProductName , sum(Quantity) as TotalQuantity
from RetailSales
group by ProductName;


---Query:Average Sale Value Per Region

select Region, avg(Quantity * Price) as AvgSales
from RetailSales
group by Region;

---Query:Monthly Sales

select FORMAT(SaleDate, 'yyyy-MM') as SaleMonth,
      sum(Quantity * Price) as MonthlyRevenue
from RetailSales
group by FORMAT(SaleDate, 'yyyy-MM')
order by SaleMonth;

---Query:Daily Sales Trend

select SaleDate, sum(Quantity * Price) as Revenue
from RetailSales
Group by SaleDate
order by SaleDate;


----- Customer Insights
---Query:Total Spent by Each Customer

select CustomerID, sum(Quantity * Price) as TotalSpent
from RetailSales
group by CustomerID
order by TotalSpent desc;

---Query:Most Frequent customers
select CustomerID, count(*) as Purchasecount
from RetailSales
group by CustomerID
order by Purchasecount desc;

------Query: When case
select *, 
       case
            when Price < 30 then 'Low_Price_Product'
			when Price >= 30 and Price <= 80 then 'Mid Price Product'
			else 'High Price Product'
	  end as [Product_Range]
from RetailSales
order by Price desc


---Query: Filter by Region

select * 
from RetailSales
where Region = 'Sydney';

----Query: Filter for High-Value Shoe Sales
select * from RetailSales
where ProductName = 'Shoes' 
      and Quantity >=2 
	  and Price > 70;


  


