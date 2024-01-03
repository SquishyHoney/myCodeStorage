1. Tampilkan nama employee dan nama departemen employee tersebut, data diurutkan 
berdasarkan nama department dan nama employee secara ascending

SELECT CONCAT(firstname,' ',lastname) AS 'Full Name',
       DeptName AS 'Departement'
FROM
    employees AS e
JOIN
    depts AS d ON (e.deptId = d.deptID)
ORDER BY
    DeptName ASC , CONCAT(firstname,' ',lastname) ASC;

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
2. Tampilkan nama employee dan nama manager dari employee tersebut, data diurutkan
berdasarkan nama manager dan nama employee secara ascending 

SELECT CONCAT(a.firstname,' ',a.lastname) AS FullName,
       CONCAT(b.firstname,' ',b.lastname) AS Manager
FROM employees AS a
INNER JOIN
    employees AS b ON (a.managerID = b.employeeId)
ORDER BY
    CONCAT(b.firstname,' ',b.lastname) ASC , CONCAT(a.firstname,' ',a.lastname) ASC;


3. Tampilkan nama employee dan setiap order yang ditangani oleh employee tersebut (data orders 
dipisahkan dengan separator ‘-‘), data diurutkan berdasarkan nama employee

10. Seorang hacker iseng ingin memainkan database perusahaan tersebut, ia ingin mengubah setiap 
gaji employee menjadi 0.
Buatlah query untuk mengubah gaji semua pekerjaan menjadi 0. 

UPDATE jobs SET Salary = 0;

11. Karena hacker ini ingin melakukan tindakan lebih maka dia ingin menyimpan progressnya dengan 
menggunakan savepoint.
Buatlah savepoint dengan nama ikea_gaji_nol. 

SAVEPOINT ikea_gaji_nol;

12. Setelah melakukan savepoint, hacker mengubah setiap nama depan semua employee menjadi 
Tommy.
Ubahlah nama depan semua employee menjadi “Tommy”. 

UPDATE employees SET firstname = "Tommy";

13. Admin database menyadari hal tersebut dan ingin mengembalikan database ke keadaan awal 
sebelum terserang hacker namun hanya berhasil sampai ke progress yang disimpan oleh hacker.
Tuliskan query untuk melakukan mengembalikan database ke keadaan ikea_gaji_nol! 

ROLLBACK TO SAVEPOINT ikea_gaji_nol;

14. Admin database merasa panik, maka admin melakukan pemulihan sampai ke waktu dimana 
hacker belum masuk

ROLLBACK;