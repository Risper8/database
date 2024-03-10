## GROUP 6 MEMBERS
## Patience Kasyoka            patiencekasyoka@gmail.com
## Risper Ndirangu             risperndirangu7@gmail.com
## Agnes Wendi                 agnesswendi@gmail.com
## Joy Odhiambo                odhiambojoy20@gmail.com




## Creating edu_institute database
CREATE DATABASE edu_institute;
use edu_institute;

## Creating the table
CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
gender CHAR(1),
enrollment_date DATE,
program VARCHAR(50)
);

## inserting data into students table
INSERT INTO students (student_id, name, age, gender, enrollment_date, program)
VALUES
(1, 'Joy Kariuki', 19, 'F', '2023-11-12', 'Computer Science'),
(2, 'Jane Kimani', 22, 'F', '2022-09-05', 'Physics'),
(3, 'Alexander Mutiso', 20, 'M', '2023-10-10', 'Data Science'),
(4, 'Emily Muthoni', 21, 'F', '2022-03-20', 'Engineering'),
(5, 'Michael Kimani', 23, 'M', '2023-05-08', 'Engineering'),
(6, 'Sarah Wanjiku', 24, 'F', '2022-07-12', 'Data Science'),
(7, 'David Mueke', 22, 'M', '2023-02-28', 'Computer Science'),
(8, 'Grace Ochieng', 23, 'F', '2021-11-05', 'Data Science'),
(9, 'Daniel Baraka', 21, 'M', '2022-04-15', 'Physics'),
(10, 'Emma Njeri', 24, 'F', '2023-06-10', 'Mathematics'),
(11, 'Joy Scovia', 21, 'M', '2019-09-13', 'Financial Engineering'),
(12, 'Agnes Wendi', 23, 'F', '2019-10-6', 'Statistics'),
(13, 'Risper Ndirangu', 24, 'F', '2021-09-05', 'Data Science'),
(14, 'Patience Mwendwa', 19, 'F', '2012-02-10', 'Electrical Engineering '),
(15, 'William Ruto', 20, 'M', '2022-08-23', 'Taxation Engineering ');

# View the table
SELECT * FROM students;

## query to return students pursuing data science program
SELECT * FROM students
WHERE program = 'Data Science';

# query of the total students
SELECT COUNT(student_id) AS 'Total Students'
FROM students;       #output:15

#display the current date
SELECT CURRENT_DATE() AS "Today's Date";   #output: '2024-03-10'

#query to select the student names and their enrolment dates with their names in uppercase
SELECT UPPER(name) AS student_name, enrollment_date
FROM students;

## query to count the number of students in each program in descending order
SELECT program, COUNT(*) AS "Number of Students"
FROM students
GROUP BY program
ORDER BY COUNT(*) DESC;

##  query to find the youngest student's name and age
SELECT name, age 
FROM students
ORDER BY age ASC
LIMIT 1;              #output: Joy Kariuki 19

