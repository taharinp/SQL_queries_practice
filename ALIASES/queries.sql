-- Show all databases
SHOW DATABASES;

-- Switch to the database
USE my_db;

-- Show all tables
SHOW TABLES;

-- Select all records from std table
SELECT * FROM std;

-- Select only the name column from std table
SELECT name FROM std AS widhyaarthi;

-- Select name column with alias
SELECT name AS std_name FROM std;

-- Select name column with alias using quotes
SELECT name AS 'std name' FROM std;
