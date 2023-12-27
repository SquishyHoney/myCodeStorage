/*Mengcari NAME, LULUSAN MANA, MOVIE berdasarkan EMPLOYEE_ID*/
SELECT CONCAT(a.first_name,' ',a.last_name) AS 'Full Name',
       b.universitas AS 'Kuliah dmn',
       c.movie AS 'Nonton ap'
FROM employee AS a,
     lulusan AS b,
     kesukaan AS c 
WHERE a.emp_id = b.emp_id AND a.emp_id = c.emp_id;


/*Mencari siapa saja yang suka WARNA yang sama*/
SELECT 
    COUNT(*) Jumlah,
    GROUP_CONCAT(e.emp_id ORDER BY e.emp_id) AS id,
    GROUP_CONCAT(CONCAT(first_name,' ',last_name)) AS Full_name,
    color AS warna
FROM 
    employee AS e,
    kesukaan AS k 
WHERE 
    e.emp_id = k.emp_id
GROUP BY
    warna;


/*Using JOINS */
/*Mengcari NAME, LULUSAN MANA, MOVIE berdasarkan EMPLOYEE_ID*/
SELECT CONCAT(first_name,' ',last_name) AS full_name,
       universitas AS lulusan,
       movie AS nonton_apa
FROM
    employee AS e
JOIN lulusan AS l ON (l.emp_id = e.emp_id)
JOIN kesukaan AS k ON (k.emp_id = e.emp_id)
ORDER BY full_name;


/*Gabungan*/
SELECT GROUP_CONCAT(CONCAT(first_name,' ',last_name)) AS full_name,
       GROUP_CONCAT(universitas) AS lulusan,
       movie AS nonton_apa
FROM
    employee AS e
JOIN lulusan AS l ON (l.emp_id = e.emp_id)
JOIN kesukaan AS k ON (k.emp_id = e.emp_id)
GROUP BY nonton_apa
ORDER BY full_name;


/*USING*/
SELECT COUNT(*) total,
       GROUP_CONCAT(CONCAT(first_name,' ',last_name)) AS nama,
       GROUP_CONCAT(universitas) AS universitas,
       movie AS film
FROM 
    employee AS e
JOIN
    kesukaan USING (emp_id)
JOIN
    lulusan USING (emp_id)
GROUP BY film
ORDER BY nama;


/*Natural Join*/
SELECT CONCAT(e.first_name,' ',e.last_name) AS full_name,
       l.universitas,
       k.movie
FROM employee AS e
NATURAL JOIN lulusan AS l
NATURAL JOIN kesukaan AS k;


/*Left Outer Join*/
/*Showing Ghost using Employee*/
/*LEFT and MIDDLE*/
SELECT 
    CONCAT(first_name,' ',last_name) AS full_name,
    universitas,
    color
FROM employee AS e
LEFT JOIN
    lulusan USING (emp_id)
LEFT JOIN
    kesukaan USING (emp_id);
/*
+--------------------+-------------------+--------+
| full_name          | universitas       | color  |
+--------------------+-------------------+--------+
| Ghost              | NULL              | NULL   |
| Tony Thang         | Munich Tech       | Blue   |
| Amelia Ingram      | Peking            | Pink   |
+--------------------+-------------------+--------+
*/

SELECT
    CONCAT(first_name,' ',last_name) AS Full_Name,
    universitas,
    color
FROM
    employee AS e
LEFT OUTER JOIN 
    lulusan AS l USING (emp_id)
LEFT OUTER JOIN
    kesukaan AS k USING (emp_id);


SELECT 
    first_name AS full_name,
    universitas
FROM
    employee e
FULL OUTER JOIN
    lulusan l ON (e.emp_id = l.emp_id)
WHERE 
    e.emp_id IS NULL OR l.emp_id IS NULL;

SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS full_name,
    l.universitas
FROM
    employee e
FULL OUTER JOIN
    lulusan l ON e.emp_id = l.emp_id
WHERE 
    e.emp_id IS NULL OR l.emp_id IS NULL;



