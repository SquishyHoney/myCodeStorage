-- This Only Works Inside A table
SET @@AUTOCOMMIT = 0;
SET @@AUTOCOMMIT = 1;

COMMIT;
--Make the Changes Permanent

ROLLBACK;
--Undo the Changes

SAVEPOINT nama;
ROLLBACK TO SAVEPOINT nama;


CREATE TABLE a(words CHAR(1));
INSERT INTO a(words) VALUES('a'),('b'),('c'),('d');

SET @@AUTOCOMMIT = 0; --To start Transaction
DELETE FROM a;
ROLLBACK;

/*
2 FILE
REVIEW CATATAN
KERJAIN LAB
WEEK 10
JOIN
*/