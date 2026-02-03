-- Switch to the database
USE my_db;

-- Show all tables
SHOW TABLES;

-- Select all records from tables
SELECT * FROM std;
SELECT * FROM p_tab;
SELECT * FROM tab;
SELECT * FROM new_tab;

-- Arithmetic queries on p_tab
SELECT id, name, roll, roll+10 FROM p_tab;
SELECT id, name, roll, roll+10 AS "new roll" FROM p_tab;
SELECT id, name, roll, roll-10 AS "new roll" FROM p_tab;
SELECT id, name, roll, roll*5 AS "new roll" FROM p_tab;
SELECT id, name, roll, roll/5 AS "new roll" FROM p_tab;
