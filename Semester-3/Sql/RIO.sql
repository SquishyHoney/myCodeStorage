USE myumn;

# nomor 1
SELECT c.Nama_jurusan AS Prodi, b.Nama_Dosen AS 'Nama Dosen', d.ID_Kelas AS 'Kode Kelas', d.Nama_kelas AS 'Nama Kelas', d.Hari, d.Jadwal, d.Lokasi AS Ruang FROM mengajar a 
JOIN dosen b ON a.`ID_dosen` = b.`ID_dosen` 
LEFT JOIN jurusan c ON a.`ID_dosen` = c.`ID_dosen`
JOIN kelas d ON a.`ID_kelas` = d.`ID_kelas`;

# nomor 2

CREATE VIEW jawaban_1 AS 
SELECT c.Nama_jurusan, b.Nama_Dosen, d.ID_Kelas, d.Nama_kelas, d.Hari, d.Jadwal, d.Lokasi FROM mengajar a 
JOIN dosen b ON a.`ID_dosen` = b.`ID_dosen` 
LEFT JOIN jurusan c ON a.`ID_dosen` = c.`ID_dosen`
JOIN kelas d ON a.`ID_kelas` = d.`ID_kelas`;

INSERT INTO dosen (ID_dosen, Nama_dosen, Email, Nomor_telepon, Alamat_lengkap)
VALUES ('010001', 'Pak Lurah', 'pak.lurah@lecturer.umn.ac.id', '081269696969', 'Jl. Kelurahan Loler');

CREATE USER 'pak_lurah_010001'@localhost;
GRANT SELECT ON myumn.jawaban_1 TO 'pak_lurah_010001'@localhost;

EXIT

#login sebagai pak lurah
# mysql.exe -u pak_lurah_010001

SELECT * FROM jawaban_1;


# nomor 3
CREATE VIEW tampil_mahasiswa_per_semester AS
SELECT b.Nama_mahasiswa, b.Jurusan, b.Angkatan, c.ID_Kelas, c.Hari, c.Jadwal, c.Nama_kelas FROM krs a
JOIN mahasiswa b ON a.`ID_mahasiswa` = b.`ID_mahasiswa`
JOIN kelas c ON a.`ID_kelas` = c.`ID_kelas`;

SELECT * FROM tampil_mahasiswa_per_semester;

# nomor 4

DELIMITER //
CREATE PROCEDURE drop_student(IN nim INT)
BEGIN
    DELETE FROM krs WHERE ID_mahasiswa = nim;
    DELETE FROM skkm WHERE ID_mahasiswa = nim;
    DELETE FROM mahasiswa WHERE ID_mahasiswa = nim;
END//
DELIMITER ;
CALL drop_student(00000065123); #Delete John Thor