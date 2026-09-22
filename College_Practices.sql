CREATE TABLE cu(
id INT PRIMARY KEY AUTO_INCREMENT, 
stu_name VARCHAR(100), 
contact_no VARCHAR(20), 
email VARCHAR(100) UNIQUE
);

INSERT INTO cu (stu_name, contact_no, email)
VALUES
('Aman', '34567899876', 'example@domain.com'),
('Amaq', '34567899871', 'example2@domain.com'),
('Amad', '34567899872', 'example3@domain.com'),
('Amar', '34567899873', 'example4@domain.com'),
('Amay', '34567899874', 'example5@domain.com'),
('Amau', '34567899875', 'example6@domain.com');

CREATE USER 'Deep'@'localhost' IDENTIFIED BY 'Deep123@';

grant all privileges on assignment4.* to 'Deep'@'localhost';
grant select on assignment4.* to 'Deep'@'localhost';
select user, host from mysql.user;
FLUSH privileges;