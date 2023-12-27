DELIMITER //
CREATE PROCEDURE showallumn()
BEGIN
    SELECT * FROM dosen LIMIT 7;
    SELECT * FROM MENGAJAR LIMIT 7;
    SELECT * FROM JURUSAN LIMIT 7;
    SELECT * FROM KELAS LIMIT 7;
    SELECT * FROM Mahasiswa LIMIT 7;
    SELECT * FROM KRS LIMIT 7;
    SELECT * FROM skkm LIMIT 7;
END //
DELIMITER ;

MENGAJAR
+----------+------------+------+-----+---------+-------+
| Field    | Type       | Null | Key | Default | Extra |
+----------+------------+------+-----+---------+-------+
| ID_dosen | char(6)    | NO   | PRI | NULL    |       |
| ID_kelas | varchar(8) | NO   | PRI | NULL    |       |
+----------+------------+------+-----+---------+-------+

DOSEN 
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| ID_dosen       | char(6)      | NO   | PRI | NULL    |       |
| Nama_dosen     | varchar(100) | YES  |     | NULL    |       |
| Email          | varchar(50)  | YES  |     | NULL    |       |
| Nomor_telepon  | varchar(13)  | YES  |     | NULL    |       |
| Alamat_lengkap | varchar(150) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
JURUSAN
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| ID_jurusan   | char(3)     | NO   | PRI | NULL    |       |
| Nama_jurusan | varchar(50) | YES  |     | NULL    |       |
| ID_dosen     | char(6)     | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
KELAS
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| ID_kelas   | varchar(8)  | NO   | PRI | NULL    |       |
| Hari       | varchar(20) | YES  |     | NULL    |       |
| Jadwal     | time        | YES  |     | NULL    |       |
| Nama_kelas | varchar(50) | YES  |     | NULL    |       |
| Jumlah_mhs | int(2)      | YES  |     | NULL    |       |
| Lokasi     | varchar(5)  | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
KRS
+--------------+------------+------+-----+---------+-------+
| Field        | Type       | Null | Key | Default | Extra |
+--------------+------------+------+-----+---------+-------+
| ID_mahasiswa | char(11)   | NO   | PRI | NULL    |       |
| ID_kelas     | varchar(8) | NO   | PRI | NULL    |       |
+--------------+------------+------+-----+---------+-------+
Mahasiswa
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| ID_mahasiswa   | char(11)     | NO   | PRI | NULL    |       |
| Nama_mahasiswa | varchar(100) | YES  |     | NULL    |       |
| Jurusan        | varchar(30)  | YES  |     | NULL    |       |
| Angkatan       | char(4)      | YES  |     | NULL    |       |
| Tanggal_lahir  | date         | YES  |     | NULL    |       |
| Email          | varchar(50)  | YES  |     | NULL    |       |
| Asal_kota      | varchar(50)  | YES  |     | NULL    |       |
| Alamat_lengkap | varchar(150) | YES  |     | NULL    |       |
| Nomor_telepon  | varchar(13)  | YES  |     | NULL    |       |
| IPK            | float        | YES  |     | NULL    |       |
| IPS            | float        | YES  |     | NULL    |       |
| advisor        | char(6)      | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+

skkm
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Area         | varchar(50)  | YES  |     | NULL    |       |
| Poin         | int(11)      | YES  |     | NULL    |       |
| Tanggal      | date         | YES  |     | NULL    |       |
| Events       | varchar(150) | YES  |     | NULL    |       |
| Tempat       | varchar(50)  | YES  |     | NULL    |       |
| Jabatan      | varchar(25)  | YES  |     | NULL    |       |
| ID_mahasiswa | char(11)     | YES  | MUL | NULL    |       |
+--------------+--------------+------+-----+---------+-------+









MariaDB [umnuas]> SELECT * FROM dosen LIMIT 5;
+----------+-----------------------------+-----------------------------------+---------------+----------------------+
| ID_dosen | Nama_dosen                  | Email                             | Nomor_telepon | Alamat_lengkap       |
+----------+-----------------------------+-----------------------------------+---------------+----------------------+
| 023913   | Dennis Gunawan              | dennis.gunawan@lecturer.umn.ac.id | 081234567897  | Jl. Rumah Pak Dennis |
| 023971   | Arya Wicaksana              | arya.wicaksana@lecturer.umn.ac.id | 0811162179132 | Jl. Rumah Pak Arya   |
| 023976   | Adhi Kusnadi                | adhi.kusnadi@lecturer.umn.ac.id   | 087723232111  | Jl. Rumah Pak Adhi   |
| 041762   | Nabila Husna Shabrina       | nabila.husna@lecturer.umn.ac.id   | 0845784333422 | Jl. Rumah Bu Nabila  |
| 060856   | Fenina Adline Twince Tobing | Fenina.adline@lecturer.umn.ac.id  | 085349246832  | Jl. Rumah Bu Fenina  |
+----------+-----------------------------+-----------------------------------+---------------+----------------------+
5 rows in set (0.001 sec)

MariaDB [umnuas]> SELECT * FROM MENGAJAR LIMIT 5;
+----------+----------+
| ID_dosen | ID_kelas |
+----------+----------+
| 023913   | IF351-A  |
| 023913   | IF351-B  |
| 023913   | IF351-D  |
| 023976   | IF350-D  |
| 023976   | IF350-E  |
+----------+----------+
5 rows in set (0.002 sec)

MariaDB [umnuas]> SELECT * FROM JURUSAN LIMIT 5;
+------------+------------------+----------+
| ID_jurusan | Nama_jurusan     | ID_dosen |
+------------+------------------+----------+
| J01        | Informatika      | 061809   |
| J02        | Sistem Informasi | L12346   |
| J03        | Teknik Komputer  | L12345   |
| J04        | Tekni Fisika     | L12347   |
| J05        | Tekni Elektro    | L12348   |
+------------+------------------+----------+
5 rows in set (0.000 sec)

MariaDB [umnuas]> SELECT * FROM kelas LIMIT 5;
+----------+--------+----------+-------------------------------+------------+--------+
| ID_kelas | Hari   | Jadwal   | Nama_kelas                    | Jumlah_mhs | Lokasi |
+----------+--------+----------+-------------------------------+------------+--------+
| CE311-C  | Selasa | 10:00:00 | Probability & Statistic - LEC |         37 | C1009  |
| CE311-E  | Senin  | 15:00:00 | Probability & Statistic - LEC |         41 | D0601  |
| EM604-C  | Rabu   | 11:00:00 | Technopreneurship - LEC       |         36 | C0509  |
| EM604-E  | Rabu   | 14:00:00 | Technopreneurship - LEC       |         40 | D0707  |
| IF330-C  | Selasa | 13:00:00 | Web Programming - LEC         |         32 | B0309  |
+----------+--------+----------+-------------------------------+------------+--------+



SELECT
 d.Nama_dosen AS Nama_Dosen,
 k.ID_kelas AS Kode_Kelas,
 k.Nama_kelas AS Nama_Kelas,
 k.Hari,
 TIME_FORMAT(k.Jadwal, '%H:%i:%s') AS Jam,
 k.Lokasi AS Ruang
FROM
 jurusan j
JOIN
 dosen d ON j.ID_dosen = d.ID_dosen
JOIN
 kelas k ON j.ID_jurusan = SUBSTRING(k.ID_kelas, 1, 3)
ORDER BY
 j.Nama_jurusan,
 d.Nama_dosen,
 k.Hari,
 k.Jadwal;