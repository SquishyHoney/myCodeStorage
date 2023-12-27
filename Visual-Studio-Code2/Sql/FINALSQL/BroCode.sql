-- Structured Query Language --
-- SQL membuat kita bisa melakukan CRUD (CREATE ,RETRIEVE ,UPDATE, DELETE) sebuah database -- 
-- RELATIONAL (SQL) and NON-Relational (NO-SQL) -- 
-- Caps lock g bergantung --

CREATE DATABASE broCode;
CREATE DATABASE weekUAS;

USE broCode;
DROP DATABASE broCode;


ALTER DATABASE broCode SET READ_ONLY;
ALTER DATABASE broCode SET READ_WRITE;


CREATE TABLE employee(
    employee_id VARCHAR(5),
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    hourly_pay DECIMAL(5,2),
    hire_date DATE 
);

SELECT * FROM employee;
SELECT * employee;