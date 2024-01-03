DELIMITER //
CREATE PROCEDURE kendy(IN num INT)
BEGIN
END //
DELIMITER ;


IF ... THEN
    ELSE IF ... THEN
    ELSE ...
END IF;


CASE 
    WHEN ... THEN
    WHEN ... THEN
END CASE;


CASE ...
    WHEN (result) THEN
    WHEN (result) THEN
END CASE;


loopname : LOOP
    IF ... THEN ITERATE
    IF ... THEN LEAVE
END LOOP loopname;


WHILE ... DO 
    SET ...
END WHILE;


REPEAT
    ...
UNTIL ... END REPEAT