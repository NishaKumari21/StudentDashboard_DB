USE STUDENT;
-- QUERY 1-------------
SELECT COUNT(*)
 FROM STUDENT_INFO;
--  QUERY2--------------
 SELECT 
 DISTINCT STUDENT_NAME
 FROM STUDENT_INFO;
--  QUERY3 BY GROUPBY--------------
 SELECT STUDENT_NAME,
 COUNT(*) STUDENTNAME
 FROM STUDENT_INFO
 GROUP BY   STUDENT_ID;
 
--  syntax------------
-- SELECT column_name, aggregate_function(column_name)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name
-- ORDER BY column_name;
