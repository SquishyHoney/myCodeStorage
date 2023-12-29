-- PROCEDURAL STATEMENTS ------------------------------------------------------- 
DELIMITER //
CREATE PROCEDURE print_all()
BEGIN
    SELECT first_name,gender,age
    FROM employee;
END //
DELIMITER ;

CALL print_all();
DROP PROCEDURE print_all;

---------------------------------------------------------------------------------

DELIMITER //
CREATE PROCEDURE find_emp(IN a INT(4))
BEGIN 
    SELECT * FROM employee
    WHERE age = a;
END //
DELIMITER ;

CALL find_emp();
DROP PROCEDURE find_emp;

---------------------------------------------------------------------------------

DELIMITER //
CREATE PROCEDURE odd_even(IN num INT(4))
BEGIN
    DECLARE hasil VARCHAR(30);
    SET hasil = '';

    if num %2 = 0 THEN
        SET hasil = CONCAT(num,' ','Is Even');
    ELSE 
        SET hasil = CONCAT(num,' ','Is Odd');
    END IF;

    SELECT hasil "Odd Or Even";

END //
DELIMITER ;

---------------------------------------------------------------------------------

DELIMITER //
CREATE PROCEDURE odd_even(IN num INTEGER)
BEGIN
    DECLARE result VARCHAR(255);

    SET result = '';

    CASE num %2 
        WHEN 0 THEN
            SET result = CONCAT(num,' ','Is an even number');
        WHEN 1 THEN
            SET result = CONCAT(num,' ','Is an odd number');
    END CASE;

    SELECT result "Odd Or Even?";

END //
DELIMITER ;

---------------------------------------------------------------------------------

DELIMITER //
CREATE PROCEDURE show_numbers(IN upper_limit INTEGER)
BEGIN

    DECLARE i INTEGER;

    CREATE TEMPORARY TABLE sequence_numbers (
        numbers INTEGER
    );

    SET i = 0;
    WHILE i < upper_limit DO 
        INSERT INTO sequence_numbers(numbers) VALUES (i);
        SET i = i+1;
    END WHILE;

    SELECT numbers "Numbers" FROM sequence_numbers;
    DROP TEMPORARY TABLE sequence_numbers;

END //
DELIMITER ;

---------------------------------------------------------------------------------

DELIMITER // 
CREATE PROCEDURE show_numbers(IN batas INTEGER)
BEGIN
    
    DECLARE i INTEGER;
    SET i = 0;

    CREATE TEMPORARY TABLE temp1 (
        nomor INTEGER
    );

    REPEAT 
        INSERT INTO temp1(nomor) VALUES (i);
        SET i = i+1;
    UNTIL i >= batas
    END REPEAT;

    SELECT nomor "Hasil Tabel" FROM temp1;
    DROP TEMPORARY TABLE temp1;

END //
DELIMITER ;

---------------------------------------------------------------------------------

DELIMITER //
CREATE PROCEDURE show_odd(IN batas INTEGER)
BEGIN
    DECLARE i INTEGER;
    SET i = 0;

    CREATE TEMPORARY TABLE temp1(
        nomor INTEGER
    );

    odd: LOOP
        SET i = i+1;
        IF i > batas THEN LEAVE odd; END IF;
        IF i%2 = 0 THEN ITERATE odd; END IF;
        INSERT INTO temp1(nomor) VALUES (i);
    END LOOP odd;

    SELECT nomor "Lihatlah Ini" FROM temp1;
    DROP TEMPORARY TABLE temp1;

END //
DELIMITER ;

---------------------------------------------------------------------------------
-- Querying Data into Procedures

DELIMITER //
CREATE PROCEDURE getTotal(OUT countMe INTEGER)
BEGIN
    SELECT COUNT(*) FROM employee;
END //
DELIMITER ;

CALL getTotal(@nomor);
SELECT @nomor;



-- SQL SYNTAX -- 
DELIMITER // 
CREATE PROCEDURE a(IN,OUT,INOUT ...)
BEGIN
...
END //
DELIMITER ;

--
CALL a();
DROP PROCEDURE a;

IF-ELSE :
    IF statement 
        SET....
    ELSE
        SET ...
    END IF

CASE :
    CASE statement
        WHEN ... THEN 
            SET ...
        WHEN ... THEN 
            SET ..
    END CASE;

------------------------------------
-- SYNTAX 
DECLARE .!. CURSOR FOR SELECT ...
OPEN .!.;

FETCH .!. INTO temp_holder 

CREATE FUNCTIOn ...() RETURNS INTEGER
BEGIN
END