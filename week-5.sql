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
CREATE TABLE object_table_name OF object_type_name;

-- STEP 3:
CREATE TABLE TABLE_NAME(
    attribute DATATYPE(SIZE),
    attribute object_type_name,
    attribute REF object_type_name
    SCOPE IS object_table_name);

-----  MY TABLE AND OBJECT TYPE EXAMPLE
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

-- SIMPLE VARRAY
CREATE TYPE array_type_name AS
VARRAY(SIZE) OF datatype;

CREATE TYPE name_varray_type AS 
VARRAY(5) OF VARCHAR2(50);
/


-- MULTIDIMENSIONAL VARRAY
--Step 1: create type
CREATE TYPE object_type_name AS OBJECT(
    attribute_name DATATYPE(SIZE),
    attribute_name DATATYPE(SIZE),
    attribute_name DATATYPE(SIZE),
)

--step 2: use the type defination to create the varray
CREATE TYPE varray_type_name AS 
VARRAY(SIZE) OF object_type_name;
/

--USING VARRAY
CREATE TABLE sites (
    site_id NUMBER(6),
    classroom Classromm_varray_type
);

ALTER TABLE sites
ADD (classroom Classromm_varray_type);

