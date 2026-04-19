-- Object type as column definations
CREATE TABLE sites (
    site-id. NUMBER(6),
    address address_type
);

-- Composite object types
CREATE OR REPLACE TYPE company_type AS OBJECT (
    company_id NUMBER(6),
    company_name VARCHAR2(50),
    company_address address_type
);


--STEPS TO CREATE OBJECT COLUMNS AND TABLES
-- STEP 1: create type
CREATE OR REPLACE TYPE object_type_name AS OBJECT(
    attribute DATATYPE(SIZE),
    attribute DATATYPE(SIZE),
    attribute DATATYPE(SIZE),
)

-- STEP 2: uses as an object table definations
CREATE TABLE object_table_name OF object_tyoe_name;

-- STEP 3:
CREATE TABLE TABLE_NAME(
    attribute DATATYPE(SIZE),
    attribute object_type_name,
    attribute REF object_type_name
    SCOPE IS object_table_name);

-----
CREATE OR REPLACE TYPE student_type AS OBJECT (
    student_id   NUMBER(6),
    student_name VARCHAR2(50),
    age          NUMBER(3)
);

CREATE TABLE student_table OF student_type;

INSERT INTO student_table VALUES (1, 'Roman', 20);
INSERT INTO student_table VALUES (2, 'Karki', 21);


-- REFRENCING OBJECTS TABLE in Relational Tables
CREATE TABLE instructors(
    instructor_id NUMBER(6),
    address REF address_type SCOPE IS address_table
);
