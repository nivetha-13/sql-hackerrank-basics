create database practice;

use practice;

CREATE table employees(
ID INT,
NAME varchar(30),
Salary int)

select * from employees order by Salary desc;

insert into employees values (6,'Nithish',5000);

--find 3rd highest salary

SELECT DISTINCT Salary
FROM Employees
ORDER BY Salary DESC
OFFSET 2 ROWS
FETCH NEXT 1 ROW ONLY;


-- find 3rd highest salary , by using TOP 
