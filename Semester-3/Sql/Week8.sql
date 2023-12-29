-- Mengetahui Siapa lulus dimana -- 
SELECT CONCAT(first_name,' ',last_name) AS Employee, universitas, jurusan, country
FROM employee,lulusan
WHERE employee.emp_id = lulusan.emp_id;

-- Mengunakan Instantasi Sebagai table name --
SELECT CONCAT(a.first_name, ' ',a.last_name) AS Full_Name, CONCAT(b.country,' : ',b.universitas) AS Lulusan_Universitas
FROM employee AS a, lulusan AS b
WHERE a.emp_id = b.emp_id;


-- WARNING --
MariaDB [seven_code_tech]> 
    -> SELECT CONCAT(first_name,' ',last_name) AS Employee, universitas, jurusan, country
    -> FROM employee,lulusan
    -> WHERE emp_id = emp_id;
-- ERROR 1052 (23000): Column 'emp_id' in where clause is ambiguous -- 

UPDATE lulusan SET universitas = 'Yuan Ze' WHERE emp_id = 'WEB0002';


-- WEEK 8 SLIDE -- 
SELECT CONCAT(e.first_name,' ',e.last_name) AS full_Name, 
    k.color,
    k.movie,
    l.jurusan,
    l.universitas
FROM employee AS e,lulusan AS l,kesukaan AS k
WHERE e.emp_id = l.emp_id AND k.emp_id = e.emp_id;


-- EXPLICIT JOINS --
SELECT CONCAT(e.first_name,' ',e.last_name) AS full_name, l.universitas AS kampus
FROM employee AS e

JOIN lulusan AS l ON (e.emp_id = l.emp_id);
INNER JOIN lulusan AS l ON (e.emp_id = l.emp_id);


-- JOIN JOIN -- 
SELECT CONCAT(e.first_name,' ',e.last_name) AS 'full name',


-------------------------------------------------------------
CREATE TABLE one(
    id INT(3) NOT NULL PRIMARY KEY,
    nama VARCHAR(225),
    refrence_by INT(3) NOT NULL
);

CREATE TABLE two(

);

INSERT INTO one(id,nama,refrence_by)
VALUES (1,'Daren',4),
       (2,'Charlie',4),
       (3,'Brad',2);
INSERT INTO one(id,nama)
VALUES (4,'EVANDER NIKOLAI');

INSERT INTO two()
VALUES ();

--------------------------------------------------------------
-- NEW --
--------------------------------------------------------------

SELECT CONCAT(e.first_name,' ',e.last_name) AS 'Nama Panjang', j.universitas AS UNIV 
FROM employee AS e, lulusan AS j
WHERE e.emp_id = j.emp_id;


-- MULTIPLE TABLE SPESIFICATION --
SELECT CONCAT(a.first_name,' ',a.last_name) AS 'Nama',b.universitas UNIV,c.movie Film
FROM employee AS a,
     lulusan AS b,
     kesukaan AS c
WHERE a.emp_id = b.emp_id AND a.emp_id = c.emp_id;

SELECT CONCAT(a.first_name,' ',a.last_name) 'Full Name',
       b.universitas UNIV,
       c.movie ENTERTAIN
FROM employee AS a
JOIN lulusan AS b ON (a.emp_id = b.emp_id)
JOIN kesukaan AS c ON (a.emp_id = c.emp_id);



-- EXPLICIT JOINS IN THE FROM CLAUSE -- 
SELECT a.first_name NAMA, b.universitas UNIV 
FROM employee AS a
JOIN lulusan AS b ON (a.emp_id = b.emp_id);


--INNER JOIN--
SELECT a.first_name, b.universitas UNIV 
FROM employee AS a
INNER JOIN lulusan AS b ON (a.emp_id = b.emp_id);




-- USING Condition --

SELECT CONCAT(a.first_name,' ',a.last_name) 'Full Name',
       b.universitas UNIV,
       c.movie ENTERTAIN
FROM employee AS a
JOIN lulusan AS b USING (emp_id)
JOIN kesukaan AS c USING (emp_id);







-- NATURAL Join -- 

ALTER TABLE lulusan MODIFY emp_id VARCHAR(10) PRIMARY KEY;
ALTER TABLE kesukaan MODIFY emp_id VARCHAR(10) PRIMARY KEY;

SELECT CONCAT(a.first_name,' ',a.last_name) AS 'Full Name',
       b.universitas 'Study',
       c.movie 'Kesukaan'
FROM employee AS a
NATURAL JOIN lulusan AS b
NATURAL JOIN kesukaan AS c;


-- LEFT JOIN --
SELECT CONCAT(a.first_name,' ',a.last_name) AS 'Full Name',
       b.universitas 'Study'
FROM employee AS a
LEFT JOIN lulusan AS b USING (emp_id); -- This will display ghost

SELECT CONCAT(a.first_name,' ',a.last_name) AS 'Full Name',
       b.universitas 'Study'
FROM employee AS a
RIGHT JOIN lulusan AS b USING (emp_id); -- This will NOT display ghost

SELECT CONCAT(a.first_name,' ',a.last_name) AS 'Full Name',
       b.universitas 'Study'
FROM employee AS a
RIGHT OUTER JOIN lulusan AS b USING (emp_id);

-- USING UNION -- 
-- SELECTING Female and Old 40+ People-- 
SELECT first_name,last_name,gender,age,departement
FROM employee 
WHERE gender LIKE 'F'
UNION
SELECT first_name,last_name,gender,age,departement
FROM employee
WHERE age > 25;


SELECT first_name,last_name,gender,age,departement
FROM employee
WHERE age > 25
UNION 
SELECT first_name,last_name,gender,age,departement
FROM employee 
WHERE gender LIKE 'F';

-- UNION 
-- UNION ALL with duplicates



-- SQL SYNTAX -- 
SELECT ... FROM employee AS a 
JOIN tb1 AS b ON (a.id = b.id)
JOIN tb2 AS c ON (a.id = c.id);

NATURAL JOIN tb1 AS b;
INNER JOIN tb1 AS b ON (a.id = b.id);
JOIN tb1 AS b USING (a.id = b.id);

-- LEFT JOIN (Left Dominant)
-- RIGHT JOIN (Right Dominant)
-- LEFT OUTER JOIN (Left Dominant)
-- RIGHT OUTER JOIN (Right Dominant)

-- UNION 
-- UNION ALL with duplicates

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