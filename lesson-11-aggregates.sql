-- SQL Lesson 11 : Aggregates

-- GROUP BY clause is executed after the WHERE clause, then how exactly do we filter the grouped rows?
-- HAVING clause which is used specifically with the GROUP BY clause to allow us to filter grouped rows from the result set.

-- SELECT query with GROUP BY and HAVING clauses
SELECT group_by_column, AGG_FUNC(column_expression) AS alias_name
FROM mytable
WHERE condition(s)
GROUP BY column
HAVING group_condition(s);

-- If you aren't using the GROUP BY clause, a simple WHERE clause will suffice.

-- 👀 Exercise
-- 1. Find the number of Artists in the studio (without a HAVING clause)
SELECT COUNT(ROLE)
FROM employees
WHERE ROLE LIKE "ARTIST"
GROUP BY ROLE; -- 이미 WHERE 절에서 ARTIST만 남았기 때문에 GROUP BY 절이 필요없음

-- answer
SELECT ROLE, COUNT(*) AS NUMBER_OF_ARTISTS
FROM EMPLOYEES
WHERE ROLE LIKE "ARTIST";

-- 2. Find the number of Employees of each role in the studio
SELECT ROLE, COUNT(NAME)
FROM EMPLOYEES
GROUP BY ROLE;

-- 3. Find the total number of years employed by all Engineers
SELECT ROLE, SUM(YEARS_EMPLOYED)
FROM EMPLOYEES
WHERE ROLE LIKE "ENGINEER";
