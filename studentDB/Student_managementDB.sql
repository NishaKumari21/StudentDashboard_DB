create database if not exists Student;
use student;
show tables;
create table student_info (student_id INT NOT NULL PRIMARY KEY,student_name varchar(50),student_address varchar(60),student_phone varchar(30));
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(101,'Ayush Kumar','jaipur,India','+91-8896949590','Female');
desc student_info;
-- update student_info
-- set student_phone int=student_phone varchar(12);
alter table student_info modify student_phone varchar(32);
alter table student_info add gender enum('Female','Male') not null;
select * from student_info;