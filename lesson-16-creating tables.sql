-- SQL Lesson 16 : Creating Tables
-- when you have new entities and relationships to store in your database, you can create a new database table using the CREATE TABLE statement.

-- create table statement w/ optional table constraint and default value
CREATE TABLE IF NOT EXISTS MYTABLE(
    COLUMN DATATYPE TABLECONSTRAINT DEFAULT DEFULT_VALUE
    ANOTHER_COLUMN DATATYPE TABLECONSTRAINT DEFAULT DEFULT_VALUE
)

-- table schema, which defines a series of columns.
-- to suppress the error and skip creating a table if one exists, you can use the IF NOT EXISTS clause.

-- Table data types
-- INTEGER, BOOLEAN : integer values like the count of a number or an age. or just 0 or 1
-- FLOAT, DOUBLE, REAL : can store more precise numerical data like measurements or fractional values.
-- CAHAR, VARCHAR, TEXT : specified with the max numbner of characters that they can store.
-- DATE, TIME, DATETIME : keep track of time series and event data.
-- BLOB : can store binary data like images or files.

-- Table constraints
-- PRIMARY KEY : uniquely identifies each record in a table. It ensures that the values in the
-- specified column(s) are unique and not null. A table can have only one primary key, which can consist of one or multiple columns (composite primary key).
-- FOREIGN KEY : establishes a link between two tables by referencing the primary key of another table.
-- UNIQUE : ensures that all values in a column or a set of columns are unique across the table. It allows for null values, but each non-null value must be unique.
-- NOT NULL : ensures that a column cannot have null values. Every record must have a value
-- CHECK : enforces a specific condition on the values in a column. It allows you to specify a boolean expression that must evaluate to true for any data inserted or updated in the column.
-- DEFAULT : sets a default value for a column when no value is provided during an insert operation
-- AUOTOINCREMENT : automatically generates a unique value for each new record inserted into the table. It is often used in conjunction with the PRIMARY KEY constraint to create a unique identifier for each record.

--- 👀 Exercise
--- Create a new table named Database with the following columns:
--- – Name A string (text) describing the name of the database
--- – Version A number (floating point) of the latest version of this database
--- – Download_count An integer count of the number of times this database was downloaded
--- This table has no constraints.
CREATE TABLE DATABASE (
    NAME TEXT,
    VERSION FLOAT,
    DOWNLOAD_COUNT INTEGER
);