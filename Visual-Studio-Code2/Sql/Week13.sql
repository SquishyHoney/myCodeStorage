-- CURSOR so we can select 2 or more rows from a TABLE --
DECLARE emp_age CURSOR FOR select first_name,age from employee;
OPEN emp_age;

DELIMITER //
CREATE PROCEDURE showMe()
BEGIN
    DECLARE emp_age CURSOR FOR SELECT first_name,age FROM employee;
END //

DELIMITER ;

---------------------------------------------------------
CREATE PROCEDURE show_all_movies ()
BEGIN
    DECLARE movie_name VARCHAR(40);
    DECLARE number_of_movies, movies_counter INTEGER;
    DECLARE c_movies CURSOR FOR SELECT name FROM movies;
    OPEN c_movies;
    CREATE TEMPORARY TABLE movies_list (title VARCHAR(50));
    SELECT COUNT(*) INTO number_of_movies FROM movies;
    SET movies_counter = 0;
    WHILE movies_counter < number_of_movies DO
    FETCH c_movies INTO movie_name;
    INSERT INTO movies_list(title) VALUES(movie_name);
    SET movies_counter = movies_counter + 1;
    END WHILE;
    CLOSE c_movies;
    SELECT title “Movie Title” FROM movies_list;
    DROP TEMPORARY TABLE movies_list;
END

-------------------------------------------------------------------

DELIMITER //
CREATE PROCEDURE show_emp()
BEGIN
    DECLARE nama VARCHAR(30);
    DECLARE jumlah_orang, i INTEGER;

    DECLARE c_emp CURSOR FOR select first_name from employee;
    OPEN c_emp;

    CREATE TEMPORARY TABLE temp1(
        temp_name VARCHAR(30)
    );

    SELECT COUNT(*) INTO jumlah_orang FROM employee;
    SET i = 0;

    WHILE i<jumlah_orang DO 
        FETCH c_emp INTO nama;
        INSERT INTO temp1 (temp_name) VALUES (nama);
        SET i = i+1;
    END WHILE;
    
    CLOSE c_emp;
    SELECT temp_name "Total Penumpang" FROM temp1;
    DROP TEMPORARY TABLE temp1;

END //
DELIMITER ;

-------------------------------------------------------------------------------
-- Kita bisa menganti Global variable dengan procedure
--  GLobal is saved because it is outside
SET @globalnumber = 1;

DELIMITER //
CREATE PROCEDURE tambah(IN nomor INTEGER)
BEGIN
    SET @globalnumber = @globalnumber + nomor;
END //
DELIMITER ;

SELECT @globalnumber;

SHOW PROCEDURE STATUS; -- Kasih Liat Semua prosedur -- 
SHOW PROCEDURE STATUS LIKE 'Name';
SHOW CREATE PROCEDURE 'name';





DELIMITER // 
CREATE PROCEDURE getName(IN id VARCHAR(30))
BEGIN
    DECLARE c_emp CURSOR FOR SELECT first_name FROM employee; 
    OPEN c_emp;

    CREATE TEMPORARY TABLE temp1(
        nama VARCHAR(30)
    );



END //
DELIMITER ;




-- In case Other Id --
GRANT EXECUTE ON PROCEDURE nama_prosedur
TO @name;


-- STORED FUNCTIONS --
DELIMITER //
CREATE FUNCTION getID(id VARCHAR(20)) RETURNS VARCHAR(255)
BEGIN 

    DECLARE selected_name VARCHAR(255);

    SELECT CONCAT(first_name,' ',last_name) INTO selected_name
            FROM employee
            WHERE emp_id = id;
    
    RETURN selected_name;

END //
DELIMITER ;


MariaDB [temp3]> SELECT getID('AI0001');
+-----------------+
| getID('AI0001') |
+-----------------+
| Tony Thang      |
+-----------------+
1 row in set (0.000 sec)

MariaDB [temp3]>

------------------------------------------------------------------

DELIMITER //
CREATE FUNCTION count_emp() RETURNS INTEGER
BEGIN
    RETURN (SELECT COUNT(*) FROM employee);
END //
DELIMITER ;

SELECT count_emp();
DROP FUNCTION IF EXISTS count_emp;

GRANT EXECUTE ON FUNCTION count_emp() TO @user;

---------------------------------------------------------
CREATE TRIGGER test_trigger
    BEFORE
    INSERT ON temp_trigger FOR EACH ROW
----------------------------------------------------------
CREATE TABLE temp_table(
    first_name VARCHAR(30),
    id INT(3)
);

INSERT INTO temp_table(first_name,id)
VALUES ('John Thor',1);


DELIMITER //
CREATE TRIGGER temp_trigger
    AFTER INSERT ON temp_table FOR EACH ROW
BEGIN 
    INSERT INTO 
END // 
DELIMITER ;


-----------------------------------------------
ALTER TABLE employee
ADD COLUMN color VARCHAR(30) AFTER gender;

ALTER TABLE employee
ADD COLUMN usd INT(30) AFTER salary;

CREATE TRIGGER before_color_update
BEFORE UPDATE ON employee FOR EACH ROW
SET NEW.usd = (NEW.salary/16000);




------------------------------------
-- SYNTAX 
DECLARE .!. CURSOR FOR SELECT ...
OPEN .!.;

FETCH .!. INTO temp_holder 

CREATE FUNCTIOn ...() RETURNS INTEGER
BEGIN
END
















