-- Trigger Example -Using IF
CREATE or REPLACE TRIGGER trig_date_constrain
BEFORE INSERT OR UPDATE OF billing_date ON invoices
FOR EACH ROW

DECLARE
    vd_today DATE;
BEGIN
    SELECT SYSDATE
    INTO vd_today
    FROM DUAL;

IF:NEW.biling_date>vd_today THEN

    RAISE_APPLICANT_ERROR(-20000, 'BILLING_DATE MUST BE BEFORE CURRENT DATE');

END trig_date_constraint
/
 
--new table with column. id, dob if insert future date in dob show error
CREATE TABLE person (
    id NUMBER PRIMARY KEY,
    dob DATE
);

CREATE OR REPLACE TRIGGER trig_dob_constraint
BEFORE INSERT OR UPDATE OF dob ON person
FOR EACH ROW
BEGIN
    IF :NEW.dob > SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20000,'DOB cannot be a future date.');
    END IF;
END trig_dob_constraint;
/

INSERT INTO person (id, dob)
VALUES (1, TO_DATE('15-JAN-2000', 'DD-MON-YYYY'));

INSERT INTO person (id, dob)
VALUES (2, TO_DATE('15-JAN-2030', 'DD-MON-YYYY'));

SELECT trigger_body, description
FROM user_triggers;

-- Maniging trigger
ALTER TRIGGER trigger_name DISABLE | ENABLE;

-- Trigger example  Predicates
CREATE OR REPLACE TRIGGER trig_predicates
BEFORE INSERT OR UPDATE OR DELETE OF billing_date ON
invoices
FOR EACH ROW

DECLARE
vc_change_type CHAR;
BEGIN

IF(INSERTING OR UPDATING) THEN
vc_change_type:=func_change_log;


-- Example
DECLARE
    CURSOR cur_student IS
    SELECT student_id, student_firstname, student_lastname, phone_no, date_of_birth, voucher
    FROM student;

    rec_cur_students cur_student%ROWTYPE;
BEGIN
    OPEN cur_student;
    FETCH cur_student INTO rex_cur_student;
    IF rec_sur_student.voucher= 'Y' THEN

        INSERT INTO attendance VALUES(3737, rec_cur_students.student_id);
        CLOSE cur_students

    END IF;
END;
