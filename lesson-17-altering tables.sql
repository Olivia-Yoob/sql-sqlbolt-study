-- SQL Lesson 17 : Altering Tables

-- ALTER TABLE statement allows you to modify the structure of an existing table. You can add, delete, or modify columns in a table using this statement.

-- Add a new column to an existing table
ALTER TABLE mytable
ADD Column DATATYPE OptionalTableConstraint
    DEFAULT DefaultValue;

-- Removing columns 
ALTER TABLE mytable
DROP COLUMN ColumnName;
-- Some databases don't support this feature, so you may have to create a new table and migrate the data over.

-- Renaming the table 
ALTER TABLE MYTABLE 
RENAME TO NEWTABLENAME;

--- 👀 Exercise
-- Exercise 17 — Tasks
-- 1. Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in.
ALTER TABLE MOVIES
ADD Aspect_ratio FLOAT;

-- 2. Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English.
ALTER TABLE MOVIES
ADD Language TEXT
    DEFAULT English;