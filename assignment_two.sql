CREATE TABLE contact_person (
 contact_person_id INT NOT NULL,
 first_name VARCHAR(500) NOT NULL,
 last_name VARCHAR(500) NOT NULL,
 relation_to_student VARCHAR(500) NOT NULL,
 phone_no VARCHAR(500) NOT NULL
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (contact_person_id);


CREATE TABLE email (
 email_id INT NOT NULL,
 email VARCHAR(500) NOT NULL
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (email_id);


CREATE TABLE employee_instrument (
 employee_instrument_id INT NOT NULL,
 instrument VARCHAR(10) NOT NULL
);

ALTER TABLE employee_instrument ADD CONSTRAINT PK_employee_instrument PRIMARY KEY (employee_instrument_id);


CREATE TABLE person (
 person_id INT NOT NULL,
 person_number VARCHAR(12) NOT NULL,
 first_name VARCHAR(500) NOT NULL,
 last_name VARCHAR(500) NOT NULL,
 street VARCHAR(500) NOT NULL,
 zip VARCHAR(5) NOT NULL,
 city VARCHAR(500) NOT NULL
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (person_id);


CREATE TABLE person_email (
 email_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE person_email ADD CONSTRAINT PK_person_email PRIMARY KEY (email_id,person_id);


CREATE TABLE phone (
 phone_id INT NOT NULL,
 phone_no VARCHAR(30) NOT NULL
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (phone_id);


CREATE TABLE sibling (
 sibling_id INT NOT NULL,
 sibling VARCHAR(10) NOT NULL
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (sibling_id);


CREATE TABLE student (
 student_id INT NOT NULL,
 person_id INT NOT NULL,
 student_no VARCHAR(10)
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id,person_id);


CREATE TABLE student_contact_person (
 student_id INT NOT NULL,
 person_id INT NOT NULL,
 contact_person_id INT NOT NULL
);

ALTER TABLE student_contact_person ADD CONSTRAINT PK_student_contact_person PRIMARY KEY (student_id,person_id,contact_person_id);


CREATE TABLE student_sibling (
 sibling_id INT NOT NULL,
 student_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE student_sibling ADD CONSTRAINT PK_student_sibling PRIMARY KEY (sibling_id,student_id,person_id);


CREATE TABLE instructor (
 instructor_id INT NOT NULL,
 person_id INT NOT NULL,
 employment_id VARCHAR(20) NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id,person_id);


CREATE TABLE instructor_employee_instrument (
 employee_instrument_id INT NOT NULL,
 instructor_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE instructor_employee_instrument ADD CONSTRAINT PK_instructor_employee_instrument PRIMARY KEY (employee_instrument_id,instructor_id,person_id);


CREATE TABLE lesson (
 lesson_id INT NOT NULL,
 instructor_id INT NOT NULL,
 level VARCHAR(500) NOT NULL,
 date TIMESTAMP(10) NOT NULL,
 start_time TIMESTAMP(10) NOT NULL,
 end_time TIMESTAMP(10) NOT NULL,
 fee VARCHAR(500) NOT NULL,
 student_id INT,
 person_id INT
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id,instructor_id);


CREATE TABLE person_phone (
 phone_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE person_phone ADD CONSTRAINT PK_person_phone PRIMARY KEY (phone_id,person_id);


CREATE TABLE rental (
 rental_id INT NOT NULL,
 type_of_instrument VARCHAR(500) NOT NULL,
 fee VARCHAR(500) NOT NULL,
 time_rented TIMESTAMP(10) NOT NULL,
 due_date TIMESTAMP(10) NOT NULL,
 max_rent_limit TIMESTAMP(10) NOT NULL,
 student_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE rental ADD CONSTRAINT PK_rental PRIMARY KEY (rental_id);


CREATE TABLE single_lesson (
 lesson_id INT NOT NULL,
 instructor_id INT NOT NULL,
 person_id_0 INT NOT NULL,
 type_of_instrument VARCHAR(500) NOT NULL,
 lesson_id_0 INT,
 instructor_id_0 INT,
 person_id_0_0 INT
);

ALTER TABLE single_lesson ADD CONSTRAINT PK_single_lesson PRIMARY KEY (lesson_id,instructor_id,person_id_0);


CREATE TABLE classroom (
 classroom_id INT NOT NULL,
 room  VARCHAR(500) NOT NULL,
 street  VARCHAR(500) NOT NULL,
 zip VARCHAR(5) NOT NULL,
 city VARCHAR(500) NOT NULL,
 lesson_id INT,
 instructor_id INT,
 person_id_0 INT
);

ALTER TABLE classroom ADD CONSTRAINT PK_classroom PRIMARY KEY (classroom_id);


CREATE TABLE ensamble (
 lesson_id INT NOT NULL,
 instructor_id INT NOT NULL,
 person_id_0 INT NOT NULL,
 min_value VARCHAR(500) NOT NULL,
 genre VARCHAR(500),
 type_of_instrument VARCHAR(500) NOT NULL,
 lesson_id_0 INT,
 instructor_id_0 INT,
 person_id_0_0 INT
);

ALTER TABLE ensamble ADD CONSTRAINT PK_ensamble PRIMARY KEY (lesson_id,instructor_id,person_id_0);


CREATE TABLE group_lesson (
 lesson_id INT NOT NULL,
 instructor_id INT NOT NULL,
 person_id_0 INT NOT NULL,
 min_value VARCHAR(500) NOT NULL,
 type_of_instrument VARCHAR(500) NOT NULL,
 lesson_id_0 INT,
 instructor_id_0 INT,
 person_id_0_0 INT
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (lesson_id,instructor_id,person_id_0);


CREATE TABLE instrument (
 instrument_id INT NOT NULL,
 quantity VARCHAR(500) NOT NULL,
 brand VARCHAR(500) NOT NULL,
 location_of_instrument VARCHAR(500),
 rental_id INT NOT NULL
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);


ALTER TABLE person_email ADD CONSTRAINT FK_person_email_0 FOREIGN KEY (email_id) REFERENCES email (email_id);
ALTER TABLE person_email ADD CONSTRAINT FK_person_email_1 FOREIGN KEY (person_id) REFERENCES person (person_id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_id) REFERENCES person (person_id);


ALTER TABLE student_contact_person ADD CONSTRAINT FK_student_contact_person_0 FOREIGN KEY (student_id,person_id) REFERENCES student (student_id,person_id);
ALTER TABLE student_contact_person ADD CONSTRAINT FK_student_contact_person_1 FOREIGN KEY (contact_person_id) REFERENCES contact_person (contact_person_id);


ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_0 FOREIGN KEY (sibling_id) REFERENCES sibling (sibling_id);
ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_1 FOREIGN KEY (student_id,person_id) REFERENCES student (student_id,person_id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_id) REFERENCES person (person_id);


ALTER TABLE instructor_employee_instrument ADD CONSTRAINT FK_instructor_employee_instrument_0 FOREIGN KEY (employee_instrument_id) REFERENCES employee_instrument (employee_instrument_id);
ALTER TABLE instructor_employee_instrument ADD CONSTRAINT FK_instructor_employee_instrument_1 FOREIGN KEY (instructor_id,person_id) REFERENCES instructor (instructor_id,person_id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_id,person_id) REFERENCES instructor (instructor_id,person_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (student_id,person_id) REFERENCES student (student_id,person_id);


ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_0 FOREIGN KEY (phone_id) REFERENCES phone (phone_id);
ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_1 FOREIGN KEY (person_id) REFERENCES person (person_id);


ALTER TABLE rental ADD CONSTRAINT FK_rental_0 FOREIGN KEY (student_id,person_id) REFERENCES student (student_id,person_id);


ALTER TABLE single_lesson ADD CONSTRAINT FK_single_lesson_0 FOREIGN KEY (lesson_id,instructor_id,person_id_0) REFERENCES lesson (lesson_id,instructor_id,person_id_0);
ALTER TABLE single_lesson ADD CONSTRAINT FK_single_lesson_1 FOREIGN KEY (lesson_id_0,instructor_id_0,person_id_0_0) REFERENCES lesson (lesson_id,instructor_id,person_id_0);


ALTER TABLE classroom ADD CONSTRAINT FK_classroom_0 FOREIGN KEY (lesson_id,instructor_id,person_id_0) REFERENCES lesson (lesson_id,instructor_id,person_id_0);


ALTER TABLE ensamble ADD CONSTRAINT FK_ensamble_0 FOREIGN KEY (lesson_id,instructor_id,person_id_0) REFERENCES lesson (lesson_id,instructor_id,person_id_0);
ALTER TABLE ensamble ADD CONSTRAINT FK_ensamble_1 FOREIGN KEY (lesson_id_0,instructor_id_0,person_id_0_0) REFERENCES lesson (lesson_id,instructor_id,person_id_0);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (lesson_id,instructor_id,person_id_0) REFERENCES lesson (lesson_id,instructor_id,person_id_0);
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_1 FOREIGN KEY (lesson_id_0,instructor_id_0,person_id_0_0) REFERENCES lesson (lesson_id,instructor_id,person_id_0);


ALTER TABLE instrument ADD CONSTRAINT FK_instrument_0 FOREIGN KEY (rental_id) REFERENCES rental (rental_id);


