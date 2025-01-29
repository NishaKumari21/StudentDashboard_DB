use student;
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



