--Example- parameter
CREATE OR REPLACE PROCEDURE proc_program (in_subject_id IN subject_area.subject_id%TYPE) IS

BEGIN
   DELETE from subject_area
   WHERE subject_id = in_subject_id;

   END proc_program;
   /

CREATE OR REPLACE PROCEDURE proc_insert_program ( in_subject_name IN subject_area.subject_name%TYPE
) IS

BEGIN
   INSERT INTO subject_area (subject_id, subject_name)
   VALUES (seq_subject_id.NEXTVAL, in_subject_name);

END proc_insert_program;
/

-- Calling Procedure
CREATE OR REPLACE PROCEDURE pro_call(in_parameter VARCHAR2) IS
variablename VARCAHR2(30);
BEGIN
-- could have some other statememnt here
/* proc_calcsometing; -- no parameters : no parenthesis
proc_dosomething(in_parameter); -- can pass parameters in 
proc_addsomething(variablename); --argument could be parameter or literal
*/
END;

-- DELETING FUNCTION
DROP PROCEDURE procedure_name;
DROP PROCEDURE proc_name;


-- FUNCTIONS
/* compute and return value
only has one RETURN
same structure as procedure
*/

-- STRUCTURE
CREATE OR REPLACE FUNCTION function_name 
[(parameter DATATYPE)] RETURN DATATYPE IS
local declarations

BEGIN
    Execution statements
[exception 
    Expection handlers]
END [procedure_name];
    /


--EXample
CREATE OR REPLACE FUNCTION func_count_offerings
RETURN number IS
    vn_course_ct NUMBER(4);

BEGIN
    SELCET COUNT(*)
    INTO vn_course_ct
    FROM offerings
    WHERE course_id = 133;

    RETURN vn_course_ct;

END fucn_count_offerings;



CREATE OR REPLACE FUNCTION get_total_students 
RETURN NUMBER IS
   vn_total NUMBER;
BEGIN
   SELECT COUNT(*) 
   INTO vn_total 
   FROM students;
   
   RETURN vn_total;
END get_total_students;
/

-- CALLING FUNCTION. EXAMPLE
CREATE OR REPLACE PROCEDURE
proc_using_func IS
vn_no_runs number(20);

BEGIN

vn_no_of_run:= func_count_offering;
DBMS_OUTPUT.PUT LINE ('the value returned from the function is' || vn_no_of_runs);

END proc_using_func;
/

-- PARAMETER IN FUNCTIONS
CREATE OR REPLACE FUNCTION fuc_count_offerings
(in_course_id NUMBER) RETURN number IS
vn_course_ct NUMBER(4);

BEGIN
    SELECT COUNT(*)
    INTO vn_course_ct
    FROM offerings
    WHERE course_id = in_course_id;

    RETURN vn_course_ct;

END func_count_offerings;
/

-- Calling Function With parameter
CREATE OR REPLACE PROCEDURE
proc_using_func(in_course_id NUMBER)IS

vn_no_of_NUMBERS(20);
BEGIN

vn_no_of_runs:=
func_count_offerings(in_course_id);

END proc_using_func;

-- DROPPING FUNCTION
DROP FUNCTION function_name;
DROP FUNCTION func_count_staff;

-------------
CREATE OR REPLACE FUNCTION fn_username (
   firstname IN VARCHAR2,
   lastname  IN VARCHAR2
) RETURN VARCHAR2 IS
   username VARCHAR2(20);
BEGIN
   
   username := SUBSTR(firstname, 1, 2) || SUBSTR(lastname, 1, 5);
   
   RETURN username;
END fn_username;
/