select * from employees;

SELECT TOP 1 Salary from employees;

-- using TOP

SELECT TOP 1 Salary from
(
SELECT TOP 3 Salary 
from employees
order by Salary desc
) As comp
order by Salary asc;

-- USING LIMIT
SELECT Salary
FROM employees
order by Salary DESC
limit 3


SELECT salary 
FROM employees 
ORDER BY salary DESC 
LIMIT 2, 1




SELECT salary  
FROM 
    (SELECT salary 
     FROM employees 
     ORDER BY salary DESC 
     LIMIT 3) AS Comp 
ORDER BY salary 
LIMIT 1;

