-- Intoduction to SQL
-- SQL : Structured Query Language
-- TO Query, manipulate, and transform data from a relational database.

-- Relational Database : A collection of related tables that store data in a structured format. Each table consists of rows and columns, where each row represents a record and each column represents a field or attribute of the data.

-- SQL Lesson 1 : Select Queries 101

-- ✅ Select query for a specific columns
SELECT column1, another_column, ...
FROM mytable;

-- ✅ Select query for all columns
SELECT *
FROM mytable;

-- 👀 Exercise
-- Use database with data about some of Pixar's classic movies for most of our exercises.

-- Exercise 1 — Tasks
-- 1. Find the title of each film ✓
SELECT title 
FROM movies;

-- 2. Find the director of each film
SELECT DIRECTOR
FROM MOVIES;

-- 3. Find the title and director of each film
SELECT TITLE, DIRECTOR
FROM MOVIES;

-- 4. Find the title and year of each film
SELECT TITLE, YEAR
FROM MOVIES;

-- 5. Find all the information about each film
SELECT *
FROM MOVIES;