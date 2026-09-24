DROP PROCEDURE IF EXISTS record_insertion;

DELIMITER $$

CREATE PROCEDURE record_insertion(
    IN eid INT,
    IN ename VARCHAR(50),
    IN dob DATE,
    IN email VARCHAR(50),
    IN salary DECIMAL
)
BEGIN
    INSERT INTO emp(eid, name, dob, email, salary)
    VALUES(eid, ename, dob, email, salary);

    SELECT * FROM emp;
END$$

DELIMITER ;