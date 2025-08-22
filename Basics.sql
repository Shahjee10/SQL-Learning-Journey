create database test1;
use test1;
create table boys(Roll_No INT(2) , Name Char(100) , Grade Char(100));
insert into boys(Roll_No, Name, Grade)
value (12, "Ahmed", "A"),
 (13, "Ali", "A");
 INSERT INTO boys (Roll_No, Name, Grade)
VALUES (101, 'NewStudent', 'B');


select * from boys;

create table teachers(ID_No INT(2) , Name Char(100) , Ph_No varchar(100));
insert into teachers(ID_No, Name, Ph_No)
value(30, "Hammad", 03000556773);
select * from teachers;



create table department(SR_NO INT(1) , Dept CHAR(100) , Floor_No INT(2));
insert into department(SR_NO, Dept, Floor_No)
value (1, "physics", 2),
(2, "maths", 2);
select * from department;
show tables;

drop table teachers;
truncate department;
alter table students rename to boys;


