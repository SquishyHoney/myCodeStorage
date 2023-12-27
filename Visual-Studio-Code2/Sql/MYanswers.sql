/*
NOMOR 1 
1. Buatlah SELECT statement untuk menampilkan informasi berupa 

jadwal dosen per program studi
dengan detail nama program studi, nama-nama dosen dalam program studi tersebut, kode mata kuliah
dan nama mata kuliah beserta kelasnya, dan jadwal waktu tiap-tiap kelas dari mata kuliah tersebut
(hari, jam, dan ruang). 

Panduan informasi yang ditampilkan: 

Prodi | Nama Dosen | Kode Kelas | Nama | Kelas | Hari | Jam | Ruang
+-----------------------------+------------+-------------------------------------------------+--------+----------+-------+
| Nama Dosen                  | Kode Kelas | Nama                                            | Hari   | Jam      | Ruang |
+-----------------------------+------------+-------------------------------------------------+--------+----------+-------+
| Dennis Gunawan              | IF351-A    | Database Systems - LEC                          | Rabu   | 08:00:00 | B0311 |
| Dennis Gunawan              | IF351-B    | Database Systems - LEC                          | Kamis  | 08:00:00 | B0311 |
| Dennis Gunawan              | IF351-D    | Database Systems - LEC                          | Rabu   | 15:00:00 | B0311 |
| Adhi Kusnadi                | IF350-D    | Software Engineering & Project Management - LEC | Rabu   | 08:00:00 | C0905 |
| Adhi Kusnadi                | IF350-E    | Software Engineering & Project Management - LEC | Kamis  | 08:00:00 | C0812 |
| Nabila Husna Shabrina       | CE311-C    | Probability & Statistic - LEC                   | Selasa | 10:00:00 | C1009 |
| Fenina Adline Twince Tobing | IF330-D    | Web Programming - LEC                           | Kamis  | 13:00:00 | B0311 |
| Eunike Endariahna Surbakti  | IF350-B    | Software Engineering & Project Management - LEC | Selasa | 10:00:00 | C0810 |
| Prianggada Indra Tanaya     | CE311-E    | Probability & Statistic - LEC                   | Senin  | 15:00:00 | D0601 |
| Aditiyawan .                | IF332-A    | Language Theory & Automata - LEC                | Selasa | 13:00:00 | C0812 |
| Aditiyawan .                | IF332-B    | Language Theory & Automata - LEC                | Selasa | 13:00:00 | C0812 |
| Ivransa Zuhdi Pane          | IF331-B    | Declarative Programming - LEC                   | Kamis  | 12:00:00 | C0301 |
| Ivransa Zuhdi Pane          | IF331-C    | Declarative Programming - LEC                   | Jumat  | 08:00:00 | C0902 |
| Ivransa Zuhdi Pane          | IF331-D    | Declarative Programming - LEC                   | Senin  | 12:00:00 | C0904 |
| I Putu Ananta Yogiswara     | IF330-C    | Web Programming - LEC                           | Selasa | 13:00:00 | B0309 |
| I Putu Ananta Yogiswara     | IF330-E    | Web Programming - LAB                           | Jumat  | 08:00:00 | B0311 |
| Dian Alanudin               | EM604-C    | Technopreneurship - LEC                         | Rabu   | 11:00:00 | C0509 |
| Dian Alanudin               | EM604-E    | Technopreneurship - LEC                         | Rabu   | 14:00:00 | D0707 |
| Helena Rebecca W.T.         | UM142-B    | Indonesian Language - LEC                       | Senin  | 08:00:00 | D0904 |
| Ananda Putriani             | UM142-C    | Indonesian Language - LEC                       | Senin  | 13:00:00 | D0902 |
+-----------------------------+------------+-------------------------------------------------+--------+----------+-------+


*/
SELECT 
    J.Nama_jurusan AS "Prodi",
    D.Nama_dosen AS "Nama Dosen", 
    M.id_kelas AS "Kode Kelas",
    K.Nama_kelas AS "Nama",
    K.hari AS "Hari",
    K.jadwal AS "Jam",
    K.lokasi AS "Ruang"
FROM 
    MENGAJAR AS M 
LEFT JOIN 
    DOSEN AS D ON (M.ID_dosen = D.ID_dosen)
LEFT JOIN 
    KELAS AS K ON (M.id_kelas = K.id_kelas)
LEFT JOIN
    JURUSAN AS J ON (J.ID_dosen = M.ID_dosen)
    ;

/*
2. Buatlah sebuah VIEW dari jawaban Soal 1, kemudian tambahkan seorang dosen baru ke database
dengan nama “Pak Lurah” dan nomor induk “010001”, hak aksesnya adalah sebatas melihat VIEW
tersebut saja.
*/