--Query a count of the number of cities in CITY having a Population larger than .

SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;
-- Method 2
select count(1) from city where population>100000;

--Query the total population of all cities in CITY where District is California.
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

--Query the average population of all cities in CITY where District is California.
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

--Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT ROUND(AVG(POPULATION),2) as AvgPopulation
FROM CITY
--Method 2
SELECT FLOOR(AVG(POPULATION)) as AvgPopulation
FROM CITY

--Japan Population
--Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

--Population Density Difference
-- Query the difference between the maximum and minimum populations in CITY.
SELECT (MAX(POPULATION) - MIN(POPULATION)) AS difference
FROM CITY


-- The Blender
--Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
--but did not realize her keyboard's  key was broken until after completing the calculation. 
--She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
--Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.
SELECT  CAST (CEILING (AVG(CAST(Salary AS FLOAT)) - AVG (CAST(REPLACE (Salary, 0,"") AS FLOAT))) AS INT)
FROM Employees

-- Method 2 - using Mysql
SELECT CEILING(AVG(SALARY) - AVG(REPLACE(SALARY,0,'')))
FROM EMPLOYEES

-- TOP EARNERS
--We define an employee's total earnings to be their monthly  worked, 
--and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
--Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
--Then print these values as  space-separated integers.


select top 1 max(salary*months) as total_sal, count(employee_id) from Employee group by (salary*months) order by total_sal desc
select top 1 max(salary*months) as "total_sal", count(employee_id) from Employee group by (salary*months) order by total_sal desc


-- Weather Observation 2
--Query the following two values from the STATION table:
--The sum of all values in LAT_N rounded to a scale of 2 decimal places.
--The sum of all values in LONG_W rounded to a scale of 2 decimal places.

select cast(sum(lat_n) as Decimal(10,4)) from station where lat_n between 38.7880 and 137.2345;

SELECT CONVERT(decimal(10, 2), SUM(LAT_N)) AS LAT, CONVERT(decimal(10, 2), SUM(LONG_W)) AS LON FROM STATION;
-- Weather Observation 13
select cast(sum(lat_n) as Decimal(10,4)) from station where lat_n between 38.7880 and 137.2345;
select round(sum(lat_n),4) from station where lat_n between 38.7880 and 137.2345;

-- Weather Observation 14
--Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . 
--Truncate your answer to  decimal places.

--MS SQL

SELECT CAST(MAX(LAT_N) AS DECIMAL(10,4))
FROM STATION
WHERE LAT_N < 137.2345;

-- Mysql
SELECT ROUND(MAX(LAT_N),4)
FROM STATION
WHERE LAT_N < 137.2345;

--Problem Statement --- Weather Observation 15
/*
Given a table STATION that holds data for five fields namely ID, CITY, STATE, NORTHERN LATITUDE and WESTERN LONGITUDE.

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
 
Write a query to find the corresponding Western Longitude value for the greatest value of the Northern Latitudes less than 137.2345 up to 4 decimal places.
*/

--Solution

SELECT CAST(LONG_W AS DECIMAL(10,4))
FROM STATION
WHERE LAT_N = (select MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);
