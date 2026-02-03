-- Show all databases
SHOW DATABASES;

-- Use the emp database
USE emp;

-- Select all records from emp table
SELECT * FROM emp;

-- Insert a new record into emp table
INSERT INTO emp VALUES (10, 'pops', 'delhi');

-- Select all records again
SELECT * FROM emp;

-- Select distinct cities from emp table
SELECT DISTINCT city FROM emp;
