-- PL/SQL. Procedural Language

/* THE BLOCK STRUCTURE
Unnamed block have 3 parts 
1. DECLARE
   Declare variables, cursors and nested blocks referenced in the execution and exception sections
2. BEGIN
   Executable statements
   Code that is executed by the PL/SQL engine
3. EXCEPTION
   Handle exception */

SET SERVEROUTPUT ON;

-- LOOPs Exit
DECLARE
vn_counter NUMBER(3):=0;
BEGIN
LOOP
   IF vn_counter>3 THEN
      EXIT; --needs a point to break the loop
   END IF;
   DBMS_OUTPUT.PUT_LINE('counter has not exceeded 3');
   vn_counter := vn_counter +1;

END LOOP;
END;

-- EXIT - WHEN
-- EXIT WHEN condition more concise and clear
DECLARE
vn_counter NUMBER(3):=0;
BEGIN
   LOOP
      EXIT WHEN vn_counter>3;
      DBMS_OUTPUT.PUT_LINE('counter hasnt exceeded 3');
      vn_counter := vn_counter +1;
   END LOOP;
END;

-- WHILE LOOP
DECLARE
   vn_counter NUMBER := 0;
BEGIN
   WHILE vn_counter <= 10 LOOP
      DBMS_OUTPUT.PUT_LINE('Number: ' || vn_counter);
      
      vn_counter := vn_counter + 1;
   END LOOP;
END;
/


vn_counter NUMBER(3):= 0;
BEGIN
   WHILE  3>=vn_counter LOOP
      DBMS_OUTPUT.PUT_LINE('counter has not exceeded 3');
      
      vn_counter := vn_counter + 1;
   END LOOP;
END;
/

-- FOR LOOP
BEGIN
   FOR i IN 0..10 LOOP
      DBMS_OUTPUT.PUT_LINE('Number: ' || i);
   END LOOP;
END;
/
--REVERSE
BEGIN
   FOR i IN REVERSE 0..10 LOOP
      DBMS_OUTPUT.PUT_LINE('Number: ' || i);
   END LOOP;
END;
/

-- Printing letter of name. 
DECLARE
   vc_name VARCHAR2(30) := 'ROMAN';
BEGIN
   FOR vn_counter IN 1..LENGTH(vc_name) LOOP
      DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_name, vn_counter, 1));
   END LOOP; 
END;
/

--FORALL LOOP

-- ANCHORED TYPE
students.firstname%TYPE

--declaring variable
DECLARE
vc_firstname VARCHAR2(30):='ROMAN';
vc_surename students.surename%TYPE;
vn_student_id NUMBER(2);
BEGIN

--structure
CREATE OR REPLACE PROCEDURE procedure_name
   [(parameter DATATYPE, parameter DATATYPE)] IS
   local declarations
BEGIN
   Execution statement
[EXCEPTION
   Exception handlers]
END[procedure_name];
/

--example
CREATE OR REPLACE PROCEDURE proc_add_subject IS
vc_subject_name subject_areas.subject_name%TYPE:= 'NEW SUBJECT NAME';

BEGIN
   INSERT INTO SUBJECT_AREAS
   VALUES(seq_subject_id:nextval, vc_subject_name);

END proc_add_subject;
/
SHOW ERRORS

-- executing procudures
execute pro_add_subject;










