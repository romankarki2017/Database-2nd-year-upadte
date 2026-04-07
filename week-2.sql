-- Contact Details
CREATE TABLE ContactDetails (
    Phone_no VARCHAR2(15),
    email VARCHAR2(15),
    Social_links VARCHAR2(50)
);

ALTER TABLE ContactDetails
ADD contact_id INT;

ALTER TABLE ContactDetails
ADD CONSTRAINT pk_contact PRIMARY KEY (contact_id);

-- Education
CREATE TABLE Education (
    institution VARCHAR2(15),
    year NUM,
    GPA VARCHAR2(50),
    stream VARCHAR2(15)
);

ALTER TABLE Education
ADD education_id INT;

ALTER TABLE Education
ADD CONSTRAINT pk_education PRIMARY KEY (education_id);


-- Address
CREATE TABLE Address (
    Address_no INT,
    provience VARCHAR2(15),
    district VARCHAR2(50),
    Ward_no INT
);

ALTER TABLE Address
ADD CONSTRAINT pk_address PRIMARY KEY (Address_no);

-- Identity
CREATE TABLE Identity (
    NID_no INT,
    nationality VARCHAR2(15),
    country VARCHAR2(50),
    gender VARCHAR2(15)
);

ALTER TABLE Identity
ADD CONSTRAINT pk_identity PRIMARY KEY (NID_no);

-- Profession
CREATE TABLE Profession (
    Position VARCHAR2(15),
    experience NUM,
    salary DECIMAL(10,2)
);

ALTER TABLE Profession
ADD profession_id INT;

ALTER TABLE Profession
ADD CONSTRAINT pk_profession PRIMARY KEY (profession_id);