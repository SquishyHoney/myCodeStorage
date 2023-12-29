DELIMITER //
CREATE PROCEDURE oddEven(/*IN Var CHAR(30)*/)
BEGIN
    /*Program Here*/
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE countme(OUT result INTEGER)
BEGIN 
    SELECT COUNT(*) INTO result FROM emp;
END //
DELIMITER ;


SET @totalemp = 0;
CALL count(@totalemp);
CALL @totalemp;


CALL oddEven();
DROP PROCEDURE oddEven;


--------------------------------------------------
IF /**/ THEN
    /**/
    ELSE IF /**/ THEN
        /**/
        ELSE /**/
END IF;


CASE /**/
    WHEN /**/ THEN
        /**/
    ELSE
        /**/
END CASE;


WHILE /**/ DO
END WHILE;


REAPET
    /**/
UNTIL /**/ END REPEAT;


i:LOOP
    -- LEAVE
    -- ITERATE
END LOOP i;