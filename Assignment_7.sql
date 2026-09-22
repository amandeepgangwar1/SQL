CREATE DATABASE assignment_7;
USE assignment_7;
CREATE TABLE student_details (
  student_id INT PRIMARY KEY,
  name VARCHAR(100),
  course VARCHAR(50),
  marks INT,
  city VARCHAR(50)
);
INSERT INTO student_details (student_id, name, course, marks, city) VALUES
(1, 'Amandeep', 'BCA', 85, 'Bareilly'),
(2, 'Neha Gupta', 'BBA', 72, 'Delhi'),
(3, 'Ravi Kumar', 'BCA', 90, 'Lucknow'),
(4, 'Priya Singh', 'BCA', 65, 'Delhi'),
(5, 'Amit Sharma', 'BBA', 55, 'Bareilly'),
(6, 'Nisha Verma', 'BCA', 78, 'Kanpur'),
(7, 'Rahul Jain', 'MBA', 82, 'Lucknow'),
(8, 'Anita Mehra', 'BCA', 91, 'Bareilly'),
(9, 'Arun Patel', 'BBA', 88, 'Kanpur'),
(10, 'Akash Tiwari', 'BCA', 69, 'Delhi');
SELECT * FROM student_details;


-- IN clause

SELECT * FROM student_details WHERE course IN ('BCA', 'BBA');


-- BETWEEN clause

SELECT name, course, marks FROM student_details WHERE marks BETWEEN 70 AND 90;


-- LIKE clause

SELECT student_id, name, city FROM student_details WHERE name LIKE '_i%';     -- print second letter start with " i "


-- ORDER BY clause

SELECT name, course, marks FROM student_details ORDER BY marks DESC;


-- GROUP BY clause

SELECT course, COUNT(student_id) AS total_students, AVG(marks) AS avg_marks FROM student_details GROUP BY course;


-- HAVING clause

SELECT course, COUNT(student_id) AS total_students, AVG(marks) AS avg_marks FROM student_details GROUP BY course HAVING AVG(marks) > 75;
