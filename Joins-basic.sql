--Population Census
--Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT SUM(CITY.POPULATION)
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Asia';

--African Cities
--Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT CITY.NAME
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa';

--Average Population of Each Continent
--Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
--and their respective average city populations (CITY.Population) rounded down to the nearest integer.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT COUNTRY.CONTINENT, AVG(CITY.POPULATION)
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;
