//FOREIGN KEY (xForeign) REFERENCES nama_table(id_disana)

UPDATE Mahasiswa
SET gpa = 3.20
WHERE nama_depan LIKE 'Ganyu';



SELECT COUNT(*) FROM Mahasiswa WHERE gender = 'M';
SELECT COUNT(nama_depan) FROM Mahasiswa;
SELECT COUNT(DISTINCT year) FROM Mahasiswa;
SELECT MAX(gpa),MIN(gpa) FROM Mahasiswa;
SELECT AVG(gpa) FROM Mahasiswa;

