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


-- Weather Observation 2
--Query the following two values from the STATION table:
--The sum of all values in LAT_N rounded to a scale of 2 decimal places.
--The sum of all values in LONG_W rounded to a scale of 2 decimal places.

