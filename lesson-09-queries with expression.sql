-- SQL Lesson 9 : Queries with expressions

-- example query with expressions
SELECT PARTICLE_SPEED / 2.0 AS HALF_PARTICLE_SPEED
FROM PHSICS_DATA
WHERE ABS(PARTICLE_POSITION) * 10.0 > 500;

-- regular columns and even tables can also have aliases to make them easier to reference in the output and as a part of simplifying more complex queries.
SELECT COL_EXPRESSION AS EXPR_DESCRIPTION, ...
FROM MYTABLE


-- 👀 Exercise
-- 1. List all movies and their combined sales in millions of dollars
SELECT TITLE, (DOMESTIC_SALES + INTERNATIONAL_SALES)/1000000 AS COMBINED_SALES
FROM movies 
INNER JOIN BOXOFFICE
    ON ID = MOVIE_ID;

-- 2. List all movies and their ratings in percent
SELECT TITLE, RATING * 10
FROM MOVIES 
INNER JOIN BOXOFFICE
    ON ID = MOVIE_ID

-- 3. List all movies that were released on even number years
SELECT TITLE, YEAR
FROM MOVIES 
WHERE YEAR % 2 = 0
-- YEAR / 2 = 1 이명 2로 나눈 결과가 1인가를 의미하기 때문에 %를 사용해서 나머지가 0인지를 확인해야 함
