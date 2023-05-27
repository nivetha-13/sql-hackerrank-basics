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
