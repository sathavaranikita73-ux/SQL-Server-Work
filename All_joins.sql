

create database All_joins ;
use All_joins ;
-------------------------------------------------------------

----------customer table ---------------------------
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50));

INSERT INTO Customers (customer_id, customer_name, city)
VALUES
(101, 'Aarav Shah', 'Ahmedabad'),
(102, 'Riya Patel', 'Mumbai'),
(103, 'Rahul Mehta', 'Delhi'),
(104, 'Priya Sharma', 'Ahmedabad'),
(105, 'Karan Desai', 'Pune'),
(106, 'Neha Joshi', 'Mumbai'),
(107, 'Arjun Patel', 'Bangalore'),
(108, 'Sneha Shah', 'Delhi'),
(109, 'Vivek Mehta', 'Ahmedabad'),
(110, 'Anjali Desai', 'Surat'),
(111, 'Rohan Shah', 'Pune'),
(112, 'Meera Patel', 'Mumbai'),
(113, 'Dhruv Shah', 'Ahmedabad'),
(114, 'Kavya Mehta', 'Delhi'),
(115, 'Yash Desai', 'Bangalore'),
(116, 'Ishita Patel', 'Surat'),
(117, 'Manav Shah', 'Pune'),
(118, 'Pooja Joshi', 'Mumbai'),
(119, 'Nikhil Mehta', 'Ahmedabad'),
(120, 'Tanya Shah', 'Delhi');

-----------------------Orders table-----------------------
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    quantity INT,
    amount DECIMAL(10,2));

INSERT INTO Orders 
(order_id, customer_id, product_name, quantity, amount)
VALUES
(1001, 101, 'Laptop', 2, 55000),
(1002, 101, 'Mouse', 5, 800),
(1003, 101, 'Keyboard', 3, 1500),
(1004, 102, 'Laptop', 1, 62000),
(1005, 102, 'Monitor', 2, 18000),
(1006, 103, 'Mobile Phone', 2, 35000),
(1007, 103, 'Headphones', 4, 4500),
(1008, 104, 'Laptop', 1, 58000),
(1009, 104, 'Printer', 2, 12500),
(1010, 104, 'Keyboard', 5, 1400),
(1011, 105, 'Office Chair', 4, 8500),
(1012, 105, 'Monitor', 3, 17000),
(1013, 106, 'Mobile Phone', 3, 32000),
(1014, 106, 'Headphones', 5, 4200),
(1015, 107, 'Laptop', 2, 60000),
(1016, 107, 'Mouse', 10, 750),
(1017, 108, 'Monitor', 4, 16000),
(1018, 108, 'Keyboard', 6, 1300),
(1019, 109, 'Laptop', 2, 57000),
(1020, 109, 'Printer', 3, 13500),
(1021, 109, 'Mouse', 8, 700),
(1022, 110, 'Mobile Phone', 2, 36000),
(1023, 110, 'Headphones', 3, 4800),
(1024, 111, 'Laptop', 1, 65000),
(1025, 111, 'Monitor', 2, 19000),
(1026, 112, 'Printer', 4, 12000),
(1027, 112, 'Keyboard', 7, 1200),
(1028, 113, 'Laptop', 3, 54000),
(1029, 113, 'Mouse', 6, 850),
(1030, 113, 'Headphones', 4, 5000),
(1031, 114, 'Mobile Phone', 2, 34000),
(1032, 114, 'Monitor', 3, 17500),
(1033, 115, 'Laptop', 2, 59000),
(1034, 115, 'Printer', 2, 14000),
(1035, 116, 'Office Chair', 5, 9000),
(1036, 117, 'Laptop', 1, 61000),
(1037, 117, 'Keyboard', 8, 1250),
(1038, 118, 'Mobile Phone', 3, 33000),
(1039, 118, 'Headphones', 6, 4300),
(1040, 119, 'Laptop', 2, 56000),
(1041, 119, 'Monitor', 2, 18500),
(1042, 119, 'Printer', 1, 15000),
(1043, 121, 'Laptop', 1, 60000),
(1044, 122, 'Monitor', 2, 17000);

-----------------product table ----------------------

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2));

INSERT INTO Products
(product_id, product_name, category, price)
VALUES
(201, 'Laptop', 'Electronics', 60000),
(202, 'Mobile Phone', 'Electronics', 35000),
(203, 'Monitor', 'Electronics', 18000),
(204, 'Printer', 'Electronics', 14000),
(205, 'Keyboard', 'Accessories', 1500),
(206, 'Mouse', 'Accessories', 800),
(207, 'Headphones', 'Accessories', 4500),
(208, 'Office Chair', 'Furniture', 9000),
(209, 'Webcam', 'Accessories', 3500),
(210, 'Tablet', 'Electronics', 28000),
(211, 'Desk', 'Furniture', 15000),
(212, 'USB Hub', 'Accessories', 1200);

------------------departments table ----------------------
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100));


INSERT INTO Departments
(department_id, department_name)
VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'Human Resources'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Support');

--------------------employes table--------------------

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    designation VARCHAR(100),
    salary DECIMAL(10,2));


INSERT INTO Employees
(employee_id, employee_name, department_id, designation, salary)
VALUES
(301, 'Amit Shah', 1, 'Sales Executive', 45000),
(302, 'Bhavna Patel', 1, 'Sales Executive', 48000),
(303, 'Chirag Mehta', 1, 'Sales Manager', 75000),
(304, 'Disha Sharma', 2, 'Marketing Executive', 50000),
(305, 'Esha Desai', 2, 'Marketing Manager', 78000),
(306, 'Farhan Khan', 3, 'Financial Analyst', 65000),
(307, 'Gauri Joshi', 3, 'Finance Manager', 90000),
(308, 'Harsh Patel', 4, 'HR Executive', 48000),
(309, 'Isha Shah', 5, 'Software Engineer', 70000),
(310, 'Jay Mehta', 5, 'System Administrator', 68000),
(311, 'Kriti Desai', 6, 'Operations Executive', 52000),
(312, 'Lalit Shah', NULL, 'Sales Executive', 46000);

------------------------------------------------------------------
----------------------------------------------------------------------
select * from customers ;
select * from orders ;
select * from Products ;
select * from Departments ;
select * from Employees ;
----------------------------------------------------------------------------
--------------------------------------------------------------------------

--------------Task DAY -6 ------------------------------------

--1
SELECT c.customer_id,c.customer_name,c.city,
COUNT(o.order_id) AS T_Number_of_Orders,
SUM(o.quantity) AS T_Quantity_Purchased,
SUM(o.amount) AS T_Purchase_Value,
AVG(o.amount) AS Avg_Order_Value
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,c.customer_name,c.city
HAVING COUNT(o.order_id) >= 3
AND SUM(o.amount) > 75000
ORDER BY T_Purchase_Value DESC;

--2
select c.city,
COUNT(o.order_id) AS Number_of_Orders,
COUNT(c.customer_id) AS Number_of_Customers,
SUM(o.quantity) AS T_Quantity_Sold,
SUM(o.amount) AS T_Sales_Value,
AVG(o.amount) AS Avg_Order_Value
from Customers c
inner join Orders o
on c.customer_id = o.customer_id
group by c.city
having SUM(o.amount) >100000
order by T_Sales_Value desc ;

--3
SELECT c.customer_id,c.customer_name,c.city,
COUNT(o.order_id) AS T_Number_of_Orders,
SUM(o.amount) AS T_Purchased_Value,
MAX(o.amount) AS Highest_Transaction_Value
from Customers c
inner join Orders o
on c.customer_id = o.customer_id
group by c.customer_id,c.customer_name,c.city
having MAX(o.amount) > 25000
AND SUM(o.amount) > 50000 ;

--4
select c.customer_id,c.customer_name,c.city,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS T_Quantity_Purchased,
SUM(o.amount) AS T_Purchase_Value,
AVG(o.amount) AS Avg_Order_Value
from Customers c
inner join Orders o
on c.customer_id = o.customer_id
group by c.customer_id,c.customer_name,c.city
having COUNT(o.order_id) >=4
order by T_Purchase_Value desc ;

--5
select product_name,
COUNT(order_id) AS Number_of_Orders,
SUM(quantity) AS T_Quantity_Purchased,
SUM(amount) AS T_Revenue,
AVG(amount) AS Avg_Order_Value,
MAX(amount) AS Highest_Order_Amount
from Orders 
group by product_name
having COUNT(order_id) >=3
order by T_Revenue desc ;

--6
select product_name,
SUM(quantity) AS T_Quantity_Sold,
COUNT(order_id) AS Number_of_Orders,
SUM(amount) AS T_Revenue
from Orders
group by product_name
having SUM(quantity) >100
AND COUNT(order_id) >5
order by T_Revenue desc ;

--7
select c.city,
count(c.customer_id) AS T_Customers,
count(o.order_id) AS T_Orders,
SUM(quantity) AS T_Quantity_Sold,
SUM(amount) AS T_Revenue
from Customers c
inner join Orders o
on c.customer_id = o.customer_id
group by c.city
having count(c.customer_id) >=3
AND count(o.order_id) >=5
AND SUM(amount)>200000 ;

--8
select c.customer_id,c.customer_name,c.city,
COUNT(o.order_id) AS Number_of_Orders,
Min(o.amount) AS Min_Order_Value,
Max(o.amount) AS Max_Order_Value,
avg(o.amount) AS Avg_Order_Value,
sum(o.amount) AS T_Parchase_Value
from Orders o
inner join Customers c
on c.customer_id = o.customer_id
group by c.customer_id,c.customer_name,c.city
having COUNT(o.order_id) >=3 ;

--9
select c.customer_id,c.customer_name,c.city,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS T_Quantity_Purchased,
SUM(o.amount) AS T_Purchase_Value
from Customers c
inner join Orders o
on c.customer_id = o. customer_id
group by  c.customer_id,c.customer_name,c.city
having COUNT(o.order_id) >=5
order by Number_of_Orders desc ;

--10
select c.customer_id,c.customer_name,c.city,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.amount) AS T_Purchase_Value
from Customers c
inner join Orders o
on c.customer_id = o. customer_id
group by  c.customer_id,c.customer_name,c.city
having COUNT(o.order_id) <=2
order by T_Purchase_Value desc ; 

--11
select c.customer_id,c.customer_name,c.city,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS T_Quantity_Purchased,
SUM(o.amount) AS T_Purchase_Value
from Customers c
left join orders o
on c.customer_id = o. customer_id
group by  c.customer_id,c.customer_name,c.city ;

--12
select c.customer_id,c.customer_name,c.city
from Orders o
right join  Customers c
on c.customer_id = o.customer_id
where o.order_id is null
-------------------------------------------------
select c.customer_id,c.customer_name,c.city
from Customers c
left join Orders o 
on c.customer_id = o.customer_id
where o.order_id is null

--13
select c.customer_id,c.customer_name,c.city,
COUNT(o.order_id) AS Number_of_Orders,
COALESCE(SUM(o.amount),0) AS T_Purchase_Value
from Customers c
left join orders o
on c.customer_id = o. customer_id
group by  c.customer_id,c.customer_name,c.city
order by Number_of_Orders ;

--14
select * from Products p
left join Orders o
on p.product_name = o.product_name
where o.order_id is null

--15
select c.*,o.order_id,o.product_name,o.quantity,o.amount
from Customers c
full outer join Orders o
on c.customer_id = o.customer_id

--16
select c.customer_id,c.customer_name,o.order_id,o.product_name,o.amount
from Customers c
full outer join Orders o
on c.customer_id = o.customer_id
where o.customer_id is null 
OR c.customer_id is null ;

--17
select c.*,o.order_id,o.product_name,o.quantity,o.amount,
o.quantity * o.amount as Transaction_value
from Customers c
full outer join Orders o
on c.customer_id = o.customer_id

--18
select * from Customers c
left join Orders o
on c.customer_id = o.customer_id
where order_id is null ;

--19
select * from Products p
left join Orders o
on p.product_name = o.product_name
where order_id is null ;

--20
select * from Customers c
left join Orders o
on c.customer_id = o.customer_id
where order_id is null ;

--21
select * from Products p
left join Orders o
on p.product_name = o.product_name
where o.order_id is null
order by price desc ;

--22
select * from Customers c
cross join Products p

--23
select count(*)  as T_Customer_Product_Combinations 
from Customers c 
cross join Products p

--24
select 
DISTINCT c.city,p.product_name
from Customers c
cross join Products p

--25
select c.*,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS T_Quantity_Purchased,
SUM(o.amount) AS T_Revenue,
AVG(o.amount) AS Avg_Order_Value,
MAX(o.amount) AS Max_order_Value
from Customers c
inner join Orders o
on c.customer_id = o. customer_id
group by c.customer_id,c.customer_name,c.city
having COUNT(o.order_id) >=3
order by T_Revenue desc,
Number_of_Orders desc,
Avg_Order_Value desc ;

--26
select o.product_name,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS T_Quantity_Purchased,
SUM(o.amount) AS T_Revenue,
AVG(o.amount) AS Avg_Order_Value,
MAX(o.amount) AS Max_order_Value
from orders o
group by o.product_name
having COUNT(o.order_id) >=5
AND SUM(o.amount) >200000 ;

--27
select c.city,
COUNT(o.customer_id) AS Number_of_Customers,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS T_Quantity_Sold,
SUM(o.amount) AS T_Revenue,
AVG(o.amount) AS Avg_Order_Value
from Customers c
inner join Orders o
on c.customer_id = o.customer_id
group by c.city
having COUNT(o.customer_id) >=5
AND COUNT(o.order_id) >=10
AND SUM(o.amount) >500000 ;

--28
select c.*,
COUNT(o.order_id) AS Number_of_qualifying_orders,
SUM(o.amount) AS T_value_qualifying_orders
from Customers c
inner join Orders o
on c.customer_id = o.customer_id
group by c.customer_id,c.customer_name,c.city
having  COUNT(o.order_id) >=2
AND SUM(o.amount) >25000 ;

--29
select o.product_name,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS T_Quantity_Sold,
SUM(o.amount) AS T_Revenue,
AVG(o.amount) AS Avg_Order_Value
from Customers c
inner join Orders o
on c.customer_id = o.customer_id
group by o.product_name
having SUM(o.quantity) >100
AND COUNT(o.order_id) >=5
AND SUM(o.amount) >100000 ;

--30
select c.*,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS T_Quantity_Purchased,
SUM(o.amount) AS T_Purchase_Value,
AVG(o.amount) AS Avg_Order_Value,
MIN (o.amount) AS Min_Order_Value,
MAX (o.amount) AS Max_Order_Value
from Customers c
inner join Orders o
on c.customer_id = o.customer_id
group by c.customer_id,c.customer_name,c.city
having COUNT(o.order_id) >=3
AND SUM(o.amount) >100000 
order by T_Purchase_Value desc ;