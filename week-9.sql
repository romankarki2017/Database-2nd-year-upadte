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

SELECT CONCAT(firstname, '_', surname, '_', student_id) AS name
FROM staff;

SELECT CONCAT(CONCAT(CONCAT(firstname, '_'), surname), CONCAT('_', student_id))
FROM staff;

-- INITCAP returns char, camel case
--words are delimited by white space
    --NLS_INITCAP or INITCAP

-- LOWER returns char, with all letters lowercase
    -- NLS_LOWER or LOWER

--UPPER returns char, with all letters uppercase
    --NLS_UPPER or UPPER



-- homewoek each function 3 use case 10-15

--SUBSTR
SELECT SUBSTR('Roman', 2,3) FROM DUAL;

-- ACTIVITY
--staff(firstname, lastname)
--assume a username is made up of the first 2 letter of the frist name added to the first 5 letter of the surename
-- write the query to select a username from staff

SELECT SUBSTR('firstname' 1,2), SUBSTR('surename' 1,5) 
FROM staff;

-- TRIM
SELECT TRIM(TRAILING 'N' FROM surename)
FROM customers;

SELECT TRIM(LEADING 'N' FROM surename)
FROM customers;

SELECT TRIM('N' FROM surename)
FROM customers;

--Write a query to trim the space from first names and surename


SELECT TRIM('' FROM firstname), TRIM('' FROM surename)
FROM customers;

-- CHARACTER FUNCTION RETURNING NUMBER
-- LENGTH returns the length of char
SELECT LENGTH('CAROLE') FROM staff;

--INSRT searches string for substrings
SELECT INSTR('CORPORATE FLOOR','OR', 3,2 ) FROM DUAL;

-- Write a query to return the firstname, starting at the 3rd letter of the first name
SELECT SUBSTR(firstname, 3, LENGTH(firstname))
FROM staff;

