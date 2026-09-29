
use JOINS ;
------------------------------------------TABLE _1-------------------------

CREATE TABLE Customer
(customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    country VARCHAR(50));

INSERT INTO Customer
(customer_id, customer_name, city, country)
VALUES
(1, 'Rahul Sharma', 'Ahmedabad', 'India'),
(2, 'Priya Patel', 'Mumbai', 'India'),
(3, 'Amit Shah', 'Delhi', 'India'),
(4, 'Neha Mehta', 'Pune', 'India'),
(5, 'Rohan Desai', 'Surat', 'India'),
(6, 'Karan Joshi', 'Jaipur', 'India'),
(7, 'Sneha Patel', 'Bangalore', 'India'),
(8, 'Vikas Shah', 'Vadodara', 'India'),
(9, 'Anjali Singh', 'Delhi', 'India'),
(10, 'Raj Malhotra', 'Chennai', 'India');

select * from Customer ;

----------------------------TABLE _2 -----------------------------------

CREATE TABLE Orders
(order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    quantity INT,
    amount DECIMAL(10,2));

    
INSERT INTO Orders
(order_id, customer_id, product_name, quantity, amount)
VALUES
(101, 1, 'Laptop', 1, 55000.00),
(102, 2, 'Mobile', 2, 30000.00),
(103, 3, 'Keyboard', 3, 4500.00),
(104, 4, 'Monitor', 1, 18000.00),
(105, 5, 'Mouse', 5, 2500.00),
(106, 6, 'Printer', 1, 12000.00),
(107, 7, 'Laptop Bag', 2, 3000.00),
(108, 11, 'Tablet', 1, 25000.00),
(109, 12, 'Headphones', 2, 6000.00),
(110, 13, 'Smart Watch', 1, 8000.00);

select * from Orders ;
select * from Customer ;
-------------------------TASK ----------------------------------TASK----------------------
--1
select c.customer_id,c.customer_name,c.city,
o.order_id,o.product_name,o.amount
from Orders o
inner join Customer c
on o.customer_id = c.customer_id ;

--2
select c.customer_name,c.city,
o.product_name,o.amount as order_amount
from Customer c
inner join Orders o
on c.customer_id=o.customer_id ;

--3
select c.customer_id,c.customer_name,o.order_id,
o.product_name,o.amount
from customer c
left join orders o
on c.customer_id = o.customer_id;

--4
select o.customer_id,c.customer_name,c.city
from Customer c
left join orders o
on c.customer_id = o.customer_id
where o.order_id is null ;

--5
select o.order_id,o.customer_id,c.customer_name,
o.product_name,o.amount  
from orders o
right join Customer c
on o.customer_id = c.customer_id;

--6
select o.order_id,o.customer_id,o.product_name,o.amount 
from Orders o
right join Customer c
on o.customer_id = c.customer_id;

--7
select c.customer_id,c.customer_name,o.order_id,o.product_name,o.amount 
from Orders o
full join Customer c
on o.customer_id = c.customer_id;

--8
select c.customer_name,o.order_id,o.product_name,o.amount
from Orders o
inner join Customer c
on o.customer_id = c.customer_id
where o.amount >10000 ;

--9
select c.customer_name,c.city,o.order_id,o.product_name,o.amount
from Customer c
inner join Orders o
on o.customer_id = c.customer_id
where city ='Delhi' ;

--10
select c.customer_name,o.product_name,o.quantity,o.amount
from customer c
inner join Orders o
on o.customer_id = c.customer_id
where quantity >2 
order by quantity desc ;

--11
select o.customer_id,c.customer_name,
sum(o.amount) as Total_Amount
from orders o
left join Customer c
on o.customer_id = c.customer_id
group by o.customer_id,c.customer_name ;

--12
select o.customer_id,c.customer_name,
count(o.order_id) as Total_order
from Orders o
left join Customer c
on o.customer_id = c.customer_id
group by o.customer_id,c.customer_name ;

--13
select c.customer_name,
AVG(o.amount) as avg_order_amount
from Customer c
inner join Orders o
on c.customer_id = o.customer_id
group by c.customer_name

--14
select c.customer_name,o.order_id,o.product_name,o.amount
from Customer c
join Orders o
on c.customer_id = o.customer_id
order by amount desc;

--15
select c.customer_name,o.order_id,o.product_name,o.amount
from Customer c
join Orders o
on c.customer_id = o.customer_id
order by amount asc;

--16
select o.customer_id,c.customer_name,
count(o.order_id) as Total_order,
sum(o.quantity) as Total_Qty, 
sum(o.amount) as Total_Amount
from Customer c
left join Orders o
on c.customer_id = o.customer_id
group by  o.customer_id,c.customer_name ;

--17
SELECT c.customer_id,c.customer_name,
SUM(o.amount) AS Total_Amount
FROM customer c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,c.customer_name
HAVING SUM(o.amount) > 20000;

--18
select o.customer_id,c.customer_name,
count(o.order_id) as Number_of_orders
from Orders o
join Customer c
on c.customer_id = o.customer_id
group by o.customer_id,c.customer_name
having count(o.order_id) >=1 ;

--19
SELECT c.customer_id,c.customer_name,o.order_id,o.product_name,o.quantity,o.amount
FROM customer c
FULL JOIN orders o
ON c.customer_id = o.customer_id;

--20
select c.customer_id,c.customer_name,c.city,
o.order_id,o.product_name,o.quantity,o.amount,
o.quantity * o.amount as Total_value
from Orders o
inner join Customer c
on c.customer_id = o.customer_id ;












































