-- Contact Details
CREATE TABLE ContactDetails (
    phone_no VARCHAR2(20),
    email VARCHAR2(50),
    social_links VARCHAR2(100)
);

ALTER TABLE ContactDetails ADD contact_id NUMBER;
ALTER TABLE ContactDetails ADD CONSTRAINT pk_contact PRIMARY KEY (contact_id);

INSERT INTO ContactDetails (contact_id, phone_no, email, social_links)
VALUES (1, '9841234567', 'romankarki2017@gmail.com', 'roman2017fb.com');


-- Education
CREATE TABLE Educations (
    institution VARCHAR2(100),
    grad_year NUMBER,
    GPA VARCHAR2(10),
    stream VARCHAR2(50)
);

ALTER TABLE Educations ADD education_id NUMBER;
ALTER TABLE Educations ADD CONSTRAINT pk_education PRIMARY KEY (education_id);

INSERT INTO Educations (education_id, institution, grad_year, GPA, stream)
VALUES (101, 'Nami', 2028, '4.0', 'Computing');


-- Address
CREATE TABLE Address (
    province VARCHAR2(50),
    district VARCHAR2(50),
    Ward_no NUMBER
);

ALTER TABLE Address ADD Address_no NUMBER;
ALTER TABLE Address ADD CONSTRAINT pk_address PRIMARY KEY (Address_no);

INSERT INTO Address (Address_no, province, district, Ward_no)
VALUES (501, 'Bagmati', 'Budhanilkantha', 9);


-- Identity
CREATE TABLE Identity (
    nationality VARCHAR2(30),
    country VARCHAR2(50),
    gender VARCHAR2(15)
);

ALTER TABLE Identity ADD NID_no NUMBER;
ALTER TABLE Identity ADD CONSTRAINT pk_identity PRIMARY KEY (NID_no);

INSERT INTO Identity (NID_no, nationality, country, gender)
VALUES (29291901, 'Nepali', 'Nepal', 'Male');


-- Profession
CREATE TABLE Profession (
    position VARCHAR2(50),
    experience NUMBER,
    salary NUMBER(10,2)
);

ALTER TABLE Profession ADD profession_id NUMBER;
ALTER TABLE Profession ADD CONSTRAINT pk_profession PRIMARY KEY (profession_id);

INSERT INTO Profession (profession_id, position, experience, salary)
VALUES (1232, 'Software Engineer', 2, 999999.00);