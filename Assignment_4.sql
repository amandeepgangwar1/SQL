CREATE DATABASE companyDB;
USE companyDB;
CREATE TABLE Employees (emp_id INT PRIMARY KEY,name VARCHAR(100),salary DECIMAL(10,2),dept_id INT);
INSERT INTO Employees (emp_id, name, salary, dept_id) VALUES(1, 'Rahul Sharma', 55000.00, 101),(2, 'Anita Verma', 62000.00, 102),
(3, 'Suresh Patel', 48000.00, 103),(4, 'Neha Singh', 75000.00, 101),(5, 'Vikram Rao', 50000.00, 102);

CREATE TABLE Departments (dept_id INT PRIMARY KEY,dept_name VARCHAR(100));
INSERT INTO Departments (dept_id, dept_name) VALUES(101, 'Resources'),(102, 'Finance'),(103, 'IT'),(104, 'Marketing');

CREATE TABLE Projects (proj_id INT PRIMARY KEY,proj_name VARCHAR(100),budget DECIMAL(12,2));
INSERT INTO Projects (proj_id, proj_name, budget) VALUES(201, 'Payroll System', 150000.00),
(202, 'Digital Marketing', 200000.00),(203, 'Cloud Migration', 300000.00),(204, 'Employee Training Program', 100000.00);

-- 4. Create the users
CREATE USER 'hr'@'localhost' IDENTIFIED BY 'hr2';
CREATE USER 'manager'@'localhost' IDENTIFIED BY 'manager2';
CREATE USER 'intern'@'localhost' IDENTIFIED BY 'intern2';

-- 5. Create the hr_role
CREATE ROLE 'hr_role';

-- 6. Grant privileges to hr_role
GRANT SELECT, INSERT, UPDATE, DELETE ON companyDB.Employees TO 'hr_role';
GRANT SELECT ON companyDB.Departments TO 'hr_role';

-- 7. Assign hr_role to hr_user
GRANT 'hr_role' TO 'hr'@'localhost';

-- 8. Grant manager_user full privileges on entire database
GRANT ALL PRIVILEGES ON companyDB.* TO 'manager'@'localhost';
GRANT ALL PRIVILEGES ON companyDB.* TO 'hr'@'localhost';

-- 9. Grant intern_user only SELECT privilege on Projects table
GRANT SELECT ON companyDB.Projects TO 'intern'@'localhost';

-- 10. Revoke INSERT privilege from hr_user on Employees table
REVOKE INSERT ON companyDB.Employees FROM 'hr_role';

-- 11. To check privileges of hr_user and intern_user
SHOW GRANTS FOR 'hr'@'localhost';
SHOW GRANTS FOR 'intern'@'localhost';
