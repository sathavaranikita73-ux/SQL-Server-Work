
create database Nikita_SQL_Work ;

use Nikita_SQL_Work ;

----------------------------------------------------------------------
--Fill in the Blanks
--1 .SQL stands for - structured quary language.

--2 . create database nikita - statement is used to create a database.

--3 . having - clause filters grouped records.

--4 .order by - clause is used to arrange records in ascending or descending order.

--5 .COUNT(), SUM(), AVG(), MAX(), and MIN() are called Aggrigate functions.

--6 .Which command inserts new records into a table?
--B. INSERT

--7 .Which clause is executed after GROUP BY?
--B. HAVING

--8 .Which command removes all rows but keeps the table structure?
--C. TRUNCATE

--9 .Which command modifies existing records?
--C. UPDATE

--10 .Which function returns the average value?
--B. AVG()

--11 .Display all records.
select * from Sales

--12 .Display Name and Salary.
select emp_Name,Salary from Sales ;

--13 .Salary > 50000.
select * from Sales
where Salary > 50000 ;

--14 .City = Ahmedabad.
select * from Sales
where city = "Ahmedabad" ;

--15 .Age between 25 and 35
select * from Sales
where age between 25 and 35 ;

--16 .Count employees.
select count(*) AS all_employes
from Sales ;

--17 .Highest Salary.
select max(Salary) AS higest_salary
from Sales ;

--18 .Average Salary.
select avg(salary) AS avg_salary
from sales ;

--19 .Department-wise Total Salary.
select department
sum(salary) AS tota_salary
from sales 
group by department;

--20 .Department-wise Average Salary.
select department
avg(salary) AS avg_tota_salary
from sales ;

--21 .Departments having Average Salary > 55000.
select department
sum(salary) AS tota_salary
from sales 
group by department
having sum(salary)>55000 ;

--22 .Order by Salary DESC.
select
sum(salary) AS tota_salary
from sales 
order by tota_salary desc ;

--23 .Update Rahul's salary to 45000.
update sales
set salary = 45000
where emp_name = "Rahul"

--24 .Delete EmpID 105.
delete from sales
where emp_id = 105











