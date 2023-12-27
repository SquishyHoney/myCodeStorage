TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER add_ \n    AFTER \n        INSERT ON emp\n    FOR EACH ROW\n        INSERT INTO siswa(nama) VALUES(\'test\')'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci'
created=1702949465555803
