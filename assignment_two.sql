CREATE TABLE classroom (
 room  VARCHAR(500) NOT NULL,
 street  VARCHAR(500) NOT NULL,
 zip VARCHAR(500) NOT NULL,
 city VARCHAR(500) NOT NULL
);


CREATE TABLE contact_person (
 id INT NOT NULL,
 first_name VARCHAR(500) NOT NULL,
 last_name VARCHAR(500) NOT NULL,
 relation_to_student VARCHAR(500) NOT NULL,
 phone_no VARCHAR(500) NOT NULL
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (id);


CREATE TABLE email (
 id INT NOT NULL,
 email VARCHAR(500) NOT NULL
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (id);


CREATE TABLE employee_instrument (
 id INT NOT NULL,
 instrument VARCHAR(500) NOT NULL
);

ALTER TABLE employee_instrument ADD CONSTRAINT PK_employee_instrument PRIMARY KEY (id);


CREATE TABLE person (
 id INT NOT NULL,
 person_number VARCHAR(12) NOT NULL,
 first_name VARCHAR(500) NOT NULL,
 last_name VARCHAR(500) NOT NULL,
 street VARCHAR(500) NOT NULL,
 zip VARCHAR(5) NOT NULL,
 city VARCHAR(500) NOT NULL
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);


CREATE TABLE person_email (
 person_id INT NOT NULL,
 email_id INT NOT NULL
);

ALTER TABLE person_email ADD CONSTRAINT PK_person_email PRIMARY KEY (person_id,email_id);


CREATE TABLE phone (
 id INT NOT NULL,
 phone_no VARCHAR(500) NOT NULL
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (id);


CREATE TABLE sibling (
 id INT NOT NULL,
 sibling VARCHAR(500) NOT NULL
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (id);


CREATE TABLE student (
 id INT NOT NULL,
 student_no VARCHAR(500),
 person_id INT
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE student_contact_person (
 contact_person_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE student_contact_person ADD CONSTRAINT PK_student_contact_person PRIMARY KEY (contact_person_id,student_id);


CREATE TABLE student_sibling (
 sibling_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE student_sibling ADD CONSTRAINT PK_student_sibling PRIMARY KEY (sibling_id,student_id);


CREATE TABLE instructor (
 id INT NOT NULL,
 employment_no VARCHAR(500) NOT NULL,
 person_id INT
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instructor_employee_instrument (
 employee_instrument_id INT NOT NULL,
 instructor_id INT NOT NULL
);

ALTER TABLE instructor_employee_instrument ADD CONSTRAINT PK_instructor_employee_instrument PRIMARY KEY (employee_instrument_id,instructor_id);


CREATE TABLE lesson (
 instructor_id INT NOT NULL,
 id INT NOT NULL,
 student_id INT NOT NULL,
 level VARCHAR(500) NOT NULL,
 date TIMESTAMP(10) NOT NULL,
 start_time TIME(6) NOT NULL,
 end_time TIME(6) NOT NULL,
 fee VARCHAR(500) NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (instructor_id,id,student_id);


CREATE TABLE person_phone (
 person_id INT NOT NULL,
 phone_id INT NOT NULL
);

ALTER TABLE person_phone ADD CONSTRAINT PK_person_phone PRIMARY KEY (person_id,phone_id);


CREATE TABLE rental (
 id INT NOT NULL,
 type_of_instrument VARCHAR(500) NOT NULL,
 fee VARCHAR(500) NOT NULL,
 time_rented TIMESTAMP(10) NOT NULL,
 due_date TIMESTAMP(10) NOT NULL,
 student_id INT
);

ALTER TABLE rental ADD CONSTRAINT PK_rental PRIMARY KEY (id);


CREATE TABLE single_lesson (
 type_of_instrument VARCHAR(500),
 instructor_id INT,
 lesson_id INT,
 student_id INT
);


CREATE TABLE ensamble (
 min_students VARCHAR(500),
 genre VARCHAR(500),
 instructor_id INT,
 lesson_id INT,
 student_id INT
);


CREATE TABLE group_lesson (
 min_value VARCHAR(500) NOT NULL,
 type_of_instrument VARCHAR(500) NOT NULL,
 instructor_id INT,
 lesson_id INT,
 student_id INT
);


CREATE TABLE instrument (
 quantity VARCHAR(500) NOT NULL,
 brand VARCHAR(500) NOT NULL,
 location_of_instrument VARCHAR(500),
 rental_id INT
);


ALTER TABLE person_email ADD CONSTRAINT FK_person_email_0 FOREIGN KEY (person_id) REFERENCES person (id);
ALTER TABLE person_email ADD CONSTRAINT FK_person_email_1 FOREIGN KEY (email_id) REFERENCES email (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE student_contact_person ADD CONSTRAINT FK_student_contact_person_0 FOREIGN KEY (contact_person_id) REFERENCES contact_person (id);
ALTER TABLE student_contact_person ADD CONSTRAINT FK_student_contact_person_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_0 FOREIGN KEY (sibling_id) REFERENCES sibling (id);
ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE instructor_employee_instrument ADD CONSTRAINT FK_instructor_employee_instrument_0 FOREIGN KEY (employee_instrument_id) REFERENCES employee_instrument (id);
ALTER TABLE instructor_employee_instrument ADD CONSTRAINT FK_instructor_employee_instrument_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_0 FOREIGN KEY (person_id) REFERENCES person (id);
ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_1 FOREIGN KEY (phone_id) REFERENCES phone (id);


ALTER TABLE rental ADD CONSTRAINT FK_rental_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE single_lesson ADD CONSTRAINT FK_single_lesson_0 FOREIGN KEY (instructor_id,lesson_id,student_id) REFERENCES lesson (instructor_id,id,student_id);


ALTER TABLE ensamble ADD CONSTRAINT FK_ensamble_0 FOREIGN KEY (instructor_id,lesson_id,student_id) REFERENCES lesson (instructor_id,id,student_id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (instructor_id,lesson_id,student_id) REFERENCES lesson (instructor_id,id,student_id);


ALTER TABLE instrument ADD CONSTRAINT FK_instrument_0 FOREIGN KEY (rental_id) REFERENCES rental (id);

