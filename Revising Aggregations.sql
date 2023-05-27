--Query a count of the number of cities in CITY having a Population larger than .

SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;

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

--Population Density Difference
-- Query the difference between the maximum and minimum populations in CITY.
SELECT (MAX(POPULATION) - MIN(POPULATION)) AS difference
FROM CITY
