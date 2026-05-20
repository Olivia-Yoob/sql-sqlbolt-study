-- SQL Lesson 13 : Inserting Rows

-- database shcema is what describes the structure of each table, and the datatypes that each column of the table can contain.
-- This fixed stucture is what allows a database to be efficient, and consistent despite storing millions or even billions of rows.

-- To insert rows into a table, we use the INSERT INTO statement. The syntax is as follows:
INSERT INTO MYTABLE
VALUES (VAULE_OR EXPR, ANOTHER VALUE_OR_EXPR, ...);

-- In some cases, if you have incomplete data and the table contains columns that support default values, you can insert rows with only the columns of data you have by specifying them explicitly.
INSERT INTO MYTABLE (COLUMN1, COLUMN2)
VALUES (VALUE_OR_EXPR, ANOTHER VALUE_OR_EXPR);

-- 컬럼명을 명시해서 INSERT 하면, 나중에 테이블 구조가 바뀌어도 기존 코드 수정이 덜 필요하다.
-- Example Insert statement with mathematical and string expressions
INSERT INTO boxoffice (movied_id, rating, sales_in_millions)
VALUES (1, 9.9, 28742034/1000000);



--- 👀 Exercise
-- Exercise 13 — Tasks

-- 1. Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
INSERT INTO MOVIES (Title, Director)
    VALUES ('Toy Story 4', 'Olivia Kim');

-- 2. Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table.
INSERT INTO BOXOFFICE (Movie_id, Rating, Domestic_sales, International_sales)
    VALUES (15, 8.7 , 340000000, 270000000);