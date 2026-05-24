SELECT count(staff_id)
FROM staff
WHERE town= 'BEDFORD';

SELECT min(balance)
FROM staff
WHERE town= 'BEDFORD';

--GROUP BY
SELECT MIN(balance), department
FROM staff
GROUP BY departnment;


SELECT MAX(balance), department
FROM staff
GROUP BY department;


--HAVING
SELECT SUM(balance), department
FROM staff
GROUP BY department
HAVING (score) > 120;


SELECT AVG(balance), department
FROM staff
GROUP BY department
HAVING (sum) > 100;

--wildcard symbol: %
--synonym of ANY: SUM
--5 statistical functions: sum, avg, max, min, count


SELECT tablename1.columnname, columnname
FROM tablename1
[INNER] JOIN tablename2
ON tablename1.pk = tablename2.fk;

SELECT staff.department, balance
FROM


SELECT sa.student_id, a.name, sa.grade
FROM student_assessments sa RIGHT JOIN assessments a
ON sa.assessment_id = a.assessment_id;

--FUll outer join 
SELECT tablename.attribute, tablename.attribute
FROM tablename1
FULL OUTER JOIN tablename2
ON tablename1.pk = tablename2.fk ;


SELECT l.lecturer_id, l.name
FROM lecturers l
WHERE l.lecturer_id  IN (
SELECT cl.lecturer_id
FROM course_lecturers cl);