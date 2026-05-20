-- SQL Lesson 18 : Dropping Tables

-- DROP TABLE statement is used to delete an existing table and all of its data from the database. Be cautious when using this statement, as it permanently removes the table and its contents.
DROP TABLE IF EXISTS mytable;
-- The IF EXISTS clause is optional but recommended to prevent errors if the table does not exist.
-- In addition, if you have another table that is dependent on columns in table you are removing then you will have to either update all dependent tables first to remove the dependent rows or to remove those tables entirely.

--- 👀 Exercise
-- Exercise 18 — Tasks
-- 1. We've sadly reached the end of our lessons, lets clean up by removing the Movies table
DROP TABLE IF EXISTS MOVIES;

-- 2. And drop the BoxOffice table as well
DROP TABLE IF EXISTS BOXOFFICE;