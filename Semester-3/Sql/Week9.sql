+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| EmployeeID  | char(5)      | NO   | PRI |         |       |
| ProfPic     | longblob     | NO   |     | NULL    |       |
| FirstName   | varchar(30)  | YES  |     | NULL    |       |
| LastName    | varchar(30)  | YES  |     | NULL    |       |
| Address     | varchar(100) | YES  |     | NULL    |       |
| City        | varchar(50)  | YES  |     | NULL    |       |
| Region      | varchar(50)  | YES  |     | NULL    |       |
| PostalCode  | char(6)      | YES  |     | NULL    |       |
| PhoneNumber | varchar(12)  | YES  |     | NULL    |       |
| ManagerID   | char(5)      | YES  |     | NULL    |       |
| JobID       | char(5)      | YES  | MUL | NULL    |       |
| DeptID      | char(5)      | YES  | MUL | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
12 rows in set (0.013 sec)

MariaDB [temp4]> DESCRIBE depts;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| DeptID   | char(5)     | NO   | PRI |         |       |
| DeptName | varchar(50) | YES  |     | NULL    |       |
| Pictures | longblob    | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+

SELECT CONCAT(a.FirstName,' ',a.LastName) 'Name',
       b.DeptName Departement
FROM employees AS a 
JOIN depts AS b ON (a.DeptID = b.DeptID)
ORDER BY b.DeptName;


SELECT CONCAT(a.FirstName,' ',a.LastName) 'Employee Name',
       CONCAT(b.FirstName,' ',b.lastName) 'Manager Name'
FROM employees AS a 
LEFT JOIN employees AS b ON (a.ManagerID = b.EmployeeID)
WHERE a.ManagerID IS NOT NULL
ORDER BY 'Manager Name' ASC,
         'Employee Name' ASC;


SELECT CONCAT(e.FirstName,' ',e.LastName) 'FULL NAME',
       GROUP_CONCAT(o.OrderID SEPERATOR '-') 'Orderan';
FROM employees AS e
JOIN Orders AS o 
ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
HAVING 'Orderan' IS NOT NULL
ORDER BY 'FULL NAME';
