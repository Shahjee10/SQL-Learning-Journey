create database DML;
use DML;
create table students(students_id int primary key, name varchar(50), age int, grade varchar(2));
insert into students(students_id,name,age,grade)
values
(1, 'Ali Khan', 20, 'A'),
(2, 'Ahmed Raza', 21, 'B'),
(3, 'Usman Tariq', 19, 'A'),
(4, 'Bilal Ahmed', 22, 'C'),
(5, 'Hassan Shah', 20, 'B'),
(6, 'Zain Malik', 23, 'A'),
(7, 'Omar Farooq', 21, 'B'),
(8, 'Hamza Iqbal', 22, 'C'),
(9, 'Saad Ali', 20, 'A'),
(10, 'Imran Haider', 19, 'B');

select * from students;
-- how to SELECT INDIVIDUAL COLUMNS
select name from students; 
select students_id from students;

-- how to INSERT
insert into students(students_id,name,age,grade)
values
(11,'Syed Ahmed Ali Shah',24,'A');


-- how to UPDATE
update students set grade = 'F' where students_id=3;

-- how to DELETE
delete from students where students_id=9;

-- ORDER students by age in ascending order (BASIC ORDERING)
select * from students
order by age;
-- if you want table in ascending order just type order by (column name) it will automatically ascends it for you.

-- FOR DESCENDING ORDER
select * from students
order by age desc;

-- another example
select * from students 
order by students_id;

-- ORDER Students first by grade ascending then by age descending (multiple column)
select * from students
order by grade , age desc; 

-- ORDER students by name in alphabetical order (ALPHABETIC ORDER)
select * from students
order by name;








