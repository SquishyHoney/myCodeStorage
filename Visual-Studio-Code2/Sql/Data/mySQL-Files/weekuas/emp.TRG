TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER test AFTER INSERT ON emp\nFOR EACH ROW INSERT INTO LOGS VALUES("Something Came in",NOW())'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci'
created=1702907135301913
