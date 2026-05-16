-- SQL lesson 5 : SQL Review

-- Review of SQL concepts covered in previous lessons
SELECT COLUMN, ANOTHER_COLUMN, ...
FROM MYTABLE
WHERE CONDITION(S)
ORDER BY COLUMN ASC/DESC
LIMIT NUM_LIMIT OFFSET NUM_OFFSET;

-- 👀 Exercise

-- Positive latitudes correspond to the northern hemisphere, and positive lonitudes correspond to the eastern hemisphere
-- Since North of the equator and west of the prime meridian, all of the cities in the list have positive latitudes and nagative longitudes.

--1. List all the Canadian cities and their populations
SELECT CITY, POPULATION
FROM NORTH_AMERICAN_CITIES
WHERE COUNTRY LIKE 'CANADA'

--2. Order all the cities in the United States by their latitude from north to south
SELECT *
FROM NORTH_AMERICAN_CITIES
WHERE COUNTRY LIKE 'UNITED STATES'
ORDER BY LATITUDE DESC

--3. List all the cities west of Chicago, ordered from west to east
SELECT *
FROM NORTH_AMERICAN_CITIES
WHERE LONGITUDE < -87.629798
ORDER BY LONGITUDE 
-- ASC 이면 작은 것부터니까 마이너스가 큰 것 부터

--4. List the two largest cities in Mexico (by population)
SELECT *
FROM NORTH_AMERICAN_CITIES
WHERE COUNTRY LIKE 'MEXICO'
ORDER BY POPULATION DESC
LIMIT 2

--5. List the third and fourth largest cities (by population) in the United States and their population
SELECT CITY
FROM NORTH_AMERICAN_CITIES
WHERE COUNTRY LIKE 'UNITED STATES'
ORDER BY POPULATION DESC
LIMIT 2 OFFSET 2