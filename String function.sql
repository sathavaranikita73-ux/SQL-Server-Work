
create database String_function ;
use String_function ;
----------------------------------------------------------

CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50),
    city VARCHAR(50));
------------------------------------------------------------

INSERT INTO Employees
VALUES
(101, 'Rahul Sharma', 'rahul.sharma@gmail.com', 'IT', 'Ahmedabad'),
(102, 'Priya Patel', 'priya.patel@gmail.com', 'HR', 'Mumbai'),
(103, 'Amit Shah', 'amit.shah@gmail.com', 'Finance', 'Ahmedabad'),
(104, 'Neha Mehta', 'neha.mehta@gmail.com', 'IT', 'Pune'),
(105, 'Rohan Desai', 'rohan.desai@gmail.com', 'Sales', 'Delhi');

-------------------------------------------------------------------
select * from Employees

------------------------String Functions ------------------------------

--1 upper case ----------
SELECT UPPER(employee_name) AS employee_name
FROM Employees;

SELECT
    employee_id,
    UPPER(city) AS city
FROM Employees;

--2 lower case ---------------
SELECT LOWER(employee_name) AS employee_name
FROM Employees;

SELECT LOWER(email) AS email
FROM Employees;

--3 len () --------------
SELECT
    employee_name,
    LEN(employee_name) AS name_length
FROM Employees;

--4 data length ----------------
SELECT
    employee_name,
    DATALENGTH(employee_name) AS byte_count
FROM Employees;

--5 len & data len count ----------------
SELECT
    LEN(employee_name) AS Character_Count,
    DATALENGTH(employee_name) AS Byte_Count
FROM Employees;

--6 Concate --------------------------------
SELECT
    CONCAT(employee_name, ' - ', department) AS Employee_Info
FROM Employees;

SELECT CONCAT(employee_id, ' | ',employee_name, ' | ',department) 
AS Employee_Details
FROM Employees;

--7 CONCAT_WS ----------------------------
SELECT
    CONCAT_WS(' - ', employee_name, department, city) AS Employee_Info
FROM Employees;

--8 left string ---------------------
SELECT
    LEFT(employee_name, 5) AS First_Five_Characters
FROM Employees;

SELECT city,
LEFT(city, 3) AS City_Code
FROM Employees;

--9 right string --------------
SELECT employee_name,
    RIGHT(employee_name, 5) AS Last_Five_Characters
FROM Employees;

--10 SUBSTRING ----------------------
SELECT
    SUBSTRING(employee_name, 1, 5) AS Extracted_Text
FROM Employees;

SELECT
    SUBSTRING(employee_name, 7, 6) AS Last_Name
FROM Employees;

--11 CHAR INDEX ( Position )---------------
SELECT employee_name,
    CHARINDEX(' ', employee_name) AS Space_Position
FROM Employees;

SELECT
    employee_name,
    CHARINDEX('a', employee_name) AS Position
FROM Employees;

--12 PAT INDEX ( Position )--------------------------
SELECT employee_name,
    PATINDEX('%Sh%', employee_name) AS Position
FROM Employees;

SELECT
    employee_name,
    PATINDEX('%a%', employee_name) AS Position
FROM Employees;

--13 REPLACE -----------------------------
SELECT
    REPLACE(employee_name, ' ', '_') AS Employee_Name
FROM Employees;

SELECT
    REPLACE(email, 'gmail.com', 'company.com') AS Company_Email
FROM Employees;

--14 TRANSLATE ----------------------------------
SELECT TRANSLATE('123-456-789', '/', '-');
SELECT TRANSLATE('ABC123', 'ABC', 'XYZ');

--15 TRIM -----------------
SELECT
    TRIM(employee_name) AS Clean_Name
FROM Employees;

--16 Left trim -------------------
SELECT
    LTRIM(employee_name) AS Clean_Name
FROM Employees;

--17 Right trim ------------------------
SELECT
    RTRIM(employee_name) AS Clean_Name
FROM Employees;

--18 Left trim & Right trim ---------------
SELECT LTRIM(RTRIM(employee_name))AS Clean_Name
FROM Employees;

--19 REVERSE -------------------------
SELECT employee_name,
    REVERSE(employee_name) AS Reversed_Name
FROM Employees;

--20 SPACE ---------------------
SELECT CONCAT('Hello', SPACE(5), 'World');
SELECT CONCAT('Hello', '-', 'World');

--21 REPLICATE --------------------
SELECT REPLICATE( employee_id, 10) 
FROM Employees ;

SELECT REPLICATE('*', 10);

SELECT
    CONCAT(employee_name, REPLICATE('*', 5)) AS Formatted_Name
FROM Employees;

--22 FORMAT------------------------
SELECT FORMAT(1234567,'N0') AS Formatted_Number;

--23 STRING_AGG -------------------
SELECT department,
    STRING_AGG(employee_name, ', ') AS Employees
FROM Employees
GROUP BY department;

--24 STRING_SPLIT ---------------------
SELECT value
FROM STRING_SPLIT('SQL- sql,Python,Power BI,Excel',',');

--25 ASCII ---------------------
SELECT ASCII('A');

--26 CHAR ------------------------
SELECT CHAR(65);

--27 UNICODE ------------------
SELECT UNICODE('A');

--28 NCHAR --------------------
SELECT NCHAR(65);

--ASCII('A') → 65
--CHAR(65) → A
--UNICODE ('A')→ 65
--NCHAR(65)→ A
----------------------------------------------

--29 DIFFERENCE ---------------
SELECT DIFFERENCE('Smith', 'Smyth');

--30 SOUNDEX ---------------------
SELECT
    SOUNDEX('Smith') AS Name1,
    SOUNDEX('Smyth') AS Name2;

--31 QUOTENAME  [ bracket name ]---------------
SELECT QUOTENAME('Employees');

--32 STR -----------------
SELECT STR(123.45, 6, 2);

--33 STRING_ESCAPE -----------
SELECT STRING_ESCAPE('Rahul "Sharma"', 'json');

--34 SPACE() vs REPLICATE() -----------------
SELECT employee_name,SPACE(5)
from Employees;

SELECT REPLICATE('*', 5);

--35 CONCAT() vs + Operator ---------
SELECT employee_name + ' - ' + department
FROM Employees;

SELECT CONCAT(employee_name, ' - ', department)
FROM Employees;

SELECT CONCAT('Rahul', NULL, 'Sharma');

--36 UPPER & TRIM -------------------
SELECT
    UPPER(TRIM(employee_name)) AS Clean_Name
FROM Employees;

--37 
SELECT
left(employee_name,CHARINDEX(' ', employee_name)-1) AS First_Name
FROM Employees;

SELECT email,
LEFT(email,CHARINDEX('@', email) - 1) AS Email_Username
FROM Employees;

--38 
SELECT
RIGHT(employee_name,LEN(employee_name) - CHARINDEX(' ', employee_name)) 
AS Last_Name
FROM Employees;

--39 LOWER & REPLACE ------------------------
SELECT TRIM(employee_name) AS TRIMname,
    LOWER(REPLACE(employee_name, ' ', '.')) AS Username
FROM Employees;

--40 CHARINDEX ------------
SELECT *
FROM Employees
WHERE CHARINDEX('@gmail.com', email) >=0;

SELECT *
FROM Employees
WHERE email LIKE '%@gmail.com';

--41
SELECT
    UPPER(LEFT(employee_name, 1)) +
    LOWER(SUBSTRING(employee_name, 2, LEN(employee_name))) AS Employee_Name
FROM Employees;

--42 
SELECT * FROM Employees
WHERE LEN(employee_name) > 10;

--43 
SELECT * FROM Employees
WHERE LEFT(employee_name, 1) = 'R';

--44 
SELECT * FROM Employees
WHERE employee_name LIKE '%ah%';

--45 
SELECT employee_name,
LEN(employee_name) AS Name_Length FROM Employees
ORDER BY LEN(employee_name) DESC;

--46
SELECT UPPER(city) AS City, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY UPPER(city);

--47 case when[ condition ] ----------------------
SELECT employee_name,
    CASE
WHEN LEN(employee_name) > 11 THEN 'Long Name'
WHEN LEN(employee_name) > 10 THEN 'Medium Name'
ELSE 'Short Name'
END AS Name_Category
FROM Employees;

--48 clen number ------------------------
SELECT REPLACE(987-654-3210, '-','') AS Clean_Phone ;
