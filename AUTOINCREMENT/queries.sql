SHOW DATABASES;
USE emp;
CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO employee (name, city) VALUES ('Raj', 'Delhi');
INSERT INTO employee (name, city) VALUES ('Rani', 'Pune');
INSERT INTO employee (name, city) VALUES ('Poja', 'Delhi');
SELECT * FROM employee;
