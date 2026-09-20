
create database SalesAnalyticsDB ;
use SalesAnalyticsDB;

----- CREATE TABLE ------------------------

create table customer(
ID int primary key,
USER_NAME varchar(50),
AGE int,
COUNTRY varchar(50),
AMOUNT_SPEND int);

-------INSERT VALUES IN CUSTOMER TABLE ---------------------------------

INSERT INTO customer (ID,USER_NAME,AGE,COUNTRY,AMOUNT_SPEND) VALUES
(1,'NIKITA',20,'INDIA',25000),
(2,'MEET',26,'USA',26500),
(3,'MEGHA',28,'UK',30000),
(4,'RAHUL',32,'INDIA',43000),
(5,'SNEHA',30,'USA',27000),
(6,'MILAN',22,'INDIA',26000),
(7,'RESHMA',28,'UK',32000),
(8,'MEENA',33,'CANADA',45000),
(9,'NISHA',25,'CANADA',25500),
(10,'USHA',34,'AUSTRALIA',23000);


INSERT INTO customer (ID,USER_NAME,AGE,COUNTRY,AMOUNT_SPEND) VALUES
(11,'REENA',26,'CANADA',26000);


SELECT * FROM customer;
--------------------------------------------------

--5 CUSTOMER INFORMATION----
SELECT USER_NAME,AGE,COUNTRY FROM customer;

--6 CUSTOMERS SPENDING ANALYSIS----
SELECT USER_NAME,COUNTRY,AMOUNT_SPEND FROM customer;

--7 Find all customers whose amount_spend is greater than 50,000 ----
SELECT * FROM customer
WHERE AMOUNT_SPEND > 50000;

--8 Find all customers whose age is less than 30.---
SELECT * FROM customer
WHERE AGE < 30;

--9 Find all customers whose country is INDIA ---
SELECT * FROM customer
WHERE COUNTRY ='INDIA';

--10 Find all customers whose amount_spend is less than 20,000.--
SELECT * FROM customer
WHERE AMOUNT_SPEND < 20000;

--11 Find customers who satisfy both conditions:
SELECT * FROM customer
WHERE AGE < 30 AND AMOUNT_SPEND =30000 ;

--12 FIND CUSTOMERS WHO FROM INDIA & SPEND 40000 ----
SELECT * FROM customer
WHERE COUNTRY = 'INDIA' AND AMOUNT_SPEND = 40000 ;

--13 FIND customers who are from either:INDIA,USA----
SELECT * FROM customer
WHERE COUNTRY = 'INDIA' OR COUNTRY ='USA';

--14 Find customers who satisfy:
SELECT * FROM customer
WHERE COUNTRY = 'INDIA' OR COUNTRY ='USA'
AND AMOUNT_SPEND =50000;

--15 Find all customers who are not from India.--
SELECT * FROM customer
WHERE COUNTRY != 'INDIA';

--16 Display all customers and arrange them by amount_spend from Lowest → Highest --
SELECT * FROM customer
ORDER BY AMOUNT_SPEND ASC ;

--17 Display all customers and arrange them by amount_spend from:Highest → Lowes --
SELECT * FROM customer
ORDER BY AMOUNT_SPEND DESC ;

--18 SHORTING DATA AGE WISE  ---
SELECT USER_NAME,AGE,COUNTRY,AMOUNT_SPEND FROM customer
ORDER BY AGE DESC ;

--19  Target Customer Segment
SELECT * FROM customer
WHERE Age between 25 and 40 AND AMOUNT_SPEND > 30000 
AND COUNTRY = 'USA' OR COUNTRY ='INDIA' ;

--20 Business Analyst Challenge
SELECT * FROM customer
WHERE AGE >= 30 AND AMOUNT_SPEND > 40000  AND COUNTRY != 'INDIA'
ORDER BY AMOUNT_SPEND DESC ;



































