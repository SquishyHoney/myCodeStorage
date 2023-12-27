Week 3 Syntax

CREATE DATABASE name;
CREATE TABLE name;
SHOW DATABASES;
SHOW TABLES;
DROP DATABASE name;
DROP TABLE name;
USE DATABASE name;

CREATE TABLE Mahasiswa(
    absen INT(3) ZEROFILL UNIQUE,
    nim INT(5) PRIMARY KEY NOT NULL,
    nama_depan CHAR(30) NOT NULL,
    birth_date DATE NOT NULL,
    gpa FLOAT(5,2) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M','F'))

    //xForeign INT(1)//

);

//Foreign Key:
//FOREIGN KEY (xForeign) REFERENCES nama_table(id_disana)

INSERT INTO Mahasiswa(absen,nim,nama_depan,birth_date,gpa,gender)
VALUES
(1,11,'Benedictus','2000-01-29',3.96,'M');

SELECT * FROM Mahasiswa;

INSERT INTO Mahasiswa(absen,nim,nama_depan,birth_date,gpa,gender)
VALUES
(3,13,'Ganyu','2004-12-04',3.17,'F'),
(4,15,'Yanfei','1997-10-11',3.76,'F'),
(2,12,'Evander','2004-01-29',4.00,'M'),
(5,16,'Mona','2001-05-19',3.00,'F'),
(6,18,'Diluc','2001-07-21',2.50,'M'),
(8,17,'Razor','1990-10-21',3.65,'M');

INSERT INTO Mahasiswa(absen,nim,nama_depan,birth_date,gpa,gender)
VALUES
(7,20,'Collei','2003-09-14',2.97,'F');

Hasil :
+-------+-----+------------+------------+------+--------+
| absen | nim | nama_depan | birth_date | gpa  | gender |
+-------+-----+------------+------------+------+--------+
|   001 |  11 | Benedictus | 2000-01-29 | 3.96 | M      |
|   002 |  12 | Evander    | 2004-01-29 | 4.00 | M      |
|   003 |  13 | Ganyu      | 2004-12-04 | 3.17 | F      |
|   004 |  15 | Yanfei     | 1997-10-11 | 3.76 | F      |
|   005 |  16 | Mona       | 2001-05-19 | 3.00 | F      |
|   008 |  17 | Razor      | 1990-10-21 | 3.65 | M      |
|   006 |  18 | Diluc      | 2001-07-21 | 2.50 | M      |
|   007 |  20 | Collei     | 2003-09-14 | 2.97 | F      |
+-------+-----+------------+------------+------+--------+
8 rows in set (0.000 sec)

KeyWords :
AUTO_INCREMENT
DEFAULT 0

UPDATE name 
SET ()
WHERE ();

UPDATE Mahasiswa
SET gpa = 3.20
WHERE nama_depan LIKE 'Ganyu';

SELECT
WHERE (AND/OR)

CREATE TABLE Mahasiswa_copy(SELECT nama_depan AS Nama,gpa AS nilai FROM Mahasiswa);
SELECT * FROM Mahasiswa_copy;
+------------+-------+
| Nama       | nilai |
+------------+-------+
| Benedictus |  3.96 |
| Evander    |  4.00 |
| Ganyu      |  3.20 |
| Yanfei     |  3.76 |
| Mona       |  3.00 |
| Razor      |  3.65 |
| Diluc      |  2.50 |
| Collei     |  2.97 |
+------------+-------+
DELETE FROM Mahasiswa_copy WHERE nilai < 3;
+------------+-------+
| Nama       | nilai |
+------------+-------+
| Benedictus |  3.96 |
| Evander    |  4.00 |
| Ganyu      |  3.20 |
| Yanfei     |  3.76 |
| Mona       |  3.00 |
| Razor      |  3.65 |
+------------+-------+


INSERT INTO name_copy(name,id,score)
SELECT name,id,score FROM name; 

SELECT
FROM
WHERE (IS NOT IN BETWEEN('A' AND 'B') AND OR XOR(Sama akan dibuang) LIKE'%a' LIKE'___')
GROUP BY
HAVING
ORDER BY
LIMIT;

SELECT COUNT(*) FROM Mahasiswa WHERE gender = 'M';
SELECT COUNT(nama_depan) FROM Mahasiswa;
SELECT COUNT(DISTINCT year) FROM Mahasiswa;
SELECT MAX(gpa),MIN(gpa) FROM Mahasiswa;
SELECT AVG(gpa) FROM Mahasiswa;


Jika 
ID_1    10
ID_1    20
ID_2    40

SELECT id,SUM(cash) FROM Mahasiswa
GROUP BY id;

+-----+------------+-------------+--------+------+----------+------------+---------+
| id  | first_name | last_name   | gender | gpa  | seat_num | birth_date | balance |
+-----+------------+-------------+--------+------+----------+------------+---------+
|  99 | John       | Doe         | M      | 2.78 |      004 | 1992-07-12 |  533072 |
| 100 | Tony       | Stark       | M      | 3.15 |      009 | 1985-06-23 |  470872 |
| 101 | Diluc      | Ragnvindr   | M      | 3.99 |      002 | 1979-10-19 |  410202 |
| 102 | Mona       | Megistus    | F      | 3.48 |      001 | 1972-07-23 |  570200 |
| 103 | Jean       | Gunnhildr   | F      | 3.52 |      003 | 1993-05-16 |  433000 |
| 104 | Wierd      | Al          | M      | 1.72 |      005 | 1999-03-28 |  496090 |
| 105 | Kwan       | Kansuda     | F      | 1.08 |      008 | 2006-02-03 |  544200 |
| 106 | Bruce      | Wayne       | M      | 2.97 |      007 | 1982-10-24 |  466202 |
| 107 | Miyuki     | Shirogane   | M      | 2.79 |      010 | 1982-12-12 |  496092 |
| 108 | Harriet    | SugarCookie | F      | 3.98 |      006 | 1990-04-12 |  580800 |
| 109 | Akedo      | Kaka        | M      | 1.23 |      111 | NULL       |  487020 |
| 201 | Secret     | Agent       | NULL   | 3.75 |      101 | 1995-05-15 |    NULL |
| 202 | Amber      | Eberhart    | F      | 3.85 |      102 | 1996-02-20 |    NULL |
| 203 | Julia      | Lea         | F      | 1.60 |      103 | 2006-08-10 |  580000 |
| 204 | Ayumi      | Shinoda     | F      | 3.95 |      104 | 1980-11-25 |  540000 |
| 205 | Kaedehara  | Kazuha      | M      | NULL |      105 | 1995-09-30 |  490000 |
| 206 | Yanfei     | Meng        | F      | NULL |      106 | 1998-04-05 |  600000 |
| 207 | Albedo     | Kreideprinz | NULL   | 3.55 |      107 | 1993-12-15 |  450000 |
| 208 | Eula       | Lawrence    | F      | 4.00 |      108 | NULL       |  570000 |
| 209 | Childe     | Tartaglia   | M      | 3.90 |      109 | NULL       |  480000 |
| 210 | Qiqi       | Chi         | F      | 3.65 |      110 | 1994-06-28 |  420000 |
+-----+------------+-------------+--------+------+----------+------------+---------+

MariaDB [latihan]> SELECT group_concat(first_name),gender FROM mahasiswa GROUP BY gender;
+-----------------------------------------------------------+--------+
| group_concat(first_name)                                  | gender |
+-----------------------------------------------------------+--------+
| Secret,Albedo                                             | NULL   |
| Qiqi,Amber,Ayumi,Harriet,Yanfei,Kwan,Jean,Mona,Eula,Julia | F      |
| Kaedehara,Childe,Akedo,Miyuki,Bruce,Wierd,Diluc,Tony,John | M      |
+-----------------------------------------------------------+--------+
3 rows in set (0.002 sec)

MariaDB [latihan]>

ONLY SHOWING 
MariaDB [latihan]> SELECT GROUP_CONCAT(first_name) AS name,gender,COUNT(*) FROM Mahasiswa GROUP BY gender;
+-----------------------------------------------------------+--------+----------+
| name                                                      | gender | COUNT(*) |
+-----------------------------------------------------------+--------+----------+
| Secret,Albedo                                             | NULL   |        2 |
| Qiqi,Amber,Ayumi,Harriet,Yanfei,Kwan,Jean,Mona,Eula,Julia | F      |       10 |
| Kaedehara,Childe,Akedo,Miyuki,Bruce,Wierd,Diluc,Tony,John | M      |        9 |
+-----------------------------------------------------------+--------+----------+
3 rows in set (0.000 sec)


HAVING ->
SELECT actor_id, SUM(salary)
FROM roles
GROUP BY actor_id
HAVING SUM(salary) > 4000000;