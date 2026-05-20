-- SQL Lesson 12 : Order of Execution

-- The order of execution of SQL clauses is as follows:
SELECT DISTINCT COLUMN, AGG_FUNC(COLUMN_OR_EXPRESSION) AS ALIAS_NAME
FROM MYTABLE
    JOIN ANOTHER_TABLE
        ON MYTABLE.COLUMN = ANOTHER_TABLE.COLUMN
WHERE CONDITION(S)
GROUP BY COLUMN
HAVING GROUP_CONDITION(S)
ORDER BY COLUMN_OR_EXPRESSION ASC|DESC
LIMIT NUMBER OFFSET NUMBER;

-- 1. FROM AND JOIN : determine the total working set of data that is being queried
-- 2. WHERE : applied to the individual rows, and rows that do not satisfty the constraint are discarded. Can only access columns from the FROM and JOIN clauses.
-- 3. GROUP BY : grouped based on common values in the column specified in the GROUP BY clause. As a result of the grouping, there will only be as many rows as there are unique values in that column. Implicitly, this means that you should only need to use this when you have aggregate functions in your query.
-- 4. HAVING : applied to the grouped rows, and groups that do not satisfy the constraint are discarded. Can only access columns from the FROM, JOIN, and GROUP BY clauses.
-- 5. SELECT : determines the columns that will be returned in the result set. Can access columns from all previous clauses, including the aggregate functions and aliases defined in the SELECT clause.
-- 6. DISTINCT : applied to the result set, and duplicate rows are discarded.
-- 7. ORDER BY : applied to the result set, and the rows are sorted based on the column or expression specified in the ORDER BY clause. Can access columns from all previous clauses, including the aggregate functions and aliases defined in the SELECT clause.
-- 8. LIMIT/OFFSET : applied to the result set, and the number of rows returned is limited based on the number specified in the LIMIT clause. Can access columns from all previous clauses, including the aggregate functions and aliases defined in the SELECT clause.

-- 👀 Exercise
-- 1. Find the number of movies each director has directed
SELECT DIRECTOR, COUNT(TITLE) AS NUM_OF_MOVIES
FROM movies
GROUP BY DIRECTOR;

-- 2. Find the total domestic and international sales that can be attributed to each director
SELECT DIRECTOR, SUM(DOMESTIC_SALES + INTERNATIONAL_SALES)
FROM MOVIES 
    JOIN BOXOFFICE
        ON ID = MOVIE_ID
GROUP BY DIRECTOR;