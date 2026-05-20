-- SQL Lesson 15 : Deleting Rows

-- Delete statement with condition
DELETE FROM mytable
WHERE condition;
-- If you omit the WHERE clause, all rows in the table will be deleted. Be very careful when using the DELETE statement to avoid accidentally deleting more data than intended.

--- 👀 Exercise
-- Exercise 15 — Tasks
-- 1. This database is getting too big, lets remove all movies that were released before 2005.
DELETE FROM MOVIES
WHERE YEAR < 2005;

-- 2. Andrew Stanton has also left the studio, so please remove all movies directed by him.
DELETE FROM MOVIES
WHERE DIRECTOR LIKE 'ANDREW STANTON';