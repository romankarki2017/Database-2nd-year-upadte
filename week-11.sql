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