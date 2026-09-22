CREATE DATABASE assignment_10;
USE assignment_10;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Department VARCHAR(50),
    Salary INT
);

-- 1: Create a table Employees and insert sample data.

INSERT INTO Employees VALUES
(1, 'John Doe', 'HR', 45000),
(2, 'Amit Kumar', 'IT', 65000),
(3, 'Sara Khan', 'Finance', 55000),
(4, 'David Smith', 'IT', 70000),
(5, 'Priya Mehta', 'Marketing', 48000);
SELECT * FROM Employees;

-- 2: Create a VIEW named IT_Employees to display employees working in the IT department.

CREATE VIEW IT_Employees AS
SELECT EmpID, EmpName, Department, Salary
FROM Employees
WHERE Department = 'IT';
SELECT * FROM IT_Employees;


-- 3: Create a VIEW with column aliases to display formatted output.

CREATE VIEW Emp_Salary_View AS
SELECT 
    EmpID AS Employee_ID,
    EmpName AS Full_Name,
    Salary AS Monthly_Salary
FROM Employees;
SELECT * FROM Emp_Salary_View;


-- 4: Create a SQL User named report_user with limited access.

CREATE USER 'report_user'@'localhost' IDENTIFIED BY 'password123';

-- 5: Grant the user permission to only view data, not modify it.

GRANT SELECT ON Employees TO 'report_user'@'localhost';
GRANT SELECT ON Emp_Salary_View TO 'report_user'@'localhost';

-- 6: Display employees with aliases directly (without a view).

SELECT 
    EmpName AS Employee_Name,
    Salary AS Salary_in_Rupees
FROM Employees;

-- 7: Modify the IT_Employees view to include only employees above 60,000 salary.

CREATE OR REPLACE VIEW IT_Employees AS
SELECT EmpID, EmpName, Department, Salary
FROM Employees
WHERE Department = 'IT' AND Salary > 60000;
SELECT * FROM IT_Employees;


-- 8: Drop the view Emp_Salary_View.

DROP VIEW Emp_Salary_View;cucu