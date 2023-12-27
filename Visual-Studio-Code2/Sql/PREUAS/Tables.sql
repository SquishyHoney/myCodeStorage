CREATE TABLE employee(
    emp_id VARCHAR(10) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    position CHAR(20) NOT NULL,
    departement VARCHAR(30) NULL,
    gender CHAR(1) CHECK(gender IN ('M','F')),
    age INT(4) NOT NULL,
    birthdate DATE NOT NULL,
    salary INT(20) NOT NULL, 
    email VARCHAR(40) NOT NULL,

    PRIMARY KEY (emp_id),
    UNIQUE (email)
);
CREATE TABLE lulusan(
    emp_id VARCHAR(10) PRIMARY KEY,
    universitas CHAR(20),
    jurusan CHAR(20),
    country CHAR(15)
);
CREATE TABLE kesukaan(
    emp_id VARCHAR(10) PRIMARY KEY,
    movie CHAR(50) NOT NULL,
    color CHAR(20) NOT NULL
);

INSERT INTO employee(emp_id, first_name, last_name, position, gender, age, birthdate, email)
VALUES ('CEO0001','Evander','Nikolai','CEO','M','19','2004-01-29','evander.ceo@example.com'),
('CEO0003','Future','Me','CEO','M','19','2004-01-29','future.ceo@example.com');

INSERT INTO employee(emp_id, first_name, last_name, position, departement, gender, age, birthdate, salary, email)
VALUES
('CEO0002', 'Benedictus', 'Gildas', 'CTO', 'Artificial-Intelligence',       'M', 32, '1990-01-10', 250000000, 'benedictus.cto@example.com'),
('WEB0001', 'Wilhelmina', 'Webb',   'Manager', 'Full-Stack',                'F', 40, '1982-05-15', 60000000, 'wilhelmina.webb@example.com'),
('AI0001', 'Tony', 'Thang',         'Manager', 'Artificial-Intelligence',   'M', 45, '1977-08-22', 100000000, 'tony.thang@example.com'),
('DB0001', 'Patrick', 'Chang',      'Manager', 'Data-Analyst',              'M', 38, '1984-12-18', 80000000, 'patrick.chang@example.com'),
('SOF0001', 'Sofia', 'Moreno',      'Manager', 'Full-Stack',                'F', 36, '1986-09-05', 67000000, 'sofia.moreno@example.com'),
('SEC0001', 'Virgilio', 'Lee',      'Manager', 'Cyber-security',            'M', 42, '1980-04-30', 90000000, 'virgilio.lee@example.com'),
('WEB0002', 'Reynard', 'Suryananda','Senior', 'Full-Stack',                 'M', 45, '1977-06-10', 40000000, 'william.weber@example.com'),
('AI0002', 'Amelia', 'Ingram',      'Senior', 'Artificial-Intelligence',    'F', 39, '1983-03-12', 66000000, 'amelia.ingram@example.com'),
('DB0002', 'Nikolaus', 'Albert',        'Senior', 'Data-Analyst',               'M', 42, '1980-07-28', 53000000, 'dylan.baker@example.com'),
('SOF0002', 'Sierra', 'Fox',        'Senior', 'Full-Stack',                 'F', 37, '1985-01-15', 44600000, 'sierra.fox@example.com'),
('SEC0002', 'Bennard', 'Bernouli',  'Senior', 'Cyber-security',             'M', 40, '1982-02-10', 60000000, 'samuel.chen@example.com'),
('WEB0003', 'Samuel', 'Bennard',      'Junior', 'Full-Stack',                 'M', 25, '1998-11-20', 34000000, 'walter.wells@example.com'),
('AI0003', 'Alice', 'Allen',        'Junior', 'Artificial-Intelligence',    'F', 23, '2000-04-03', 49000000, 'alice.allen@example.com'),
('DB0003', 'Daniel', 'Davis',       'Junior', 'Data-Analyst',               'F', 22, '2001-07-28', 39750000, 'daniel.davis@example.com'),
('SOF0003', 'Simon', 'Scott',       'Junior', 'Full-Stack',                 'M', 24, '1999-08-22', 33450000, 'simon.scott@example.com'),
('SEC0003', 'Samantha', 'Cooper',   'Junior', 'Cyber-security',             'F', 26, '1997-02-03', 45000000, 'samantha.cooper@example.com'),
('WEB0004', 'Wendy', 'Warren',      'Intern', 'Full-Stack',                 'M', 21, '2002-05-18', 11300000, 'wendy.warren@example.com'),
('AI0004', 'Andrew', 'Adams',       'Intern', 'Artificial-Intelligence',    'F', 20, '2003-10-05', 16300000, 'andrew.adams@example.com'),
('DB0004', 'Danielle', 'Duncan',    'Intern', 'Data-Analyst',               'F', 19, '2004-03-18', 13250000, 'danielle.duncan@example.com'),
('SOF0004', 'Samuel', 'Spencer',    'Intern', 'Full-Stack',                 'M', 22, '2001-12-01', 11150000, 'samuel.spencer@example.com'),
('SEC0004', 'Sophia', 'Stewart',    'Intern', 'Cyber-security',             'M', 23, '2000-09-15', 15000000, 'sophia.stewart@example.com');

UPDATE employee SET first_name = 'Nelson', last_name = 'Jefferson' WHERE emp_id = 'SOF0003';

INSERT INTO lulusan (emp_id, universitas, jurusan, country)
VALUES
('CEO0001', 'UMN', 'Computer Science', 'Indonesia'),
('CEO0002', 'Tsinghua', 'Business Management', 'China'),
('WEB0001', 'Munich Tech', 'Computer Science', 'Germany'),
('AI0001', 'Munich Tech', 'Computer Science', 'Germany'),
('DB0001', 'Zhejiang Tech', 'Computer Science', 'China'),
('SOF0001', 'Stanford', 'Business Management', 'America'),
('SEC0001', 'Simon Fraser', 'Computer Science', 'Canada'),
('WEB0002', 'Yang Zheng', 'Business Technology', 'Taiwan'),
('AI0002', 'Peking', 'Automation', 'China'),
('DB0002', 'UPH', 'Business Technology', 'Indonesia'),
('SOF0002', 'Binus', 'Business Technology', 'Indonesia'),
('SEC0002', 'UPH', 'Computer Science', 'Indonesia'),
('WEB0003', 'Munich Tech', 'Automation', 'Germany'),
('AI0003', 'Tsinghua', 'Automation', 'China'),
('DB0003', 'National Tsinghua', 'Business Management', 'Taiwan'),
('SOF0003', 'Binus', 'Business Technology', 'Indonesia'),
('SEC0003', 'National Tsinghua', 'Computer Science', 'Taiwan'),
('WEB0004', 'UI', 'Business Management', 'Indonesia'),
('AI0004', 'Tsinghua', 'Automation', 'China'),
('DB0004', 'UI', 'Business Management', 'Indonesia'),
('SOF0004', 'UI', 'Computer Science', 'Indonesia'),
('SEC0004', 'National Tsinghua', 'Computer Science', 'Taiwan');

INSERT INTO kesukaan(emp_id, movie, color)
VALUES 
('CEO0001', 'StarWars', 'Red'),
('CEO0002', 'StarWars', 'Green'),
('WEB0001', 'Harry Potter', 'Red'),
('AI0001', 'StarWars', 'Blue'),
('DB0001', 'Avenger', 'Green'),
('SOF0001', 'DC', 'Yellow'),
('SEC0001', 'Disney', 'Green'),
('WEB0002', 'Disney', 'Purple'),
('AI0002', 'Avenger', 'Pink'),
('DB0002', 'DC', 'Red'),
('SOF0002', 'StarWars', 'Yellow'),
('SEC0002', 'Harry Potter', 'Green'),
('WEB0003', 'Harry Potter', 'Blue'),
('AI0003', 'DC', 'Blue'),
('DB0003', 'Avenger', 'Purple'),
('SOF0003', 'LOTR', 'Red'),
('SEC0003', 'LOTR', 'Red'),
('WEB0004', 'StarWars', 'Purple'),
('AI0004', 'DC', 'Blue'),
('DB0004', 'Sherlock Holmes', 'Yellow'),
('SOF0004', 'Harry Potter', 'Pink'),
('SEC0004', 'Avenger', 'Red');   



INSERT INTO employee(first_name) VALUES ('Ghost');
INSERT INTO lulusan(emp_id) VALUES (123);
INSERT INTO lulusan(universitas) VALUES ('Ghost');
UPDATE lulusan SET emp_id = 111 WHERE universitas LIKE 'Ghost';

-- Tables Preview 
/*
employee
+---------+------------+------------+----------+-------------------------+--------+-----+------------+-----------+-----------------------------+
| emp_id  | first_name | last_name  | position | departement             | gender | age | birthdate  | salary    | email                       |
+---------+------------+------------+----------+-------------------------+--------+-----+------------+-----------+-----------------------------+
|         | Ghost      |            |          | NULL                    | NULL   |   0 | 0000-00-00 |         0 |                             |
| AI0001  | Tony       | Thang      | Manager  | Artificial-Intelligence | M      |  45 | 1977-08-22 | 100000000 | tony.thang@example.com      |
| AI0002  | Amelia     | Ingram     | Senior   | Artificial-Intelligence | F      |  39 | 1983-03-12 |  66000000 | amelia.ingram@example.com   |
| AI0003  | Alice      | Allen      | Junior   | Artificial-Intelligence | F      |  23 | 2000-04-03 |  49000000 | alice.allen@example.com     |
| AI0004  | Andrew     | Adams      | Intern   | Artificial-Intelligence | F      |  20 | 2003-10-05 |  16300000 | andrew.adams@example.com    |
| CEO0001 | Evander    | Nikolai    | CEO      | NULL                    | M      |  19 | 2004-01-29 |         0 | evander.ceo@example.com     |
| CEO0002 | Benedictus | Gildas     | CTO      | Artificial-Intelligence | M      |  32 | 1990-01-10 | 250000000 | benedictus.cto@example.com  |
| CEO0003 | Future     | Me         | CEO      | NULL                    | M      |  19 | 2004-01-29 |         0 | future.ceo@example.com      |
| DB0001  | Patrick    | Chang      | Manager  | Data-Analyst            | M      |  38 | 1984-12-18 |  80000000 | patrick.chang@example.com   |
| DB0002  | Nikolaus   | Albert     | Senior   | Data-Analyst            | M      |  42 | 1980-07-28 |  53000000 | dylan.baker@example.com     |
| DB0003  | Daniel     | Davis      | Junior   | Data-Analyst            | F      |  22 | 2001-07-28 |  39750000 | daniel.davis@example.com    |
| DB0004  | Danielle   | Duncan     | Intern   | Data-Analyst            | F      |  19 | 2004-03-18 |  13250000 | danielle.duncan@example.com |
| SEC0001 | Virgilio   | Lee        | Manager  | Cyber-security          | M      |  42 | 1980-04-30 |  90000000 | virgilio.lee@example.com    |
| SEC0002 | Bennard    | Bernouli   | Senior   | Cyber-security          | M      |  40 | 1982-02-10 |  60000000 | samuel.chen@example.com     |
| SEC0003 | Samantha   | Cooper     | Junior   | Cyber-security          | F      |  26 | 1997-02-03 |  45000000 | samantha.cooper@example.com |
| SEC0004 | Sophia     | Stewart    | Intern   | Cyber-security          | M      |  23 | 2000-09-15 |  15000000 | sophia.stewart@example.com  |
| SOF0001 | Sofia      | Moreno     | Manager  | Full-Stack              | F      |  36 | 1986-09-05 |  67000000 | sofia.moreno@example.com    |
| SOF0002 | Sierra     | Fox        | Senior   | Full-Stack              | F      |  37 | 1985-01-15 |  44600000 | sierra.fox@example.com      |
| SOF0003 | Nelson     | Jefferson  | Junior   | Full-Stack              | M      |  24 | 1999-08-22 |  33450000 | simon.scott@example.com     |
| SOF0004 | Samuel     | Spencer    | Intern   | Full-Stack              | M      |  22 | 2001-12-01 |  11150000 | samuel.spencer@example.com  |
| WEB0001 | Wilhelmina | Webb       | Manager  | Full-Stack              | F      |  40 | 1982-05-15 |  60000000 | wilhelmina.webb@example.com |
| WEB0002 | Reynard    | Suryananda | Senior   | Full-Stack              | M      |  45 | 1977-06-10 |  40000000 | william.weber@example.com   |
| WEB0003 | Samuel     | Bennard    | Junior   | Full-Stack              | M      |  25 | 1998-11-20 |  34000000 | walter.wells@example.com    |
| WEB0004 | Wendy      | Warren     | Intern   | Full-Stack              | M      |  21 | 2002-05-18 |  11300000 | wendy.warren@example.com    |
+---------+------------+------------+----------+-------------------------+--------+-----+------------+-----------+-----------------------------+
lulusan
+---------+-------------------+---------------------+-----------+
| emp_id  | universitas       | jurusan             | country   |
+---------+-------------------+---------------------+-----------+
| 111     | Ghost             | NULL                | NULL      |
| 123     | NULL              | NULL                | NULL      |
| AI0001  | Munich Tech       | Computer Science    | Germany   |
| AI0002  | Peking            | Automation          | China     |
| AI0003  | Tsinghua          | Automation          | China     |
| AI0004  | Tsinghua          | Automation          | China     |
| CEO0001 | UMN               | Computer Science    | Indonesia |
| CEO0002 | Tsinghua          | Business Management | China     |
| DB0001  | Zhejiang Tech     | Computer Science    | China     |
| DB0002  | UPH               | Business Technology | Indonesia |
| DB0003  | National Tsinghua | Business Management | Taiwan    |
| DB0004  | UI                | Business Management | Indonesia |
| SEC0001 | Simon Fraser      | Computer Science    | Canada    |
| SEC0002 | UPH               | Computer Science    | Indonesia |
| SEC0003 | National Tsinghua | Computer Science    | Taiwan    |
| SEC0004 | National Tsinghua | Computer Science    | Taiwan    |
| SOF0001 | Stanford          | Business Management | America   |
| SOF0002 | Binus             | Business Technology | Indonesia |
| SOF0003 | Binus             | Business Technology | Indonesia |
| SOF0004 | UI                | Computer Science    | Indonesia |
| WEB0001 | Munich Tech       | Computer Science    | Germany   |
| WEB0002 | Yang Zheng        | Business Technology | Taiwan    |
| WEB0003 | Munich Tech       | Automation          | Germany   |
| WEB0004 | UI                | Business Management | Indonesia |
+---------+-------------------+---------------------+-----------+
kesukaan
+---------+-----------------+--------+
| emp_id  | movie           | color  |
+---------+-----------------+--------+
| AI0001  | StarWars        | Blue   |
| AI0002  | Avenger         | Pink   |
| AI0003  | DC              | Blue   |
| AI0004  | DC              | Blue   |
| CEO0001 | StarWars        | Red    |
| CEO0002 | StarWars        | Green  |
| DB0001  | Avenger         | Green  |
| DB0002  | DC              | Red    |
| DB0003  | Avenger         | Purple |
| DB0004  | Sherlock Holmes | Yellow |
| SEC0001 | Disney          | Green  |
| SEC0002 | Harry Potter    | Green  |
| SEC0003 | LOTR            | Red    |
| SEC0004 | Avenger         | Red    |
| SOF0001 | DC              | Yellow |
| SOF0002 | StarWars        | Yellow |
| SOF0003 | LOTR            | Red    |
| SOF0004 | Harry Potter    | Pink   |
| WEB0001 | Harry Potter    | Red    |
| WEB0002 | Disney          | Purple |
| WEB0003 | Harry Potter    | Blue   |
| WEB0004 | StarWars        | Purple |
+---------+-----------------+--------+
*/