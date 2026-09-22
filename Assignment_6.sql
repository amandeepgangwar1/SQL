CREATE DATABASE assignment_6;
USE assignment_6;
CREATE table emp12 (
emp_id INT(10),
emp_name VARCHAR(100),
emp_salary DECIMAL (10, 2)
);

INSERT INTO emp12 (emp_id, emp_name, emp_salary) VALUES
(101, 'Amit Sharma', 45000.50),
(102, 'Neha Gupta', 52000.00),
(103, 'Rohit Singh', 38000.75),
(104, 'Priya Verma', 60000.00),
(105, 'Arjun Mehta', 47000.25);
SELECT * FROM emp12;


-- Arthematic Operations


-- 1. Increase salary by 10%
SELECT emp_id, emp_name, emp_salary, 
       emp_salary * 1.10 AS increased_salary
FROM emp12;

-- 2. Decrease salary by 5000
SELECT emp_id, emp_name, emp_salary, 
       emp_salary - 5000 AS decreased_salary
FROM emp12;

-- 3. Calculate annual salary (12 months)
SELECT emp_id, emp_name, emp_salary, 
       emp_salary * 12 AS annual_salary
FROM emp12;

-- 4. Divide salary into 2 halves
SELECT emp_id, emp_name, emp_salary, 
       emp_salary / 2 AS half_salary
FROM emp12;

-- 5. Add a bonus of 2000 to each salary
SELECT emp_id, emp_name, emp_salary, 
       emp_salary + 2000 AS salary_with_bonus
FROM emp12;


-- Comparison Operator


-- 1. Employees with salary greater than 50,000
SELECT * FROM emp12
WHERE emp_salary > 50000;

-- 2. Employees with salary less than or equal to 40,000
SELECT * FROM emp12
WHERE emp_salary <= 40000;

-- 3. Employees whose salary is exactly 47,000.25
SELECT * FROM emp12
WHERE emp_salary = 47000.25;

-- 4. Employees whose salary is not equal to 60,000
SELECT * FROM emp12
WHERE emp_salary != 60000;

-- 5. Employees whose ID is greater than or equal to 103
SELECT * FROM emp12
WHERE emp_id >= 103;


-- Logical Operator


-- 1. Employees with salary greater than 40,000 AND emp_id less than 104
SELECT * FROM emp12
WHERE emp_salary > 40000 AND emp_id < 104;

-- 2. Employees with salary greater than 55,000 OR emp_id = 102
SELECT * FROM emp12
WHERE emp_salary > 55000 OR emp_id = 102;

-- 3. Employees whose salary is NOT equal to 38,000.75
SELECT * FROM emp12
WHERE NOT emp_salary = 38000.75;

-- 4. Employees with emp_id > 101 AND salary < 50,000
SELECT * FROM emp12
WHERE emp_id > 101 AND emp_salary < 50000;

-- 5. Employees with emp_id < 104 OR salary = 60,000
SELECT * FROM emp12
WHERE emp_id < 104 OR emp_salary = 60000;


-- Bitwise Operator


-- 1. Bitwise AND between emp_id and 2
SELECT emp_id, emp_name, emp_salary,
       emp_id & 2 AS bitwise_and
FROM emp12;

-- 2. Bitwise OR between emp_id and 3
SELECT emp_id, emp_name, emp_salary,
       emp_id | 3 AS bitwise_or
FROM emp12;

-- 3. Bitwise XOR between emp_id and 1
SELECT emp_id, emp_name, emp_salary,
       emp_id ^ 1 AS bitwise_xor
FROM emp12;

-- 4. Left shift emp_id by 1 (multiply by 2)
SELECT emp_id, emp_name, emp_salary,
       emp_id << 1 AS left_shift
FROM emp12;

-- 5. Right shift emp_id by 1 (divide by 2)
SELECT emp_id, emp_name, emp_salary,
       emp_id >> 1 AS right_shift
FROM emp12;

-- 6. Bitwise NOT of emp_id
SELECT emp_id, emp_name, emp_salary,
       ~emp_id AS bitwise_not
FROM emp12;


-- Compound Operator


-- 1. Increase salary by 5000 (like emp_salary += 5000)
UPDATE emp12
SET emp_salary = emp_salary + 5000
WHERE emp_id = 101;

-- 2. Decrease salary by 2000 (like emp_salary -= 2000)
UPDATE emp12
SET emp_salary = emp_salary - 2000
WHERE emp_id = 102;

-- 3. Multiply salary by 2 (like emp_salary *= 2)
UPDATE emp12
SET emp_salary = emp_salary * 2
WHERE emp_id = 103;

-- 4. Divide salary by 2 (like emp_salary /= 2)
UPDATE emp12
SET emp_salary = emp_salary / 2
WHERE emp_id = 104;

-- 5. Modulus (salary % 10000) (like emp_salary %= 10000)
UPDATE emp12
SET emp_salary = emp_salary % 10000
WHERE emp_id = 105;

SELECT * FROM emp12;


-- Special Operator


-- 1. BETWEEN: Employees with salary between 40000 and 60000
SELECT * FROM emp12
WHERE emp_salary BETWEEN 40000 AND 60000;

-- 2. IN: Employees whose emp_id is 101, 103, or 105
SELECT * FROM emp12
WHERE emp_id IN (101, 103, 105);

-- 3. LIKE: Employees whose name starts with 'A'
SELECT * FROM emp12
WHERE emp_name LIKE 'A%';

-- 4. IS NULL / IS NOT NULL: Check for missing salary (if any)
SELECT * FROM emp12
WHERE emp_salary IS NOT NULL;

-- 5. EXISTS: Check if there is any employee with salary > 60000
SELECT 'There is a high salary employee!' AS result
WHERE EXISTS (
    SELECT * FROM emp12
    WHERE emp_salary > 60000
); 
