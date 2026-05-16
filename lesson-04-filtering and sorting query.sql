-- SQL Lesson 4 : Filtering and Sorting Queries

-- SQL provided a convenient way to discard rows that have a duplicate column value by using the DISTINCT keyword.

-- ✅ Select query with DISTINCT keyword
SELECT DISTINCT COLUMN, ANOTHER_COLUMN, ...
FROM MYTABLE;
WHERE CONDITION(S);

-- ✅ Select query with ORDER BY clause
SELECT COLUMN, ANOTHER_COLUMN, ...
FROM MYTABLE
WHERE CONTION(S)
ORDER BY COLUM ASC/DESC; -- APLHAEBTICALLY OR NUMERICALLY

-- In some databases, you can also specify a collation to better sort data containing international text.
-- collation : 데이터베이스에서 문자를 비교하고 정렬하는 규칙

-- LIMIT will reduce the number of rows to return, and the optional OFFSET will specify where to begin counting the number rows from.

-- ✅ Select query with LIMIT and OFFSET
SELECT COLUMN, ANOTHER_COLUMN, ...
FROM MYTABLE
WHERE CONDITION(S)
ORDER BY COLUMN ASC/DESC
LIMIT NUM_LIMIT OFFSET NUM_OFFSET;

-- EX. The front page is list of links sorted by popularity and time, and each subsequent page can be represented by sets of links at different offsets in the database.
-- can execute queries faster and more efficiently by processing and returning only the requested content.

-- 👀 Exercise
-- 1. List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT DIRECTOR
FROM MOVIES
ORDER BY DIRECTOR;

-- 2. List the last four Pixar movies released (ordered from most recent to least)
SELECT *
FROM MOVIES
ORDER BY YEAR DESC
LIMIT 4

-- 3. List the first five Pixar movies sorted alphabetically
SELECT *
FROM MOVIES 
ORDER BY TITLE
LIMIT 5

-- 4. List the next five Pixar movies sorted alphabetically
SELECT *
FROM MOVIES 
ORDER BY TITLE
LIMIT 5 OFFSET 5