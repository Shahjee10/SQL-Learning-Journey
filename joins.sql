create database joins;
use joins;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_department_id INT
);

INSERT INTO employees VALUES
(1, 'John Doe', 101),
(2, 'Jane Smith', 102),
(3, 'Bob Johnson', 101),
(4, 'Alice Brown', 102),
(5, 'Charlie Davis', 101),
(6, 'Eva White', 103),
(7, 'Frank Jones', 103),
(8, 'Grace Miller', 101),
(9, 'Harry Wilson', 102),
(10, 'Ivy Martin', 103),
(11, 'Jack Anderson', 102),
(12, 'Kelly Thomas', 101),
(13, 'Leo Harris', 103),
(14, 'Mia Garcia', 101),
(15, 'Nick Taylor', 102),
(16, 'Olivia Clark', 103),
(17, 'Paula Allen', 102),
(18, 'Quinn Scott', 101),
(19, 'Randy Ward', 103),
(20, 'Sara Hall', 102),
(21, 'Mart Ward', 109),
(22, 'Sam Hall', 107);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO departments VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Marketing'),
(104, 'Finance'),
(105, 'Operations');

CREATE TABLE salaries (
    emp_id INT,
    salary_amount DECIMAL(10, 2),
    PRIMARY KEY (emp_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO salaries VALUES
(1, 60000.00),
(2, 75000.00),
(3, 55000.00),
(4, 80000.00),
(5, 65000.00),
(6, 70000.00),
(7, 60000.00),
(8, 85000.00),
(9, 75000.00),
(10, 90000.00),
(11, 70000.00),
(12, 60000.00),
(13, 80000.00),
(14, 55000.00),
(15, 75000.00),
(16, 70000.00),
(17, 85000.00),
(18, 60000.00),
(19, 80000.00),
(20, 70000.00);


CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    project_lead_id INT,
    FOREIGN KEY (project_lead_id) REFERENCES employees(emp_id)
);

INSERT INTO projects VALUES
(1, 'Project A', 1),
(2, 'Project B', 2),
(3, 'Project C', 3),
(4, 'Project D', 4),
(5, 'Project E', 5);




Select * from employees;
Select * from salaries;
Select * from departments;
Select * from projects;




-- Problem Statement: Retrieve a list of employees along with their department information, 
-- showing only those employees who belong to a department.

SELECT emp_id, emp_name, department_name FROM employees inner JOIN departments 
ON employees.emp_department_id = departments.department_id;



-- Problem Statement: Display a list of all employees and their corresponding salary information, 
-- including those employees who do not have a salary entry.

Select employees.emp_id, emp_name, salary_amount from employees LEFT JOIN salaries
on employees.emp_id = salaries.emp_id;


-- Problem Statement: Generate a report of all salary records along with the employee information, 
-- ensuring that all salary entries are included, 
-- and display NULL for employees without a salary record.

SELECT salary_amount, employees.emp_id, emp_name FROM salaries RIGHT JOIN employees 
ON employees.emp_id = salaries.emp_id;




-- Problem Statement: Create a comprehensive report that includes both employees and project information, 
-- indicating the project lead for each project. 
-- Include all employees and projects, even if they are not currently assigned to a project.

SELECT project_name, employees.emp_id, emp_name
FROM employees
LEFT JOIN projects
  ON employees.emp_id = projects.project_lead_id

UNION

SELECT project_name, employees.emp_id, emp_name
FROM employees
RIGHT JOIN projects
  ON employees.emp_id = projects.project_lead_id;


-- Problem Statement: Generate a matrix of all possible combinations of employees and departments, 
-- regardless of whether there is an actual assignment of employees to departments. 
-- This is useful for exploring all possible pairings.

Select emp_id, emp_name , department_name  FROM Employees Cross Join Departments;
