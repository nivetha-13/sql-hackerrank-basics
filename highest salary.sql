-- Find the 3rd highest salary
-- by using sub query

SELECT TOP 1 Salary from
(
SELECT TOP 3 Salary 
from employees
order by Salary desc
) As comp
order by Salary asc;
-- by using OFFSET
SELECT DISTINCT Salary
FROM Employees
ORDER BY Salary DESC
OFFSET 2 ROWS
FETCH NEXT 1 ROW ONLY;
