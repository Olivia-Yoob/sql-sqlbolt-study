-- SQL Lesson 6 : Join Queries

-- Data normalization is useful bc it minimizes duplicate data in any single table, and allows for data in the database to grow independently of each other

-- JOIN : we can combine row data across two separate tables using this unique key
-- Select query with INNER JOIN on multiple tables
SELECT COLUMN, ANOTHER_COLUMN, ...
FROM TABLE1
INNER JOIN TABLE2
ON TABLE1.KEY = TABLE2.KEY
WHERE CONDITION(S)
ORDER BY COLUMN ASC/DESC
LIMIT NUM_LIMIT OFFSET NUM_OFFSET;

-- INNER JOIN : process that matches rows from the first table and the second table which have the same key (ON constraint) to create a result row with the combined columns from both tables.

-- 👀 Exercise
-- 1. Find the domestic and international sales for each movie
SELECT TITLE, DOMESTIC_SALES, INTERNATIONAL_SALES
FROM movies
INNER JOIN BOXOFFICE
ON ID = MOVIE_ID

-- 2. Show the sales numbers for each movie that did better internationally rather than domestically
SELECT TITLE, INTERNATIONAL_SALES, DOMESTIC_SALES
FROM MOVIES
INNER JOIN BOXOFFICE
ON ID = MOVIE_ID
WHERE INTERNATIONAL_SALES > DOMESTIC_SALES

-- 3. List all the movies by their ratings in descending order
SELECT * 
FROM MOVIES
INNER JOIN BOXOFFICE
ON ID = MOVIE_ID
ORDER BY RATING DESC