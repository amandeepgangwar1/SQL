CREATE DATABASE emp19;
USE emp19;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10, 2)
);
INSERT INTO employees (emp_id, name, salary) VALUES
(1, 'Aman', 60000),
(2, 'Deep', 65000),
(3, 'Sanya', 70000);
SELECT * FROM employees;
UPDATE employees
SET salary = 75000
WHERE emp_id = 3;
SELECT * FROM employees WHERE emp_id = 3;
