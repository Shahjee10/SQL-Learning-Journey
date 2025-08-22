-- CREATE A NEW DATABASE
create database class;

-- SWITCH TO THE DATABASE
use class;

-- CREATE TABLE with columns (Roll_No, Name, Marks, Grades)
create table students_data(
    Roll_No int(2), 
    Name varchar(100), 
    Marks int(3), 
    Grades char(2)
);

-- INSERT VALUES INTO THE TABLE
insert into students_data(Roll_No, Name, Marks, Grades)
values
      (2, "Ahmed", 100, "A" ),
      (21, "Ali", 90, "B" ),
      (22, "Akram", 80, "c"),
      (213, "Alam", 80, "c");

-- VIEW ALL RECORDS IN THE TABLE
select * from students_data;

-- MODIFY COLUMN (change data type of Results column to int(10))
-- NOTE: this will work only if 'Results' column exists
alter table students_data modify column Results int(10);

-- DROP COLUMN (remove 'Results' column permanently from table)
alter table students_data drop column Results;

-- INSERT VALUES INTO Results column (⚠️ will throw error here since Results was dropped above)
insert into students_data(Results)
values
(5),
(4);

-- DESCRIBE TABLE STRUCTURE (shows columns, data types, nullability etc.)
desc students_data;
