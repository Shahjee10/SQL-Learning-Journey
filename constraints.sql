create database constraints;
use constraints;

-- primary key example
create table National_ID (cnic bigint primary key, name varchar(50), address varchar(200), phone_number varchar(11));
insert into  National_ID
values
(12345678910, 'Syed Ahmed Ali Shah', 'lalazar', '29348625981'),
(12345678911, 'Syed Ahmed Ali Shah', 'lalazar', '29348625981'),
(12345678912, 'Syed Ahmed Ali Shah', 'lalazar', '29348625981'),
(12345678913, 'Syed Ahmed Ali Shah', 'lalazar', '29348625981');

select * from National_ID;


-- foreign key example
-- Step 1: Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

-- Step 2: Create Orders table with a foreign key
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Step 3: Insert valid customers
INSERT INTO Customers (customer_id, name, email)
VALUES
(1, 'Ahmed', 'ahmed@mail.com'),
(2, 'Ali', 'ali@mail.com');

-- Step 4: Insert valid orders (works fine ✅)
INSERT INTO Orders (order_id, order_date, customer_id)
VALUES
(101, '2025-08-26', 1),  -- belongs to Ahmed
(102, '2025-08-26', 2);  -- belongs to Ali

-- Step 5: Insert invalid order (causes ERROR ❌)
-- Trying to insert order for customer_id = 999 (does not exist)
INSERT INTO Orders (order_id, order_date, customer_id)
VALUES
(103, '2025-08-26', 999);

select * from customers;
select * from orders;


-- check example
-- Step 1: Create Students table with CHECK
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT CHECK (age >= 18)   -- Age must be 18 or older
);

-- Step 2: Insert valid data ✅
INSERT INTO Students (student_id, name, age)
VALUES (1, 'Ahmed', 20);

-- Step 3: Insert invalid data ❌
INSERT INTO Students (student_id, name, age)
VALUES (2, 'Ali', 15);   -- ERROR: age check fails

-- Table with both Primary Key and Unique Key
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,          -- Primary Key
    email VARCHAR(100) UNIQUE,       -- Unique Key
    phone VARCHAR(20) UNIQUE         -- Another Unique Key
);

INSERT INTO Employees (emp_id, email, phone)
VALUES (1, 'ahmed@mail.com', '12345'),
(2, 'ali@mail.com', '');

select * from Employees;	

INSERT INTO Employees (emp_id, email, phone)
VALUES (2, 'ali@mail.com', '');

-- not null example
create table gaming_account(username varchar(20) not null, password varchar(20));
insert into gaming_account(username, password)
values
(null,'1456777');
select * from gaming_account;
insert into gaming_account(username, password)

values
(null,'123456789');
select * from gaming_account;

-- default example
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade VARCHAR(10) DEFAULT 'Not Graded'
);
insert into Enrollments(enrollment_id, student_id, course_id)
values
(1,22943,100),
(2,28591,200);

select * from Enrollments;
select enrollment_id from Enrollments;




















