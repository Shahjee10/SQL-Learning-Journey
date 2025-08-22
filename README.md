📚 SQL Learning Journey
This document provides a summary of my recent learning journey into SQL, covering foundational concepts in both DDL (Data Definition Language) and DML (Data Manipulation Language).

📝 Learning Objectives
Understand the fundamental differences between DDL and DML.

Master key commands for creating, modifying, and managing database structures.

Gain proficiency in manipulating data within tables, including inserting, updating, and retrieving records.

Practice hands-on application of SQL commands to build a solid foundation in data management.

🏗️ Section 1: Data Definition Language (DDL)
DDL commands are used to define and manage the structure of databases and their tables. Changes made with DDL are permanent.

Key Commands
CREATE: Used to create new databases or tables.

CREATE DATABASE class;

CREATE TABLE students (Roll_No INT(2), Name VARCHAR(100), Marks INT(3), Grades CHAR(2));

ALTER: Modifies the structure of an existing table without dropping it.

ALTER TABLE students ADD COLUMN Results VARCHAR(10);

ALTER TABLE students MODIFY COLUMN Name VARCHAR(150);

ALTER TABLE students DROP COLUMN Results;

ALTER TABLE students RENAME TO student_data;

DROP: Permanently deletes a database or a table.

DROP TABLE students;

DROP DATABASE class;

TRUNCATE: Removes all rows from a table but keeps the structure intact.

TRUNCATE TABLE students;

RENAME: Changes the name of a table.

ALTER TABLE students RENAME TO student_data;

📊 Section 2: Data Manipulation Language (DML)
DML commands are used to interact with the data stored inside tables.

Key Commands
INSERT: Adds new rows or records to a table.

INSERT INTO students (Roll_No, Name, Marks, Grades) VALUES (2, 'Ahmed', 100, 'A');

SELECT: Retrieves data from a table.

SELECT * FROM students; (selects all columns)

SELECT name FROM students; (selects a specific column)

UPDATE: Modifies existing data within a table.

UPDATE students SET grade='F' WHERE students_id=3;

DELETE: Removes specific records from a table.

DELETE FROM students WHERE students_id=9;

ORDER BY: Sorts the results of a query.

SELECT * FROM students ORDER BY age ASC; (ascending)

SELECT * FROM students ORDER BY age DESC; (descending)

SELECT * FROM students ORDER BY grade, age DESC; (multiple columns)

SELECT * FROM students ORDER BY name; (alphabetical)

🎯 Practical Summary & Key Takeaways
Through hands-on practice, I learned to perform the following:

Create various tables (students, teachers, department, etc.).

Safely modify and drop columns using ALTER.

Insert single and multiple records efficiently.

Update and delete rows with caution to prevent data loss.

Utilize SELECT and ORDER BY to filter and sort data for analysis.

Use the DESC command to examine table structure and schema.

Overall Insights:
DDL is for Structure, while DML is for Data.

Always be careful with DROP and TRUNCATE as they lead to permanent data loss.

INSERT is the correct command for adding new data, not TRUNCATE.

Primary keys are crucial for ensuring data integrity by preventing duplicate records.

SQL is a fundamental skill for anyone involved in data analysis, backend development, or mobile application projects.
