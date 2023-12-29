-- Query pertama
SELECT 
    jurusan.Nama_jurusan AS "Prodi",
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
    JURUSAN AS J ON (NULL);

UNION

-- Query kedua
SELECT 
    jurusan.Nama_jurusan AS "Prodi",
    D.Nama_dosen AS "Nama Dosen", 
    M.id_kelas AS "Kode Kelas",
    K.Nama_kelas AS "Nama",
    K.hari AS "Hari",
    K.jadwal AS "Jam",
    K.lokasi AS "Ruang"
FROM 
    JURUSAN AS J 
RIGHT JOIN 
    DOSEN AS D ON (J.ID_dosen = D.ID_dosen);