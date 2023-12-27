DELIMITER //
CREATE PROCEDURE test()
BEGIN

    DECLARE i INT;
    DECLARE holdaa CHAR(30);
    DECLARE takeme CURSOR FOR
    SELECT nama FROM siswa;
    SET holdaa = '';
    SET i = 0;

    

    CREATE TEMPORARY TABLE a(
        temp CHAR(30);
    );
    OPEN takeme;
    WHILE i < @max DO
        FETCH takeme INTO holdaa;
        INSERT INTO a(temp) VALUES (holdaa);
        SET i = i + 1;
    END WHILE;
    CLOSE takeme;

    SELECT * FROM a;
    DROP TEMPORARY TABLE IF EXISTS a;

END //
DELIMITER ;



DELIMITER //
CREATE FUNCTION add_me() RETURNS INTEGER
BEGIN
    RETURN (SELECT COUNT(*) FROM siswa);
END //
DELIMITER ;




CREATE TRIGGER add_ 
    AFTER 
        INSERT ON emp
    FOR EACH ROW
        INSERT INTO siswa(nama) VALUES('test');


SHOW PROCEDURE STATUS;
SHOW PROCEDURE STATUS LIKE '';
SHOW CREATE PROCEDURE /*Name*/;

-- DROP TRIGGER SAMA KEK DROP PROCEDURE