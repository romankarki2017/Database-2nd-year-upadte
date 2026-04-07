-- Contact Details
CREATE TABLE contactdetails (
    phone_no VARCHAR2(20) NOTNULL,
    email VARCHAR2(50) NOTNULL,
    social_links VARCHAR2(100)
);

ALTER TABLE contactdetails ADD contact_id NUMBER;
ALTER TABLE contactdetails ADD CONSTRAINT pk_contact PRIMARY KEY (contact_id);

INSERT INTO contactdetails (contact_id, phone_no, email, social_links)
VALUES (1, '9841079773', 'romankarki2017@gmail.com', 'roman2017fb.com');


-- Education
CREATE TABLE educations (
    institution VARCHAR2(100),
    grad_year NUMBER,
    GPA VARCHAR2(10),
    stream VARCHAR2(50)
);

ALTER TABLE educations ADD education_id NUMBER;
ALTER TABLE educations ADD CONSTRAINT pk_education PRIMARY KEY (education_id);

INSERT INTO educations (education_id, institution, grad_year, GPA, stream)
VALUES (101, 'Nami', 2028, '4.0', 'Computing');


-- Address
CREATE TABLE address (
    province VARCHAR2(50),
    district VARCHAR2(50),
    ward_no NUMBER
);

ALTER TABLE address ADD address_no NUMBER;
ALTER TABLE address ADD CONSTRAINT pk_address PRIMARY KEY (Address_no);

INSERT INTO Address (address_no, province, district, Ward_no)
VALUES (501, 'Bagmati', 'Budhanilkantha', 9);


-- Identity
CREATE TABLE identity (
    nationality VARCHAR2(30),
    country VARCHAR2(50),
    gender VARCHAR2(15)
);

ALTER TABLE identity ADD NID_no NUMBER;
ALTER TABLE identity ADD CONSTRAINT pk_identity PRIMARY KEY (NID_no);

INSERT INTO identity (NID_no, nationality, country, gender)
VALUES (29291901, 'Nepali', 'Nepal', 'Male');


-- Profession
CREATE TABLE profession (
    position VARCHAR2(50),
    experience NUMBER,
    salary NUMBER(10,2)
);

ALTER TABLE profession ADD profession_id NUMBER;
ALTER TABLE profession ADD CONSTRAINT pk_profession PRIMARY KEY (profession_id);

INSERT INTO profession (profession_id, position, experience, salary)
VALUES (1232, 'Software Engineer', 2, 999999.00);