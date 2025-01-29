use student;
-- select statement--
show tables;  
select * from student_info;
-- where clause 
select * from student_info
where student_id=106;
-- logical operator:AND ,OR,NOT
select * from student_info
-- where student_id=101 and gender='Male';
-- where student_id=101 or gender='Female';
where gender not ='Male';
-- IN operator
select * from student_course
where c_id in(1,5,6);
-- like operator-----
select course_name 
from student_course
-- where course_name like '%%C%%';
-- c is present in the course_name-- 
where course_name like '%C';
-- starting is c
-- where course_name like 'C%';
-- ending is c-- 
-- -----------------------------------------------------------------
-- REGEXP operator
-- ^ beginning of string
-- $ end of string
-- | logical or
-- ^[a-h]

select student_name
 from student_info
 where student_name REGEXP '^i';
 
 select student_name
 from student_info
 where student_name REGEXP 'a$';
 
 select student_name
 from student_info
 where student_name REGEXP '^[a-h]';
 
  select student_name
 from student_info
 where student_name REGEXP "^[a-h] | a$";
 
--  order by operator---------
select student_name
 from student_info
order by student_name;

-- not null operator-- 
select student_name
from student_info
where student_name is null;