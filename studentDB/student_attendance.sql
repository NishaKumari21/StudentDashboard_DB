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