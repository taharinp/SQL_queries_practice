-- Show databases
SHOW DATABASES;

-- Use database
USE emp;

-- Show tables
SHOW TABLES;

-- View data
SELECT * FROM emp;

-- Rename column
ALTER TABLE emp
CHANGE COLUMN name e_name VARCHAR(50);

-- Rename multiple columns
ALTER TABLE emp
CHANGE COLUMN e_name emp_name VARCHAR(50),
CHANGE COLUMN city cittyyy VARCHAR(50);

-- Create table
CREATE TABLE test (
    id INT UNIQUE KEY,
    name VARCHAR(50)
);

-- Describe table
DESC test;

-- Rename column + add primary key
ALTER TABLE test
CHANGE COLUMN id emp_id INT NOT NULL,
ADD PRIMARY KEY (emp_id);

-- Modify column datatype
ALTER TABLE test
MODIFY COLUMN name CHAR(40);

-- Modify column with NOT NULL
ALTER TABLE test
MODIFY COLUMN name CHAR(40) NOT NULL;

-- Drop column
ALTER TABLE test
DROP COLUMN name;

-- Show index
SHOW INDEX FROM test;

-- Drop index
ALTER TABLE test
DROP INDEX id;

-- Drop table
DROP TABLE employee;

-- Truncate table
TRUNCATE TABLE k;

-- Rename table
RENAME TABLE emp TO employe;

-- Use another database
USE my_db;

-- Show tables
SHOW TABLES;

-- Show columns
SHOW COLUMNS FROM my_tab;

-- Update row
UPDATE my_tab
SET name = 'kumar', roll = 28
WHERE id = 10;

-- Update column
UPDATE my_tab
SET pin = 587
WHERE id = 10;

-- Add column
ALTER TABLE my_tab
ADD COLUMN result VARCHAR(50);

-- Update using CASE
UPDATE my_tab
SET result =
CASE
    WHEN roll > 30 THEN 'group A'
    WHEN roll < 30 THEN 'group B'
    ELSE 'group AA'
END;

-- Update single row
UPDATE my_tab
SET result = 'group A'
WHERE id = 10;

-- Delete rows
DELETE FROM my_tab
WHERE id = 98;

-- Create table using LIKE
CREATE TABLE student LIKE my_tab;

-- Insert data from another table
INSERT INTO student
SELECT * FROM my_tab;

-- Create new database
CREATE DATABASE new_db;

-- Use new database
USE new_db;

-- Create table from another database
CREATE TABLE p_tab LIKE my_db.p_tab;

-- Insert data from another database table
INSERT INTO p_tab
SELECT * FROM my_db.p_tab;

-- View data
SELECT * FROM p_tab;
