DELIMITER $$

CREATE PROCEDURE compare(IN num1 INT, IN num2 INT)
BEGIN
    IF num1 > num2 THEN
        SELECT "num1 is greater";
    ELSEIF num1 < num2 THEN
        SELECT "num2 is greater";
    ELSE
        SELECT "both are same";
    END IF;
END$$

DELIMITER ;