TYPE=VIEW
query=select `j`.`jam` AS `jam`,`j`.`date` AS `date`,`j`.`location` AS `location`,`m`.`nim` AS `student_nim`,`m`.`first_name` AS `student_first_name`,`m`.`last_name` AS `student_last_name`,`m`.`angkatan` AS `student_angkatan`,`m`.`TERM` AS `student_TERM`,`m`.`IPS` AS `student_IPS`,`m`.`IPK` AS `student_IPK`,`m`.`total_unit` AS `student_total_unit`,`m`.`total_weight` AS `student_total_weight`,`l`.`lec_id` AS `lecture_id`,`l`.`lec_name` AS `lecture_name`,`d`.`dosen_id` AS `dosen_id`,`d`.`first_name` AS `dosen_first_name`,`d`.`last_name` AS `dosen_last_name`,`g`.`nilai_tugas` AS `nilai_tugas`,`g`.`nilai_UTS` AS `nilai_UTS`,`g`.`nilai_UAS` AS `nilai_UAS` from ((((`quiz`.`jadwal` `j` join `quiz`.`mahasiswa` `m` on(`j`.`nim` = `m`.`nim`)) join `quiz`.`lecture` `l` on(`j`.`lec_id` = `l`.`lec_id`)) join `quiz`.`dosen` `d` on(`j`.`lec_id` = `d`.`lec_id`)) left join `quiz`.`gradebook` `g` on(`j`.`nim` = `g`.`nim` and `j`.`lec_id` = `g`.`lec_id`))
md5=2e1fe8278af7600ec2227fe48f54105c
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001701769464768886
create-version=2
source=SELECT\n    j.jam,\n    j.date,\n    j.location,\n    m.nim AS student_nim,\n    m.first_name AS student_first_name,\n    m.last_name AS student_last_name,\n    m.angkatan AS student_angkatan,\n    m.TERM AS student_TERM,\n    m.IPS AS student_IPS,\n    m.IPK AS student_IPK,\n    m.total_unit AS student_total_unit,\n    m.total_weight AS student_total_weight,\n    l.lec_id AS lecture_id,\n    l.lec_name AS lecture_name,\n    d.dosen_id,\n    d.first_name AS dosen_first_name,\n    d.last_name AS dosen_last_name,\n    g.nilai_tugas,\n    g.nilai_UTS,\n    g.nilai_UAS\nFROM jadwal j\nJOIN mahasiswa m ON j.nim = m.nim\nJOIN lecture l ON j.lec_id = l.lec_id\nJOIN dosen d ON j.lec_id = d.lec_id\nLEFT JOIN gradebook g ON j.nim = g.nim AND j.lec_id = g.lec_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `j`.`jam` AS `jam`,`j`.`date` AS `date`,`j`.`location` AS `location`,`m`.`nim` AS `student_nim`,`m`.`first_name` AS `student_first_name`,`m`.`last_name` AS `student_last_name`,`m`.`angkatan` AS `student_angkatan`,`m`.`TERM` AS `student_TERM`,`m`.`IPS` AS `student_IPS`,`m`.`IPK` AS `student_IPK`,`m`.`total_unit` AS `student_total_unit`,`m`.`total_weight` AS `student_total_weight`,`l`.`lec_id` AS `lecture_id`,`l`.`lec_name` AS `lecture_name`,`d`.`dosen_id` AS `dosen_id`,`d`.`first_name` AS `dosen_first_name`,`d`.`last_name` AS `dosen_last_name`,`g`.`nilai_tugas` AS `nilai_tugas`,`g`.`nilai_UTS` AS `nilai_UTS`,`g`.`nilai_UAS` AS `nilai_UAS` from ((((`quiz`.`jadwal` `j` join `quiz`.`mahasiswa` `m` on(`j`.`nim` = `m`.`nim`)) join `quiz`.`lecture` `l` on(`j`.`lec_id` = `l`.`lec_id`)) join `quiz`.`dosen` `d` on(`j`.`lec_id` = `d`.`lec_id`)) left join `quiz`.`gradebook` `g` on(`j`.`nim` = `g`.`nim` and `j`.`lec_id` = `g`.`lec_id`))
mariadb-version=100428
