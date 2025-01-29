create database if not exists Student;
use student;
show tables;
create table student_info (student_id INT NOT NULL PRIMARY KEY,student_name varchar(50),student_address varchar(60),student_phone varchar(30));
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(101,'Ayush Kumar','jaipur,India','+91-8896949590','Female');
desc student_info;
show databases;
use student;
show tables;
-- first insert into student_info table-- 
select * from student_info;
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(102,'Rochit Gupta','Raipur,India','+91-8869141412','Male');
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(103,'Rohit sharma','Amer,India','+91-7769141412','Male');
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(104,'IShann Gupta','Kukas,India','+91-9869141412','Male');
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(105,'Ruchi Sah','jodhapur,India','+91-6789141412','Female');
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(106,'Ruchikta roy','Udaipur,India','+91-9869141412','Female');
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(107,'Tanya Goyal','Raipur,India','+91-6769141412','Female');
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(108,'Ayush Raj','Mp,India','+91-7799141412','Male');
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(109,'AYushi Kuntal','Up,India','+91-9867141412','Female');
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(110,'Rahul Singh','Amer,India','+91-8767141412','Male');
desc student_info
select *from student_info;
-- student course table-- 
create table student_course(c_id int primary key not null,
student_id INT NOT NULL, 
foreign key(student_id) references student_info(student_id),
course_name varchar(50));
insert into student_course(c_id,student_id,course_name)values(1,103,'SQL');
insert into student_course(c_id,student_id,course_name)values(3,102,'DBMS');
insert into student_course(c_id,student_id,course_name)values(2,105,'R');
insert into student_course(c_id,student_id,course_name)values(4,104,'PYTHON');
insert into student_course(c_id,student_id,course_name)values(6,101,'C++');
insert into student_course(c_id,student_id,course_name)values(5,106,'C');
insert into student_course(c_id,student_id,course_name)values(8,107,'HTML');
insert into student_course(c_id,student_id,course_name)values(7,108,'CSS');
insert into student_course(c_id,student_id,course_name)values(10,110,'POWER BI');
insert into student_course(c_id,student_id,course_name)values(9,109,'JAVA');
select * from Student_course;
-- student attendance table-- 
use student;

create table student_attendance(status varchar(50),
attendance_date varchar(50),
student_id INT NOT NULL, 
foreign key(student_id) references student_info(student_id));
alter table student_attendance modify status enum('present','absent') not null;
alter table student_attendance modify  attendance_date date;
alter table student_attendance modify attendance_date date  default '2024-05-21';
insert into student_attendance(student_id,attendance_date,status)values(101,'2024-05-12','Present');
insert into student_attendance(student_id,status)values(103,'absent');
insert into student_attendance(student_id,attendance_date,status)values(104,'2024-05-12','Present');
insert into student_attendance(student_id,attendance_date,status)values(105,'2024-05-12','absent');
insert into student_attendance(student_id,attendance_date,status)values(106,'2024-05-12','absent');
insert into student_attendance(student_id,attendance_date,status)values(107,'2024-05-12','Present');
insert into student_attendance(student_id,attendance_date,status)values(108,'2024-05-12','absent');
insert into student_attendance(student_id,attendance_date,status)values(109,'2024-05-12','Present');
insert into student_attendance(student_id,attendance_date,status)values(110,'2024-05-12','absent');
select * from  student_attendance;
-- student grade table
create table student_grade(foreign key(student_id) references student_info(student_id),
student_id int not null,
c_id int not null,
foreign key(c_id) references student_course(c_id),
grade varchar(50));
insert into student_grade(student_id,c_id,grade)values(102,1,'A++');
insert into student_grade(student_id,c_id,grade)values(103,3,'A');
insert into student_grade(student_id,c_id,grade)values(101,2,'B++');
insert into student_grade(student_id,c_id,grade)values(104,5,'B');
insert into student_grade(student_id,c_id,grade)values(105,4,'C+');
insert into student_grade(student_id,c_id,grade)values(106,6,'C');
insert into student_grade(student_id,c_id,grade)values(108,7,'D');
insert into student_grade(student_id,c_id,grade)values(107,9,'A');
insert into student_grade(student_id,c_id,grade)values(109,8,'C++');
insert into student_grade(student_id,c_id,grade)values(110,10,'B+');
select * from student_grade;
-- student_entrollment table
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
