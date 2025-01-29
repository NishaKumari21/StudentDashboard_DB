use student;
create table entrollment(
foreign key (student_id) references student_info(student_id),
student_id int not null,
foreign key (c_id) references student_course(c_id),
c_id int not null);
insert into entrollment(student_id,c_id)values(101,2);
insert into entrollment(student_id,c_id)values(102,1);
insert into entrollment(student_id,c_id)values(103,4);
insert into entrollment(student_id,c_id)values(104,3);
insert into entrollment(student_id,c_id)values(105,5);
insert into entrollment(student_id,c_id)values(106,6);
insert into entrollment(student_id,c_id)values(107,7);
insert into entrollment(student_id,c_id)values(108,8);
insert into entrollment(student_id,c_id)values(109,9);
insert into entrollment(student_id,c_id)values(110,10);
select * from entrollment;