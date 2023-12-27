-- Using a cursor
-- Normal SELECT yang return data lebih dari 1 baris akan susah
/*
Bisa Pake CURSOR:
-DECLARE CURSOR
-OPEN CURSOR
-FETCH CURSOR
-CLOSE CURSOR
*/

CREATE TABLE emp1(
    id VARCHAR(255),
    nama VARCHAR(255)
);

DECLARE /**/ CURSOR FOR /*Select Statement*/;
OPEN /**/;
FETCH /**/ INTO test1,test2; -- AUTO NEXT ROW
CLOSE /**/;


SET @gobal := (SELECT COUNT(*) FROM emp)


-- Make another Cursor

DELIMITER //
CREATE PROCEDURE intoemp1()
BEGIN

    DECLARE id_temp,name_temp VARCHAR(50);
    DECLARE i INT;
    DECLARE getdata CURSOR FOR SELECT id,nama FROM emp;

    SET i = 0;
    SET @number := (SELECT COUNT(*) FROM emp);
    SET id_temp = '';
    SET name_temp = '';

    OPEN getdata;
    WHILE i < @max DO
        FETCH getdata INTO id_temp,name_temp;
        INSERT INTO emp1(id,nama) VALUES(id_temp,name_temp);
        SET i = i+1;
    END WHILE;
    CLOSE getdata;

END //
DELIMITER ;

--ADD INTO global
DELIMITER //
CREATE PROCEDURE addd()
BEGIN
    SET @number = @number + 1;
END //
DELIMITER ;


CREATE TABLE logs(
    LOG VARCHAR(255);
);


SHOW PROCEDURE STATUS;
SHOW PROCEDURE STATUS LIKE '';
SHOW CREATE PROCEDURE /*Name*/;

mysql -u Aldwin -p
GRANT EXECUTE ON PROCEDURE 
TO grantees;





SELECT * FROM emp
UNION
SELECT * FROM campus
UNION
SELECT * FROM campus;

--Buat gabung Statement 
--JOIN buat variable