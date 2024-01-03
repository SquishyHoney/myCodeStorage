-- Using a cursor
-- Normal SELECT yang return data lebih dari 1 baris akan susah
/*
Bisa Pake CURSOR:
-DECLARE CURSOR
-OPEN CURSOR
-FETCH CURSOR
-CLOSE CURSOR
*/

DECLARE takethis CURSOR FOR SELECT * FROM emp;
OPEN takethis;
FETCH takethis INTO test,test2; --Auto Next Row
CLOSE takethis;

DELIMITER //
CREATE PROCEDURE usingCursor()
BEGIN
    DECLARE i INT;
    DECLARE j INT;
    DECLARE mahasiswa CHAR(50);
    DECLARE takethis CURSOR FOR SELECT nama from emp;
    
    OPEN takethis;
    CREATE TEMPORARY TABLE showMahasiswa(
        m_name CHAR(50)
    );
    
    SELECT COUNT(*) INTO i FROM emp;
    
    SET j = 0;

    WHILE j < i DO
        FETCH takethis INTO mahasiswa;
        INSERT INTO showMahasiswa(m_name) VALUES (mahasiswa);
        SET j = j+1;
    END WHILE;

    CLOSE takethis;

    SELECT m_name "Nama Orang" FROM showMahasiswa;
    DROP TEMPORARY TABLE IF EXISTS showMahasiswa; 
    

END //
DELIMITER ;


--Stored Procedure can change global variable
SET @procedure_touched = 0;

SET @number = 1;
SET @number := 1;

DELIMITER //
CREATE PROCEDURE aaa()
BEGIN
    SET @procedure_touched := (SELECT COUNT(*) FROM emp);
END //
DELIMITER ;

CREATE TABLE logs(
    LOG VARCHAR(255)
);

CREATE TRIGGER test AFTER INSERT ON emp
FOR EACH ROW INSERT INTO LOGS VALUES("Something Came in",NOW());

INSERT INTO emp(id,nama) VALUES ('o','Rionaldoa');

CREATE FUNCTION count_actor () RETURNS INTEGER
BEGIN
    RETURN (SELECT COUNT(*) FROM emp);
END


CREATE TRIGGER name 
    BEFORE|AFTER 
        INSERT|UPDATE|DELETE ON emp FOR EACH ROW
        do something

CREATE TRIGGER 