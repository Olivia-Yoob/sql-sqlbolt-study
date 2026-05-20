-- SQL Lesson 14 : Updating Rows

-- Have to specify exactly which table, columns, and rows to update. In addition, the data you are updating has to match the data type of the columns in the table schema.

-- Update statement with values
UPDATE mytable
SET column = value_or_expression,
    column2 = value_or_expression2
WHERE condition;

-- you need to be extra careful when constructing UPDATE statements.
-- Tip : always write the constaints first and test it in a SELCET query to make sure you are updating the right rows. 


--- 👀 Exercise
-- Exercise 14 — Tasks
--1. The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
UPDATE MOVIES
SET DIRECTOR = 'John Lasseter'
WHERE TITLE LIKE 'A BUG''S LIFE';

--2. The year that Toy Story 2 was released is incorrect, it was actually released in 1999
UPDATE MOVIES
SET YEAR = 1999
WHERE TITLE LIKE 'TOY STORY 2'

--3. Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
UPDATE MOVIES
SET DIRECTOR = 'Lee Unkrich',
    TITLE = 'Toy Story 3'
WHERE TITLE LIKE 'TOY STORY 8';