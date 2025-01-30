show databases;
use student;
show tables;
select * from student_info
inner join student_course
on student_info.student_id=student_course.student_id;

select student_name,student_info.student_id,student_course.c_id,student_course.course_name
 from student_info
inner join student_course
on student_info.student_id=student_course.student_id;

-- self join-- 
-- self join means  joiining more than 2 rows from same tables
select * 
from student_info stud
join student_info faculty
on stud.student_id=faculty.student_id;
-- Implicit join where we are not using the join keyword but we are using the where keyword
select * 
from student_info,student_course
where student_info.student_id=student_course.student_id;

-- Explicit Join (Modern Join):
-- Explicit Join mein hum JOIN keyword ka use karte hain jo ki zyada readable aur structured hota hai.
-- Yeh SQL mein ek modern aur recommended way hai join operations ko perform karne ki. Isme JOIN condition ko alag se ON clause mein specify kiya jata hai
select * 
from student_info
join student_course on student_info.student_id=student_course.student_id;
 
--  left join
select *
from student_info
-- student_info left evrything here 111 is not matching with student_course=student.id then also left table student_info is printing everything even if conditon not matching
left join student_course 
on student_info.student_id=student_course.student_id;
insert into student_info(student_id,student_name,student_address,student_phone,gender)values(111,'harsh','india','+91-6789345510','Male');

-- Right Join
select *
from student_info
-- here right join mei student_course right tabke h tohusme sb print hoga but student_info wle table mei 111 h jo same nhi h toh woprint nhi hoga
Right join  student_course
on student_info.student_id=student_course.student_id;

-- using clause-------------------------
select *
from student_info
Right join  student_course
using (student_id);
-- by writing using we have not to write this below statement
-- on student_info.student_id=student_course.student_id;-- 


