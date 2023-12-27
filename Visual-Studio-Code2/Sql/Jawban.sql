1. Buatlah SELECT statement untuk menampilkan informasi berupa 

jadwal dosen per program studi
dengan detail nama program studi, nama-nama dosen dalam program studi tersebut, kode mata kuliah
dan nama mata kuliah beserta kelasnya, dan jadwal waktu tiap-tiap kelas dari mata kuliah tersebut
(hari, jam, dan ruang). 

Panduan informasi yang ditampilkan: 

Prodi | Nama Dosen        | Kode Kelas      | Nama              | Kelas | Hari | Jam | Ruang
        Dennis Gunawan      IF351-A                  v            v        v       v    v
         Dennis Gunawan      IF351-B
DOSEN : 
id dosen
nama dosen
Email
Nomor_telepon
Alamat_lengkap

v -> Kelas (id_kelas )

SELECT * 
FROM
    DOSEN AS D 
JOIN 
    MENGAJAR AS M USING (ID_dosen)
JOIN 

;














SELECT * 
FROM
    DOSEN AS D
JOIN 
    MENGAJAR AS M ON (D.ID_dosen = M.ID_dosen)
JOIN
    JURUSAN AS J ON (J.ID_dosen = M.ID_dosen)
JOIN
    KELAS AS K ON (K.ID_kelas = M.id_kelas);
LIMIT 10;
























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


MENGUANKAN jursan sebagai prodi

SELECT JURUSAN.Nama_jurusan AS PRODI FROM 
DOSEN 
JOIN 
JURUSAN USING (ID_dosen)

UNION

SELECT 
    Jurusan.Nama_jurusan AS "Prodi",
    D.Nama_dosen AS "Nama Dosen", 
    M.id_kelas AS "Kode Kelas",
    K.Nama_kelas AS "Nama",
    K.hari AS "Hari",
    K.jadwal AS "Jam",
    K.lokasi AS "Ruang"
FROM 
    MENGAJAR AS M 
JOIN 
    DOSEN AS D ON (M.ID_dosen = D.ID_dosen)
JOIN 
    KELAS AS K ON (M.id_kelas = K.id_kelas)
JOIN 
    JURUSAN USING (JURUSAN.ID_dosen = dosen.ID_dosen);