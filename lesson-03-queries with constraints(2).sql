-- SQL Lesson 3 : Queries with Constraints (Pt.2)

-- When wrting WHERE clauses with columns containing text data, SQL supports a number of useful operators to do things like case -insentive string comparison and wildcard pattern matching.
-- Operator = : Case sensitive string comparison
-- Operator != or <> : Case sensitive string comparison for inequality
-- Operator LIKE : Case insensitive exact string comparison and pattern matching with wildcards
-- Wildcard % : Represents zero or more characters (Only with LIKE or NOT LIKE operators)
-- Wildcard _ : Represents a single character (Only with LIKE or NOT LIKE operators)
-- Operator NOT LIKE : Case insensitive exact string inequality comparison and pattern matching with wildcards
-- Operator IN : Checks if a value matches any value in a list of values
-- Operator NOT IN : Checks if a value does not match any value in a list of values

-- ⭐️ All strings must be quoted so that the query parser can distinguish words in the string from SQL keywords.

-- 👀 Exercise

-- Exercise 3 — Tasks
-- 1. Find all the Toy Story movies
SELECT * 
FROM movies
WHERE TITLE LIKE "%TOY STORY%";

-- 2. Find all the movies directed by John Lasseter
SELECT TITLE
FROM MOVIES 
WHERE DIRECTOR LIKE "JOHN LASSETER";

-- 3. Find all the movies (and director) not directed by John Lasseter
SELECT TITLE, DIRECTOR
FROM MOVIES 
WHERE DIRECTOR NOT LIKE "JOHN LASSETER";

-- 4. Find all the WALL-* movies
SELECT TITLE 
FROM MOVIES
WHERE TITLE LIKE "WALL-%";