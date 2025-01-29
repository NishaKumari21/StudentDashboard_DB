use student;
show tables;
desc student_info;
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




