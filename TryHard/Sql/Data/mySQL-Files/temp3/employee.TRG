TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER before_color_update\nBEFORE UPDATE ON employee FOR EACH ROW\nSET NEW.usd = (NEW.salary/16000)'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci'
created=1701741439644878
