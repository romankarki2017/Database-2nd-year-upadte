--VArray Example
SELECT s.site_id, c.room_number, c.capacity
FROM sites s, TABLE(s.classroom) c --pseudo table
WHERE site_id=1;

--Querying a Nested Table Useful Output
SELECT relational_alias.column_name, pseudo_table_alias.attribute,
FROM relational_table relational_alias,
TABLE(relational_alias.attribute) pseudo_table_alias
WHERE condition;

SELECT i.invoice_number, ii.student_surname
FROM invoices i, TABLE(i.invoice_item) ii
WHERE ii.course_title = 'C++';

--Querying Nested Table Only
SELECT VALUE(alias)
FROM THE(
    SELECT column_name
    FROM relational_table
    WHERE column_name = value
)alias;

SELECT VALUE(i)
FROM THE(
    SELECT invoice_item
    FROM invoices
    WHERE invoice_number = 10007
)i;

SELECT attribute, attribute
FROM tablename
WHERE attribute > ALL(value_1, value_2);

SELECT invoice_item, invoice_number
FROM invoices
WHERE invoice_name > ALL(1007, 1008);

SELECT MAX(balance), department
FROM staff
GROUP BY department

SELECT SUM(balance), department
FROM staff
GROUP BY department
HAVING AVG(score)>200;