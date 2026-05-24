-- Write a query to show the average salary of staff.[staff(firstname, surename, salary)]
-- show the ceiling, floor and rounded values.

SELECT AVG(salary) AS average_salary
FROM staff;

SELECT 
    AVG(salary) AS average_salary,
    CEIL(AVG(salary)) AS ceiling_value,
    FLOOR(AVG(salary)) AS floor_value,
    ROUND(AVG(salary), 2) AS rounded_value
FROM staff;

--Character function returning characters
-- CONCAT return char1 concatenated with char2
SELECT CONCAT(
    CONCAT(surename, '''s role is'), role_desc
)
"Job"
FROM employees
WHERE employee_id =1000;


-- concat firstname and last name
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM staff;

-concat firstname_lastname
SELECT CONCAT(first_name, '_' last_name) AS full_name
FROM staff;

-- INITCAP returns char, camel case
--words are delimited by white space
    --NLS_INITCAP or INITCAP

-- LOWER returns char, with all letters lowercase
    -- NLS_LOWER or LOWER

--UPPER returns char, with all letters uppercase
    --NLS_UPPER or UPPER



