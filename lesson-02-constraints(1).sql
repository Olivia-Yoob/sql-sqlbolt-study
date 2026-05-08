-- SQL Lesson 2 : Queries with Constraints (Pt.1)

-- WHERE clause : applied to each row of data by checking specific column values to determine whether it should be included in the results or not

-- ✅ Select query with constraints
SELECT COLUMN, ANOTHER_COLUMN, ...
FROM MYTABLE
WHERE CONDITION
    AND/OR ANOTHER CONDITION
    AND/OR ...;

-- ✅ OPERATOR
-- Comparison Operators : =, !=, <, >, <=, >=
-- Logical Operators : AND, OR, NOT
-- Pattern Matching Operators : LIKE, NOT LIKE
-- Range Operators : BETWEEN, NOT BETWEEN (INCLUSIVE)
-- Set Operators : IN, NOT IN

-- 👀 Exercise

-- Exercise 2 — Tasks
-- 1. Find the movie with a row id of 6 ✓
SELECT TITLE
FROM MOVIES 
WHERE ID = 6;

-- 2. Find the movies released in the years between 2000 and 2010
SELECT TITLE
FROM MOVIES 
WHERE YEAR BETWEEN 2000 AND 2010;

-- 3. Find the movies not released in the years between 2000 and 2010
SELECT TITLE
FROM MOVIES 
WHERE YEAR NOT BETWEEN 2000 AND 2010;

-- 4. Find the first 5 Pixar movies and their release year
SELECT TITLE, YEAR
FROM MOVIES
WHERE ID <=5;