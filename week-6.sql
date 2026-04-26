-- Nested table type
/* unordered set of data elements
same datatype
second colleection type
contains a singel columns */

--STEP TO CREATE NESTED TABLE
-- SETP-1: Create the obj type
CREATE TYPE object_type_name AS OBJECT(
    attribute_name DATATYPE(SIZE),
    attribute_name DATATYPE(SIZE),
    attribute_name DATATYPE(SIZE));
/
-- STEP-2: Use the type defination to create the nested table object type
CREATE TYPE object_table_type_name
AS TABLE OF object_type_name;

--SETP-3: Use the nested table in relational table
CREATE TABLE relational_table_name(
    column_name DATATYPE(SIZE),
    column_name DATATYPE(SIZE),
    column_name object__table_type_name
)
NESTED TABLE nested_column_name STORE AS nested_table_object_name;


/* What are the steps used to create the following info?
contact details should be stored as a varray column in a relational table called students
student id
surename
contact, house no, street, town, postcode
contact uni house no,street, town, postcode
contact work house no,street, town, postcode */
CREATE TYPE Address_Obj AS OBJECT (
    house_no VARCHAR2(10),
    street   VARCHAR2(50),
    town     VARCHAR2(50),
    postcode VARCHAR2(10)
);
/

CREATE TYPE Contact_Varray AS VARRAY(5) OF Address_Obj;
/

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    surname    VARCHAR2(50),
    contacts   Contact_Varray
);
INSERT INTO students VALUES (
    101, 
    'Karki', 
    Contact_Varray(
        Address_Obj('12', 'Ktm', 'Kathmandu', '44600'), 
        Address_Obj('11', 'dnd', 'Lalitpur', '44700'), 
        Address_Obj('99', 'Work', 'Bhaktapur', '44800')    
    )
);

SELECT surname, contacts FROM students;

SELECT s.surname, c.* FROM students s, TABLE(s.contacts) c;