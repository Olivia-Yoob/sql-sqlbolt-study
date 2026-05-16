-- SQL Lesson 8 : NULL values

-- It's alwasys good to reduce the possibility of NULL values in databases bc they require special attention when constucturing queries, constraints and when processing the results.
-- An alternative to NULL values in a database is to have data-type appropriate default values like 0 for numerial data, empty strings for text data, etc.
-- ** if the default values will skew later analysis, then it's better to use NULL values instead of default values.

SELECT COLUMN, ANOTHER_COLUMN, ...
FROM MYTABLE
WHERE COLUMN IS NULL/IS NOT NULL
AND/OR ANOTHER CONDITION(S)

-- 👀 Exercise
-- 1. Find the name and role of all employees who have not been assigned to a building
SELECT NAME, ROLE
FROM EMPLOYEES
LEFT JOIN BUILDINGS
ON BUILDING_NAME = BUILDING
WHERE BUILDING IS NULL

-- 2. Find the names of the buildings that hold no employees
SELECT BUILDING_NAME
FROM BUILDINGS
LEFT JOIN EMPLOYEES
ON BUILDING_NAME = BUILDING
WHERE NAME IS NULL