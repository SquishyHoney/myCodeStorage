/*
INNER JOIN
LEFT OUTER JOIN --same as left join
RIGHT OUTER JOIN
FULL OUTER JOIN
CROSS JOIN
*/


/*
+----+---------+-----------+
| id | nama    | kampus    |
+----+---------+-----------+
| A  | Evander | UMN       |
| B  | Reynard | Yan Zheng |
| C  | Patrick | Zhe Jiang |
| D  | Virgi   | SFC       |
| E  | Albert  | UPH       |
+----+---------+-----------+
*/
SELECT id,nama,kampus
FROM emp
JOIN campus USING (id);
-- Same as Inner Join



/*
+----+-----------+-----------+
| id | nama      | kampus    |
+----+-----------+-----------+
|    | Left Join | NULL      |
| A  | Evander   | UMN       |
| B  | Reynard   | Yan Zheng |
| C  | Patrick   | Zhe Jiang |
| D  | Virgi     | SFC       |
| E  | Albert    | UPH       |
+----+-----------+-----------+
*/
SELECT id,nama,kampus
FROM emp
LEFT JOIN campus USING (id);
-- Yang awal semua ikut


/*
+----+---------+-----------+
| id | nama    | kampus    |
+----+---------+-----------+
| 1  | NULL    | Harvard   |
| A  | Evander | UMN       |
| B  | Reynard | Yan Zheng |
| C  | Patrick | Zhe Jiang |
| D  | Virgi   | SFC       |
| E  | Albert  | UPH       |
+----+---------+-----------+
*/
SELECT id,nama,kampus
FROM emp
RIGHT JOIN campus USING (id);
-- Yang kiri semua ikut



/*
+----+---------+-----------+-----------+
| id | nama    | kampus    | negara    |
+----+---------+-----------+-----------+
| 1  | NULL    | Harvard   | NULL      |
| A  | Evander | UMN       | Indonesia |
| B  | Reynard | Yan Zheng | Taiwan    |
| C  | Patrick | Zhe Jiang | China     |
| D  | Virgi   | SFC       | Canada    |
| E  | Albert  | UPH       | Indonesia |
+----+---------+-----------+-----------+
*/
SELECT id,nama,kampus,negara
FROM emp
RIGHT JOIN campus USING (id)
LEFT JOIN country USING (id);


/*
+----+-----------+-----------+------------+
| id | nama      | kampus    | negara     |
+----+-----------+-----------+------------+
|    | Left Join | NULL      | Right Join |
| 0  | NULL      | NULL      | Amerika    |
| A  | Evander   | UMN       | Indonesia  |
| B  | Reynard   | Yan Zheng | Taiwan     |
| C  | Patrick   | Zhe Jiang | China      |
| D  | Virgi     | SFC       | Canada     |
| E  | Albert    | UPH       | Indonesia  |
+----+-----------+-----------+------------+
*/
SELECT id,nama,kampus,negara
FROM emp
LEFT JOIN campus USING (id)
RIGHT JOIN country USING (id);



SELECT id,nama,kampus,negara
FROM emp
LEFT JOIN campus USING (id)
LEFT JOIN country USING (id);

/*
SELECT 
    a.compoun_id,
    a.compound_name
FROM
    compound AS a
JOIN 
    element AS b ON (b.element_Name LIKE 'Hidrogen');
*/









