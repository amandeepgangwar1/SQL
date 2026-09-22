CREATE table employee (
employee_id INT PRIMARY KEY, 
name VARCHAR(100),
location VARCHAR(200),
department VARCHAR(100),
salary DECIMAL(10, 2)
);

INSERT INTO employee (employee_id, name, location, department, salary)
VALUES
(1, 'Alice', 'New York', 'HR', 60000.00),
(2, 'Bob', 'Chicago', 'IT', 75000.00),
(3, 'Charlie', 'San Francisco', 'Finance', 85000.00);


UPDATE employee
SET salary = 80000.00,
    location = 'Boston'
WHERE employee_id = 2;

SELECT * FROM employee;

SELECT name, salary
FROM employee
WHERE salary > 50000;

SELECT *
FROM employee
WHERE name like 'A%';

SELECT name, salary
FROM employee
WHERE salary > 50000
 and department = 'HR';
 
SELECT name, salary
FROM employee
WHERE salary > 50000
ORDER BY salary ASC;