use student;
-- SUBQUERY 1-----------------
select * 
from student_info
where student_name='Ayush Kumar';
-- SUBQUERY2----------------------- 
SELECT * 
FROM STUDENT_INFO
WHERE STUDENT_ADDRESS REGEXP 'INDIA' AND  GENDER='MALE' ;