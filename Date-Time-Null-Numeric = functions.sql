
create database functions_3 ;
use  functions_3

---------------------------------------------------------------------

CREATE TABLE Sales (
    Sale_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Product_Name VARCHAR(50),
    Category VARCHAR(30),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Discount DECIMAL(10,2),
    Profit DECIMAL(10,2),
    Sales_Date DATE,
    Delivery_Date DATE,
    Return_Date DATE,
    Rating DECIMAL(3,1),
    City VARCHAR(30),
    Salesperson VARCHAR(50));

INSERT INTO Sales
(Sale_ID, Customer_Name, Product_Name, Category, Quantity, Unit_Price, Discount, Profit,
 Sales_Date, Delivery_Date, Return_Date, Rating, City, Salesperson)
VALUES

(1, 'Aarav Shah', 'Laptop', 'Electronics', 2, 55000.75, 2500.50, 8500.25,
 '2025-01-05', '2025-01-09', NULL, 4.5, 'Ahmedabad', 'Rahul'),

(2, 'Priya Patel', 'Mobile', 'Electronics', 3, 25000.49, 1500.00, 4200.75,
 '2025-01-12', '2025-01-15', NULL, 4.2, 'Surat', 'Neha'),

(3, 'Rohan Mehta', 'Headphones', 'Accessories', 5, 1499.99, 100.50, -250.75,
 '2025-02-03', '2025-02-07', '2025-02-15', 3.5, 'Vadodara', 'Amit'),

(4, 'Neha Joshi', 'Keyboard', 'Accessories', 4, 899.49, NULL, 350.25,
 '2025-02-18', '2025-02-21', NULL, NULL, 'Ahmedabad', 'Rahul'),

(5, 'Karan Patel', 'Mouse', 'Accessories', 10, 499.95, 50.25, 1250.50,
 '2025-03-02', '2025-03-05', NULL, 4.8, 'Rajkot', 'Priya'),

(6, 'Meera Shah', 'Monitor', 'Electronics', 1, 18500.75, 750.25, 2100.80,
 '2025-03-15', '2025-03-19', NULL, 4.0, 'Surat', 'Amit'),

(7, 'Dev Patel', 'Printer', 'Electronics', 2, 12500.60, NULL, -500.40,
 '2025-04-01', '2025-04-06', '2025-04-15', 2.8, 'Ahmedabad', NULL),

(8, 'Isha Mehta', 'Desk', 'Furniture', 1, 7500.35, 300.15, 950.45,
 '2025-04-20', '2025-04-24', NULL, NULL, 'Gandhinagar', 'Neha'),

(9, 'Vivek Shah', 'Chair', 'Furniture', 3, 3250.80, 125.75, 725.60,
 '2025-05-05', '2025-05-09', NULL, 4.1, 'Rajkot', 'Rahul'),

(10, 'Anjali Patel', 'Table', 'Furniture', 2, 6500.25, 500.50, -150.25,
 '2025-05-18', '2025-05-23', '2025-06-02', 3.2, 'Surat', 'Priya'),

(11, 'Harsh Shah', 'Tablet', 'Electronics', 2, 32000.99, 2000.75, 5500.35,
 '2025-06-01', '2025-06-05', NULL, 4.7, 'Vadodara', 'Amit'),

(12, 'Pooja Mehta', 'Smartwatch', 'Electronics', 4, 8500.49, NULL, 1800.20,
 '2025-06-15', '2025-06-18', NULL, NULL, 'Ahmedabad', 'Neha'),

(13, 'Yash Patel', 'Camera', 'Electronics', 1, 45000.95, 3500.50, 7200.75,
 '2025-07-03', '2025-07-08', NULL, 4.9, 'Gandhinagar', 'Rahul'),

(14, 'Riya Shah', 'Bag', 'Fashion', 5, 1299.99, 75.25, 450.50,
 '2025-07-20', '2025-07-24', NULL, 3.9, 'Rajkot', NULL),

(15, 'Manav Patel', 'Shoes', 'Fashion', 2, 2999.85, 250.75, -300.25,
 '2025-08-05', '2025-08-10', '2025-08-20', 2.5, 'Surat', 'Priya'),

(16, 'Kavya Shah', 'Watch', 'Fashion', 1, 5500.65, NULL, 850.35,
 '2025-08-18', '2025-08-22', NULL, 4.3, 'Ahmedabad', 'Amit'),

(17, 'Dhruv Mehta', 'Sofa', 'Furniture', 1, 35000.90, 2500.45, 6200.70,
 '2025-09-01', '2025-09-07', NULL, 4.6, 'Vadodara', 'Neha'),

(18, 'Simran Patel', 'Bed', 'Furniture', 1, 42000.75, NULL, 7500.25,
 '2025-09-15', '2025-09-21', NULL, NULL, 'Gandhinagar', 'Rahul'),

(19, 'Nikhil Shah', 'Earbuds', 'Accessories', 6, 1999.95, 150.50, 950.75,
 '2025-10-02', '2025-10-06', NULL, 4.4, 'Rajkot', 'Priya'),

(20, 'Ayesha Mehta', 'Power Bank', 'Accessories', 8, 1299.49, 100.25, -100.50,
 '2025-10-18', '2025-10-22', '2025-10-30', 3.0, 'Ahmedabad', NULL),

(21, 'Jay Patel', 'Laptop', 'Electronics', 1, 62500.85, 3000.75, 9200.40,
 '2025-11-05', '2025-11-10', NULL, 4.8, 'Surat', 'Amit'),

(22, 'Tanvi Shah', 'Mobile', 'Electronics', 2, 28500.65, NULL, 4800.25,
 '2025-11-20', '2025-11-24', NULL, 4.5, 'Vadodara', 'Neha'),

(23, 'Akash Mehta', 'Keyboard', 'Accessories', 3, 999.95, 75.50, 225.75,
 '2025-12-01', '2025-12-05', NULL, NULL, 'Gandhinagar', 'Rahul'),

(24, 'Mansi Patel', 'Chair', 'Furniture', 4, 2750.45, 125.25, 500.60,
 '2025-12-15', '2025-12-19', NULL, 4.0, 'Rajkot', 'Priya'),

(25, 'Sahil Shah', 'Printer', 'Electronics', 1, 14500.75, NULL, -750.35,
 '2025-12-25', '2025-12-30', '2026-01-08', 2.9, 'Ahmedabad', NULL);

------------------------------------------------------------------------------
ALTER TABLE Sales
ADD Phone_Number VARCHAR(10) ;
----------------------------------------
UPDATE Sales
SET Phone_Number =
    CASE Sale_ID
        WHEN 1 THEN '9876543210'
        WHEN 2 THEN '9876543211'
        WHEN 4 THEN '9876543213'
        WHEN 5 THEN '9876543214'
        WHEN 6 THEN '9876543215'
        WHEN 7 THEN '9876543216'
        WHEN 9 THEN '9876543218'
        WHEN 10 THEN '9876543219'
        WHEN 11 THEN '9876543220'
        WHEN 12 THEN '9876543221'
        WHEN 14 THEN '9876543223'
        WHEN 15 THEN '9876543224'
        WHEN 16 THEN '9876543225'
        WHEN 17 THEN '9876543226'
        WHEN 18 THEN '9876543227'
        WHEN 19 THEN '9876543228'
        WHEN 20 THEN '9876543229'
        WHEN 21 THEN '9876543230'
        WHEN 23 THEN '9876543232'
        WHEN 24 THEN '9876543233'
        WHEN 25 THEN '9876543234'
    END;

----------------------------------------------------------------------------------------------
SELECT * FROM Sales;
-----------------------------------------------------------------------------------------------
--1 .Display the absolute value of the profit column.
select Profit, 
ABS(Profit) from Sales ;

--2 .Display product prices rounded to 2 decimal places.
select Product_Name,
ROUND(Unit_Price,2) AS Product_Price
from Sales 
group by Product_Name,ROUND(Unit_Price,2);

--3 .Display the ceiling value of every product price.
select Product_Name,
CEILING (Unit_Price) AS Ceiling_Price
from Sales 
group by Product_Name,CEILING(Unit_Price);

--4 .Display the floor value of every product price.
select Product_Name,
Floor (Unit_Price) AS Ceiling_Price
from Sales 
group by Product_Name,Floor(Unit_Price);

--5 .Calculate the square of every quantity.
select Quantity, 
SQUARE(Quantity) AS Quantity_Square
from Sales;

--6 .Calculate the square root of a numeric column.
select Quantity, 
SQRT(Quantity) AS Square_Root
from Sales;

--7 .Calculate a total order value quantity × price and round the result to 2 decimal places.
select ROUND(SUM(Quantity * Unit_Price),2) AS Total_order_value
from Sales ;

--8 .Display whether each transaction has a positive, negative, or zero profit using SIGN().
select Profit, SIGN(Profit) AS Profit_Sign
from Sales;

--9 .Generate a random number between 1 and 100.
select round(RAND() * 100,2)  + 1 AS Random_Number;

--10 .Calculate the area of a circle with radius stored in a column.
select Unit_Price,
PI() * SQUARE(Unit_Price) AS Circle_Area
from Sales;

--11 .Display the current date and time.
select GETDATE() ;

--12 .Display today's date without the time portion.
select CAST(GETDATE() AS DATE) ;

--13 .Display the year from every order date.
select Sales_Date,
YEAR(Sales_Date) AS Year_order_date
from Sales;

--14 .Display the month number from every order date.
select Sales_Date,
Month (Sales_Date) AS month_Number
from Sales;

--15 .Display the name of the month from every order date.
select Sales_Date,
datename(month,Sales_Date) AS month_Name
from Sales;

--16 .Display the weekday name for every order.
select Sales_Date,
datename(WEEKDAY,Sales_Date) AS month_Name
from Sales;

--17 .Calculate the number of days between order date and delivery date.
select Sales_date,Delivery_date,
DATEDIFF(day,Sales_date,Delivery_date) AS Day_diffrance
from Sales ;

--18 .Calculate an expected delivery date by adding 7 days to the order date.
select Sales_Date,
DATEADD(day,7,Delivery_date) AS After_7days_diff
from Sales ;

--19 .Display the last day of the month for every order date.
select Sales_date,
Eomonth(Sales_date) AS last_day
from Sales ;

--20 .Display orders placed in each year and month.
select Sales_Date,
YEAR(Sales_Date) AS Order_Year,
MONTH(Sales_Date) AS Order_Month,
COUNT(*) AS Total_Orders
from Sales
group by Sales_Date,YEAR(Sales_Date),MONTH(Sales_Date) ;

--21 .Find all customers whose phone number is NULL. 
select * from sales 
where Phone_Number is Null ;

--22 .Find all customers whose phone number is NOT NULL.
select * from sales 
where Phone_Number is not Null ;

--23 .Display Not Available instead of NULL phone numbers.
select *,
isnull(Phone_Number,'Not_Find')
from Sales 

--24 .Display 0 instead of NULL discount values.
select Isnull (Discount, 0) AS Discount
from Sales ;

--25 .For every customer, return the first available value among [mobile,office_phone,home_phone] 
-- If all are NULL, display [No Contact].
select Customer_Name,
coalesce(mobile,office_phone,home_phone,'No Contact') AS Contact_Number
from Sales ;

--26 .Find the number of rows in a table using COUNT(*).
select count(*) from Sales ;

--27 .Find the number of non-NULL values in a specific column.
select count(Phone_Number)  AS Non_Null_Values
from Sales ;

--28 .Calculate a percentage without causing a divide-by-zero error -Use NULLIF().
select (Quantity * 100.0) / nullif(Quantity,0) AS Percent_age
from Sales ;

--29 .Calculate an average while handling NULL values.
select Unit_Price,
AVG(isnull(Unit_Price,0)) AS AVg_Sale
from Sales
group by Unit_Price;

--30 .Find orders where the delivery date is NULL and calculate how many days have passed since the order date.
select 
DATEDIFF(day,Sales_Date,Delivery_Date) AS Day_Diff
from Sales
where Delivery_Date is null ;

--31
select Sale_ID,Sales_Date,Delivery_Date,
DATEDIFF(DAY,Sales_Date,ISNULL(Delivery_Date,getdate())) AS Delivery_days
from Sales ;

--32
select Sale_ID,Sales_Date,
YEAR(Sales_Date) AS order_year,
MONTH(Sales_Date)AS order_month,
DATENAME(MONTH,Sales_Date)AS month_name,
SUM(Quantity * Unit_Price) AS Total_Sale
from Sales
group by Sale_ID,Sales_Date,
YEAR(Sales_Date) ,
MONTH(Sales_Date),
DATENAME(MONTH,Sales_Date) ;

--33 .
select Customer_Name,
COALESCE(Phone_Number,'No Contact')AS ContactNumber
from Sales;

--34 .
select * from sales Product_Name,
sum(Quantity * Unit_Price) AS Sale,
sum(Profit) AS Profit,
ROUND(SUM(Profit) * 100.0 /NULLIF(SUM(Quantity * Unit_Price), 0),2) AS Profit_Percentage
FROM Sales
GROUP BY Product_Name;

--35 .
select Sale_ID,Quantity,Unit_price,
ISNULL(Discount,0)AS Discount,
round(sum(Quantity*Unit_price),2)AS Total_Value
from Sales 
group by Sale_ID,Quantity,Unit_price,ISNULL(Discount,0);

--36 .
select Sale_ID,Sales_Date,
DATENAME(month,Sales_Date) AS Month_name,
EOMONTH(Sales_Date) AS Month_end_date
from Sales ;
