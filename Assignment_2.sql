CREATE TABLE student ( 
student_id INT PRIMARY KEY, 
name VARCHAR(100), 
mobile_number VARCHAR(15), 
department VARCHAR(100) ); 
INSERT INTO student (student_id, name, mobile_number, department) 
VALUES 
(1, 'Aman Kumar', '9876543210', 'Computer Science'), 
(2, 'Priya Sharma', '9123456780', 'Information Technology'), 
(3, 'Rahul Verma', '9988776655', 'Management'), 
(4, 'Neha Singh', '9012345678', 'Commerce'); 
SELECT * FROM student; 

ALTER TABLE student 
ADD email_id VARCHAR(100); 
UPDATE student 
SET email_id = 'aman.kumar@example.com' 
WHERE student_id = 1; 
UPDATE student 
SET email_id = 'priya.sharma@example.com' 
WHERE student_id = 2; 
UPDATE student 
SET email_id = 'rahul.verma@example.com' 
WHERE student_id = 3; 
UPDATE student 
SET email_id = 'neha.singh@example.com' 
WHERE student_id = 4; 
SELECT * FROM student; 

CREATE TABLE author ( 
author_id INT PRIMARY KEY, 
author_name VARCHAR(100) ); 
INSERT INTO author (author_id, author_name) 
VALUES 
(1, 'Chetan Bhagat'), 
(2, 'J.K. Rowling'), 
(3, 'George Orwell'), 
(4, 'Premchand'); 
SELECT * FROM student; 

CREATE TABLE book ( 
book_id INT PRIMARY KEY, 
title VARCHAR(200), 
author_id INT, 
FOREIGN KEY (author_id) REFERENCES author(author_id) ); 
INSERT INTO book (book_id, title, author_id) 
VALUES 
(101, 'Five Point Someone', 1), 
(102, '2 States', 1), 
(103, 'Harry Potter and the Philosopher''s Stone', 2), 
(104, 'Harry Potter and the Chamber of Secrets', 2), 
(105, '1984', 3), 
(106, 'Animal Farm', 3), 
(107, 'Godaan', 4); 
SELECT * FROM student; 

SELECT b.book_id, b.title, a.author_name FROM book b JOIN author a ON b.author_id = a.author_id; 
CREATE TABLE department ( 
department_id INT PRIMARY KEY, 
department_name VARCHAR(100) 
NOT NULL ); 
INSERT INTO department (department_id, department_name) 
VALUES 
(1, 'Computer Science'), 
(2, 'Information Technology'), 
(3, 'Management'), 
(4, 'Commerce');
SELECT * FROM department;