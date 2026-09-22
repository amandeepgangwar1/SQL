CREATE DATABASE users1;
USE users1;

CREATE TABLE employee1 (
	emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(255),
    emp_salary DECIMAL(10, 2) default 50000);
    insert into employee1 values(1, 'ram', 12345);
    insert into employee1 (emp_id, emp_name) values(2, 'shyam');
    
    
     -- constrait check_salary 
    select * from employee1;
    
    insert into employee3 values(1, 'ram', 12345);
    insert into employee3 values(1, 'ram', 12345);
    insert into employee1 values(1, 'rm', 12345);

create table department1 ( 
dept_id int primary key, 
dept_name varchar(255), 
emp_id int not null, 
FOREIGN KEY (emp_id) references employee(emp_id));
describe department1;

