-- SQL Lesson 7 : outer joins

-- INNER JOIN : only returns rows where there is a match in both tables
-- OUTER JOIN : returns all rows from one table and the matching rows from the other table
SELECT COLUMN, ANOTHER_COLUMN, ...
FROM MYTABLE
INNER/LEFT/RIGHT/FULL JOIN ANOTHER_TABLE 
ON MYTABLE.KEY = ANOTHER_TABLE.KEYON MYTABLE.KEY = ANOTHER_TABLE.KEY
WHERE CONDITION(S)
ORDER BY COLUMN ASC/DESC
LIMIT NUM_LIMIT OFFSET NUM_OFFSET;

-- 👀 Exercise
-- 1. Find the list of all buildings that have employees
SELECT DISTINCT BUILDING_NAME
FROM BUILDINGS
INNER JOIN EMPLOYEES
    ON BUILDING_NAME = BUILDING;

-- 2. Find the list of all buildings and their capacity
SELECT *
FROM BUILDINGS;

-- 3. List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT BUILDING_NAME, ROLE
FROM BUILDINGS
LEFT JOIN EMPLOYEES
    ON BUILDING_NAME = BUILDING;