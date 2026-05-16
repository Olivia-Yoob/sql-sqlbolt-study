-- SQL Lesson 10 : Aggregates

SELECT AGG_FUNC(COLUMN_OR_EXPRESSION) AS ALIAS
FROM MYTABLE
WHERE CONDITION(S)

-- COMMON AGGREGATE FUNCTIONS
-- COUNT() : counts the number of rows that match the specified condition, COUNT the number of rows in the group with non NULL balues in the specified column.
-- COUNT(*) : counts the total number of rows in the group, including rows with NULL values.
-- SUM() : calculates the total sum of a numeric column or expression
-- AVG() : calculates the average value of a numeric column or expression
-- MIN() : finds the minimum value in a column or expression
-- MAX() : finds the maximum value in a column or expression

-- Grouped aggregate functions
SELECT AGG_FUNC(COLUMN_OR_EXPRESSION) AS ALIAS
FROM MYTABLE
WHERE CONDITION(S)
GROUP BY COLUMN_OR_EXPRESSION

-- 👀 Exercise
-- 1. Find the longest time that an employee has been at the studio
SELECT MAX(YEARS_EMPLOYED)
FROM employees;

-- 2. For each role, find the average number of years employed by employees in that role
SELECT ROLE, AVG(YEARS_EMPLOYED)
FROM employees
GROUP BY ROLE;

-- 3. Find the total number of employee years worked in each building
SELECT BUILDING, SUM(YEARS_EMPLOYED) AS TOTAL_NUMBER
FROM employees
GROUP BY BUILDING;