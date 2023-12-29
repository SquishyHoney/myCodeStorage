CREATE TABLE emp(
    id VARCHAR(5) PRIMARY KEY NOT NULL,
    nama VARCHAR(30) NOT NULL
);

CREATE TABLE campus(
    id VARCHAR(5) PRIMARY KEY NOT NULL,
    kampus VARCHAR(30) NOT NULL
);

CREATE TABLE country(
    id VARCHAR(5) PRIMARY KEY NOT NULL,
    negara VARCHAR(30) NOT NULL
);

INSERT INTO emp(id,nama)
VALUES
(NULL,'Left Join'),
('A','Evander'),
('B','Reynard'),
('C','Patrick'),
('D','Virgi'),
('E','Albert');

INSERT INTO campus(id,kampus)
VALUES
('1','Harvard'),
('A','UMN'),
('B','Yan Zheng'),
('C','Zhe Jiang'),
('D','SFC'),
('E','UPH');

INSERT INTO country(id,negara)
VALUES
(NULL,'Right Join'),
('A','Indonesia'),
('B','Taiwan'),
('C','China'),
('D','Canada'),
('E','Indonesia'),
('0','Amerika');


/*
MariaDB [weekuas]> SELECT * FROM emp;
+----+-----------+
| id | nama      |
+----+-----------+
|    | Left Join |
| A  | Evander   |
| B  | Reynard   |
| C  | Patrick   |
| D  | Virgi     |
| E  | Albert    |
+----+-----------+
6 rows in set (0.000 sec)

MariaDB [weekuas]> SELECT * FROM campus;
+----+-----------+
| id | kampus    |
+----+-----------+
| 1  | Harvard   |
| A  | UMN       |
| B  | Yan Zheng |
| C  | Zhe Jiang |
| D  | SFC       |
| E  | UPH       |
+----+-----------+
6 rows in set (0.000 sec)

MariaDB [weekuas]> SELECT * from country;
+----+------------+
| id | negara     |
+----+------------+
|    | Right Join |
| 0  | Amerika    |
| A  | Indonesia  |
| B  | Taiwan     |
| C  | China      |
| D  | Canada     |
| E  | Indonesia  |
+----+------------+
7 rows in set (0.000 sec)
*/



CREATE TABLE siswa(
    nama CHAR(30)
);
INSERT INTO siswa(nama)
VALUES ('Evander'),
('Reynard'),('Samuel'),('Patrick');