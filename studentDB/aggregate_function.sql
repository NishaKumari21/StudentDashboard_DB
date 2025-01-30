-- Aggregate function:
-- MIN()
-- MAX()
-- COUNT()
-- SUM()
-- AVG()
-- ON NUMERIC DATA-- 
use student;

-- MAX FUNCTION-- 
select
max(student_id) AS MAX
from student_info;

-- MIN FUNCTION
select 
min(student_id) AS MIN
from student_info;

-- SUM FUNCTION
select
sum(student_id) as SUM
from student_info;
-- COUNT FUNCTION 
select 
count(student_id) AS COUNT
from student_info;
-- AVERAGE FUNCTION
select 
avg(student_id) AS AVERAGE
from student_info;
SELECT * FROM STUDENT_INFO;
-- ON STRING/TEXT DATA---------------
-- MAX FUNCTION
SELECT 
MAX(STUDENT_NAME)
FROM STUDENT_INFO;
-- MINIMUM FUNCTION
SELECT
MIN(STUDENT_NAME)
FROM STUDENT_INFO;