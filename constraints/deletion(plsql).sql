
DELIMITER $$

CREATE PROCEDURE record_deletion(
    IN salary INT
    
)
BEGIN
   delete from emp where salary =salary;

    SELECT * FROM emp;
END$$

DELIMITER ;