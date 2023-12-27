--Store Procedure--


/*Show All Tables*/
DELIMITER //
CREATE PROCEDURE showData()
BEGIN

    SELECT * FROM emp;
    SELECT * FROM campus;
    SELECT * FROM country;

END //
DELIMITER ;


/*Get by Id*/
DELIMITER //
CREATE PROCEDURE getId(IN id VARCHAR(255))
BEGIN
    SELECT * FROM emp
    WHERE emp.id = id;
END //
DELIMITER ;


/*Get Name*/
DELIMITER //
CREATE PROCEDURE getData(IN selected_id VARCHAR(2))
BEGIN

    SELECT 
        nama AS 'Name',
        kampus AS 'Campus',
        negara AS 'In'
    FROM 
        emp AS a
    RIGHT JOIN
        campus AS b ON (a.id = b.id)
    RIGHT JOIN
        country c ON (a.id = c.id)
    WHERE a.id = selected_id;

END //
DELIMITER ;



CALL showData();    --MESTI PAKE CALL
DROP PROCEDURE showData;    --GABOLEH PAKE ()


-- USING DECLARE
DELIMITER //
CREATE PROCEDURE nama()
BEGIN
    DECLARE number1,number2 INTEGER;
    SET number1 = 1;
    SET number2 = 2;
END //
DELIMITER ;

/*ODD or EVEN*/
DELIMITER //
CREATE PROCEDURE oddEven(IN i INT)
BEGIN
    DECLARE sentence VARCHAR(255);
    SET sentence = '';

    IF i % 2 = 0 THEN
        SET sentence = CONCAT(i,' Is Even');
    ELSE 
        SET sentence = CONCAT(i,' Is Odd');
    END IF;

    SELECT sentence "Odd Even";
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE oddEven(IN i INT)
BEGIN
    DECLARE sen CHAR(100);
    SET sen = '';

    CASE 
        WHEN i = 0 THEN 
            SET sen = CONCAT(i,' Is Zero');
        WHEN i % 2 = 0 THEN
            SET sen = CONCAT(i,' Is Even');
        WHEN i % 2 = 1 THEN
            SET sen = CONCAT(i,' Is Odd');
    END CASE;

    SELECT sen 'Result Is';

END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE oddEven(IN i INT)
BEGIN
    DECLARE sen CHAR(100);
    SET sen = '';

    CASE i % 2
        WHEN 0 THEN
            SET sen = CONCAT(i,' Is Even');
        WHEN 1 THEN
            SET sen = CONCAT(i,' Is Odd');
    END CASE;

    SELECT sen 'Result Is';

END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE shape(IN panjang INT)
BEGIN
    DECLARE i INT;
    SET i = 0;
    CREATE TEMPORARY TABLE square(
        shaper INT
    );
    WHILE i < panjang DO
        INSERT INTO square(shaper)
        VALUES(i);
        SET i = i+1;
    END WHILE;
    SELECT * FROM square;
    DROP TEMPORARY TABLE square;
END // 
DELIMITER ;


DELIMITER //
CREATE PROCEDURE usingRepeat(IN tinggi INT)
BEGIN

    DECLARE i INT;
    SET i = 0;

    CREATE TEMPORARY TABLE temp(
        num INT
    );

    REPEAT 
        INSERT INTO temp(num) VALUES (i);
        SET i = i + 1;
    UNTIL i > tinggi END REPEAT;

    SELECT * FROM temp;
    DROP TEMPORARY TABLE IF EXISTS temp;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE showodd(IN lim INT)
BEGIN

END //
DELIMITER ; 


DELIMITER //
CREATE PROCEDURE usingloop(IN i INT)
BEGIN
    DECLARE num INT;
    SET num = 0;
    CREATE TEMPORARY TABLE odd_numbers(
        item INT
    );

    odd:LOOP
        SET num = num + 1;
        IF num > i 
            THEN LEAVE odd;
        END IF;
        IF num % 2 = 0
            THEN ITERATE odd;
        END IF;
        INSERT INTO odd_numbers(item)
        VALUES(num);
    END LOOP odd;

    SELECT item "Hasilnya" FROM odd_numbers;
    DROP TEMPORARY TABLE IF EXISTS odd_numbers;

END //
DELIMITER ;

-- RETRIEVE DATA FROM STORED PROCEDURE --
-- 1 data we use SELECT INTO statement
--  INTO clause we specify the variable name
-- multiple rows We need CURSOR
-- WHY DELIMITER?
-- Because sql needs something to recognize an end
-- of a statement thats why delimiter is needed 
-- := Asigning variable
/*
Dont forget :
SELECT
FROM
JOIN
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT
*/











