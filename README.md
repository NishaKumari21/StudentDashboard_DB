Student Database System
Overview
This project involves the creation of a Student Database System that stores various records about students, such as personal details, academic performance, and enrollment information. The database is designed to facilitate easy querying and retrieval of student information based on various criteria.

Technologies Used
Database: MySQL
Programming Language: Python (for interacting with the database, if applicable)
Libraries: MySQL Connector (or any other relevant libraries for database interaction)
Features
Student Table: Contains student information, including personal details like ID, name, age, and email.
Course Table: Stores course-related information, including course names and instructors.
Enrollment Table: Links students with the courses they are enrolled in and stores their grades.
Database Structure
Students Table

Stores details of students, including student ID, name, age, and contact information.
Courses Table

Contains details of the courses offered, such as course ID, course name, and instructor details.
Enrollments Table

Links students to their respective courses and includes grades for each student in the courses they are enrolled in.
Queries Performed
1. Retrieve all student information
This query retrieves all the details of students from the Students table.
2. Find all courses a student is enrolled in
This query fetches the list of courses a particular student is enrolled in, based on their first and last name.
3. Find students enrolled in a specific course
This query retrieves all students enrolled in a specific course, using the course name as a filter.
4. Get the average grade of a student
This query calculates the average grade of a student based on their grades across various courses.
5. Find students who have scored above a certain grade
This query fetches students who have scored above a specified grade, allowing for the identification of top performers.
6. Count the number of students in each course
This query provides a count of students enrolled in each course.
7. Update the grade of a student in a course
This query allows for updating the grade of a student in a particular course.
How to Run
Clone this repository to your local machine.
Set up a MySQL server and create the database.
Import the provided SQL schema to create the necessary tables.
Insert sample data into the tables to begin querying.
Execute the queries as per your requirements for managing the student records.
License
This project is licensed under the MIT License - see the LICENSE file for details.

