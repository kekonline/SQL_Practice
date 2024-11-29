SELECT *
FROM CITY
WHERE POPULATION > 100000
AND COUNTRYCODE = 'USA';

SELECT NAME
FROM CITY
WHERE POPULATION > 120000
AND COUNTRYCODE = 'USA';

SELECT *
FROM CITY

SELECT *
FROM CITY
WHERE ID = 1661;

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';

SELECT CITY, STATE
FROM STATION;

SELECT DISTINCT(CITY)
FROM STATION
WHERE ((ID % 2) = 0)
ORDER BY CITY ASC;

