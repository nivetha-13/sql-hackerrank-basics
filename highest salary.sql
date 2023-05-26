SELECT TOP 1 Salary from
(
SELECT TOP 3 Salary 
from employees
order by Salary desc
) As comp
order by Salary asc;
