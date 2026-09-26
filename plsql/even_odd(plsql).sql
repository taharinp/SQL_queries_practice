DROP PROCEDURE IF EXISTS even_odd;

DELIMITER $$

CREATE PROCEDURE even_odd(IN num INT)
BEGIN
    IF num % 2 = 0 THEN
        SELECT 'even';
    ELSE
        SELECT 'odd';
    END IF;
END$$

DELIMITER ;