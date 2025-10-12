CREATE DATABASE IF NOT EXISTS startersql;
USE startersql;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Quering Data
select * from users;
select * from users where gender = 'female';
select * from users where gender != "female";
SELECT * FROM users WHERE date_of_birth < '1995-01-01';
SELECT * FROM users WHERE date_of_birth is null;
select * from users where date_of_birth between "1990-09-09" and "1999-09-09";
select * from users where gender = 'male' and salary > 60000 order by date_of_birth asc;
select * from users where gender = 'female' and salary > 50000 order by salary desc limit 5;

-- updating data
update users set salary = 15000 where id = 1;
update users set email = 'aarav@gmail.com' where id = 1;
update users set salary = 70000 where id = 5;
update users set name = 'Aisha' where email = 'aishakhan@example.com';
update users set salary = salary + 10000 where salary < 60000;

-- Deleting data
delete from users where id=9;

-- Contraints










