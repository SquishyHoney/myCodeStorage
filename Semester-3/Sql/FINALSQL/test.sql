4.	Create your own store function with minimal 2 parameters 
and then call that function inside your store procedure. 
Then call that store procedure and show the output?

DELIMITER //
CREATE FUNCTION kali(one INT,two INT) RETURNS INTEGER
BEGIN
    DECLARE total INTEGER;
    SET total= one * two;
    RETURN total;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE call_kali(IN one INT, IN two INT)
BEGIN
    DECLARE mine INT;
    SET mine := (SELECT kali(one,two));

    SET @max = mine;
    SELECT @max;

END //
DELIMITER ;





5.	Do you think triggers are important for your database? 
And for what purpose you will implement trigger for your 
database. Give me one example.

Iya, Tiap kali kita mengunakan database yakni mengupdate delete insert data dsb
ada peristiwa dimana kita akan melakukan hal seperti catat log, hapus nilai (jika matkul dihapus)
dan itu akan mempersulit kerja kita (kerja dua kali) maka dengan trigger ini kita mempermudah workload kita
karena tiap kali kita melakukan perubhan terhadap database trigger akan membantu kita untuk melakukan
presubahan nessecery lainya


CONTOH SYNTAX TRIGGER

CREATE TRIGGER FOR me
    AFTER
        DELETE ON jadwal
    FOR EACH ROW
        UPDATE tabel_nilai
        SET nilai = 0
        WHERE jadwal.pel = nilai.pel;




CREATE TABLE a(
    id VARCHAR(255),
    nama VARCHAR(255)
);

CREATE TABLE b(
    id VARCHAR(255),
    nama VARCHAR(255)
);

INSERT INTO a(id,nama)
VALUES 
('1','1van'),
('2','2van'),
('3','3van'),
('a','avan'),
('b','bvan'),
('c','cvan');


INSERT INTO b(id,nama)
VALUES 
('1','1ikolai'),
('2','2ikolai'),
('4','4ikolai'),
('a','aikolai'),
('b','bikolai'),
('d','dikolai');


        




