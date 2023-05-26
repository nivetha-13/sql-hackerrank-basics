-- Question : Weather Observation 10
--Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '[aeiou]%'

-- Question : Weather Observation 10
--Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '%[aeiou]'

-- Question :  Weather Observation 11
--Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '[aeiou]%' OR CITY NOT LIKE '%[aeiou]';

-- Question :  Weather Observation 12
--Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '[aeiou]%' AND CITY NOT LIKE '%[aeiou]';

