insert into contact_person (id, first_name, last_name, relation_to_student, phone_no) values (543, 'Mark', 'Bickmore','Parent', '072-4028493');
insert into contact_person (id, first_name, last_name, relation_to_student, phone_no) values (938, 'Jessica', 'Stone','Parent', '070-2840581');
insert into contact_person (id, first_name, last_name, relation_to_student, phone_no) values (233, 'Per', 'Andersson','Grand Parent', '076-2938501');
insert into contact_person (id, first_name, last_name, relation_to_student, phone_no) values (594, 'Lars', 'Hamn','Parent', '08-2739278');
insert into contact_person (id, first_name, last_name, relation_to_student, phone_no) values (958, 'Anna', 'Gren','Aunt', '073-9283947');


insert into email (id, email) values (19369, 'anna24@hotmail.com' );
insert into email (id, email) values (38583, 'jagärcool@hotmail.com' );
insert into email (id, email) values (94728, 'stina_beck@gmail.com' );
insert into email (id, email) values (47299, 'harke@kth.se' );


insert into instructor (id,person_id,employee_no) values (90, 150, '27491');
insert into instructor (id,person_id,employee_no) values (5, 119, '48401');
insert into instructor (id,person_id,employee_no) values (57, 19369, '27491');


insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('20', 'guitar', 'Stockholm', 1);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('8', 'guitar', 'Kalmar', 2);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('4', 'drums', 'Sundsvall', 3);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('6', 'saxophone', 'Stockholm', 4);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('10', 'guitar', 'Gothenburg', 5);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('3', 'guitar', 'Sundsvall', 6);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('2', 'drums', 'Uppsala', 7);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('3', 'saxophone', 'Uppsala', 8);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('20', 'guitar', 'Malmö', 9);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('8', 'guitar', 'Uppsala', 10);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('4', 'drums', 'Östersund', 11);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('1', 'saxophone', 'Östersund', 12);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('10', 'guitar', 'Östersund', 13);
insert into instrument (quantity, brand, location_of_instrument, rental_id) values ('4', 'drums', 'Malmö', 14);


insert into lesson (id, instructor_id, level, date, start_time, end_time, fee, student_id, person_id) 
values (1, 90,'Beginner', 2022-12-08, 12:30, 12:30, '300:-',6522,7);
insert into lesson (id, instructor_id, level, date, start_time, end_time, fee, student_id, person_id) 
values (1, 5,'Beginner', 2022-12-08, 14:30, 15:30, '300:-',44018,17);
insert into lesson (id, instructor_id, level, date, start_time, end_time, fee, student_id, person_id) 
values (1, 57,'Intermediate', 2022-12-08, 16:30, 17:30, '400:-',17486,20);
insert into lesson (id, instructor_id, level, date, start_time, end_time, fee, student_id, person_id) 
values (1, 90,'Advanced', 2022-12-09, 10:30, 12:00, '600:-',825,13);
insert into lesson (id, instructor_id, level, date, start_time, end_time, fee, student_id, person_id) 
values (1, 5,'Intermediate', 2022-12-09, 12:30, 13:30, '400:-',729,9);
insert into lesson (id, instructor_id, level, date, start_time, end_time, fee, student_id, person_id) 
values (1, 57,'Intermediate', 2022-12-10, 14:30, 15:30, '400:-',62024,3);
insert into lesson (id, instructor_id, level, date, start_time, end_time, fee, student_id, person_id) 
values (1, 90,'Beginner', 2022-12-10, 17:30, 18:30, '300:-',781,15);

insert into person (id, person_number, first_name, last_name, street, zip, city) values (6522, '640906-0353','Hersch', 'Haswell', 'Löjromvägen 3', '15682', 'Malmö');
insert into person (id, person_number, first_name, last_name, street, zip, city) values (62024,'830204-6007', 'Berget', 'Daughtry', 'Skogsvägen 23', '56292', 'Stockholm');
insert into person (id, person_number, first_name, last_name, street, zip, city) values (44018,'500625-2266', 'Ellswerth', 'Meecher', 'Bokgränd 9', '93716', 'Göteborg');
insert into person (id, person_number, first_name, last_name, street, zip, city) values (781, '470714-5785','Thain', 'Reeks', 'Ellas väg 7', '12574', 'Stockholm');
insert into person (id, person_number, first_name, last_name, street, zip, city) values (17486, '600809-9497','Larry', 'Bickmore','Skolgatan 90', '20746', 'Malmö');
insert into person (id, person_number, first_name, last_name, street, zip, city) values (825,'720808-8339', 'Gabbey', 'Lalor', 'Blomgatan 87', '57194', 'Sundsvall');
insert into person (id, person_number, first_name, last_name, street, zip, city) values (729,'611209-6907', 'Brander', 'Dickin', 'Postgränd 1', '15682', 'Östersund');
insert into person (id, person_number, first_name, last_name, street, zip, city) values (150, '840316-2948','Evita', 'Eixenberger', 'Sjukhusvägen 6', '15682', 'Kalmar' );
insert into person (id, person_number, first_name, last_name, street, zip, city) values (119, '641231-7362','Brandon', 'Skoof', 'Hallonvägen 92', '15682', 'Stockholm' );
insert into person (id, person_number, first_name, last_name, street, zip, city) values (19369, '790928-1339', 'Hyacinthia', 'Shoute', 'Universitetsgatan 57', '15682', 'Uppsala' );


insert into rental (id, type_of_instrument, fee, time_rented, due_date, max_rent_limit, student_id, person_id) 
values (5, 'guitar', '300:- /month', '2022-10-01', '2023-10-01','12',17, 44018);
insert into rental (id, type_of_instrument, fee, time_rented, due_date, max_rent_limit, student_id, person_id) 
values (1, 'guitar', '300:- /month', '2022-08-27', '2023-08-27','12',3, 62024);
insert into rental (id, type_of_instrument, fee, time_rented, due_date, max_rent_limit, student_id, person_id) 
values (4, 'saxophone', '450:- /month', '2022-06-12', '2023-06-12','12',7, 6522);
insert into rental (id, type_of_instrument, fee, time_rented, due_date, max_rent_limit, student_id, person_id) 
values (11, 'drums', '600:- /month', '2022-01-15', '2023-01-15','12',9, 729);


insert into student (id,person_id,student_no) values (7, 6522, '289323');
insert into student (id,person_id,student_no) values (3, 62024, '391704');
insert into student (id,person_id,student_no) values (17, 44018, '491074');
insert into student (id,person_id,student_no) values (15, 781, '198472');
insert into student (id,person_id,student_no) values (20, 17486, '982733');
insert into student (id,person_id,student_no) values (13, 825, '982744');
insert into student (id,person_id,student_no) values (9, 729, '284017');

insert into classroom (room, street, zip, city) values ('1', 'Musikskolvägen 3', '37283', 'Malmö');
insert into classroom (room, street, zip, city) values ('2', 'Musikskolvägen 3', '37283', 'Malmö');
insert into classroom (room, street, zip, city) values ('3', 'Musikskolvägen 3', '37283', 'Malmö');
insert into classroom (room, street, zip, city) values ('1', 'Musikernas väg 23', '42384', 'Stockholm');
insert into classroom (room, street, zip, city) values ('2', 'Musikernas väg 23', '42384', 'Stockholm');
insert into classroom (room, street, zip, city) values ('3', 'Musikernas väg 23', '42384', 'Stockholm');
insert into classroom (room, street, zip, city) values ('4', 'Musikernas väg 23', '42384', 'Stockholm');
insert into classroom (room, street, zip, city) values ('5', 'Musikernas väg 23', '42384', 'Stockholm');
insert into classroom (room, street, zip, city) values ('1', 'Musikgatan 5', '23859', 'Göteborg');
insert into classroom (room, street, zip, city) values ('2', 'Musikgatan 5', '23859', 'Göteborg');
insert into classroom (room, street, zip, city) values ('3', 'Musikgatan 5', '23859', 'Göteborg');
insert into classroom (room, street, zip, city) values ('4', 'Musikgatan 5', '23859', 'Göteborg');
insert into classroom (room, street, zip, city) values ('1', 'Musikens gränd 20', '62547', 'Sundsvall');
insert into classroom (room, street, zip, city) values ('2', 'Musikens gränd 20', '62547', 'Sundsvall');
insert into classroom (room, street, zip, city) values ('1', 'Jazzgatan 56', '41242', 'Kalmar');
insert into classroom (room, street, zip, city) values ('1', 'Rockgränd 2', '34115', 'Uppsala');
insert into classroom (room, street, zip, city) values ('1', 'Skolgränd 9', '98731', 'Östersund');
insert into classroom (room, street, zip, city) values ('2', 'Skolgränd 9', '98731', 'Östersund');


insert into employee_instrument (id, instrument) values (41, 'guitar');
insert into employee_instrument (id, instrument) values (25, 'drums');
insert into employee_instrument (id, instrument) values (61, 'guitar');
insert into employee_instrument (id, instrument) values (12, 'guitar');
insert into employee_instrument (id, instrument) values (40, 'drums');
insert into employee_instrument (id, instrument) values (51, 'saxophone');
insert into employee_instrument (id, instrument) values (6, 'saxophone');



insert into phone (id, phone_no) values (41, '072-3957252');
insert into phone (id, phone_no) values (74, '075-0290184');
insert into phone (id, phone_no) values (28, '072-9284924');
insert into phone (id, phone_no) values (23, '070-9287475');
insert into phone (id, phone_no) values (2,  '077-0283859');
insert into phone (id, phone_no) values (48, '073-0487148');
insert into phone (id, phone_no) values (39, '077-9248762');
insert into phone (id, phone_no) values (71, '072-3947562');




insert into sibling (id, sibling) values (41, 'Stevie Valentine');
insert into sibling (id, sibling) values (52, 'Max Brandt');
insert into sibling (id, sibling) values (12, 'Raees Proctor');
insert into sibling (id, sibling) values (6, 'Olly Baldwin');
insert into sibling (id, sibling) values (13, 'Luc David');
insert into sibling (id, sibling) values (25, 'Jana Calhoun');
insert into sibling (id, sibling) values (27, 'Abbey Hendricks');
insert into sibling (id, sibling) values (33, 'Wayne Gould');
insert into sibling (id, sibling) values (5, 'Tilly Long');



