SQL Learning Journey – Summary of Learning

Over the past few days, I have been learning SQL from scratch, covering both DDL (Data Definition Language) and DML (Data Manipulation Language) through hands-on practice. Below is a detailed summary of what I’ve learned:

1️⃣ DDL – Data Definition Language

DDL commands are used to define, modify, and manage the structure of databases and tables. Changes made with DDL are permanent.

Key Commands:

CREATE – Create databases or tables. Example:

CREATE DATABASE class;
CREATE TABLE students (
    Roll_No INT(2),
    Name VARCHAR(100),
    Marks INT(3),
    Grades CHAR(2)
);


ALTER – Modify table structure without dropping it:

ALTER TABLE students ADD COLUMN Results VARCHAR(10);
ALTER TABLE students MODIFY COLUMN Name VARCHAR(150);
ALTER TABLE students DROP COLUMN Results;
ALTER TABLE students RENAME TO student_data;


DROP – Permanently delete tables or databases:

DROP TABLE students;
DROP DATABASE class;


TRUNCATE – Remove all rows from a table but keep the structure:

TRUNCATE TABLE students;


RENAME – Change the name of a table:

ALTER TABLE students RENAME TO student_data;


Key Takeaways:

DDL is all about structure, not actual data.

Always check before dropping or truncating tables to avoid data loss.

2️⃣ DML – Data Manipulation Language

DML commands are used to work with the data inside tables, such as inserting, updating, deleting, and retrieving data.

Key Commands:

INSERT – Add new rows to a table:

INSERT INTO students (Roll_No, Name, Marks, Grades) VALUES (2, 'Ahmed', 100, 'A');


SELECT – Retrieve data:

SELECT * FROM students;          -- All columns
SELECT name FROM students;       -- Specific column


UPDATE – Modify existing data:

UPDATE students SET grade='F' WHERE students_id=3;


DELETE – Remove specific records:

DELETE FROM students WHERE students_id=9;


ORDER BY – Sort results:

SELECT * FROM students ORDER BY age ASC;        -- Ascending
SELECT * FROM students ORDER BY age DESC;       -- Descending
SELECT * FROM students ORDER BY grade, age DESC; -- Multiple columns
SELECT * FROM students ORDER BY name;           -- Alphabetical order


Key Takeaways:

DML allows full control over table data without altering the table structure.

Primary keys ensure uniqueness and prevent duplicate records.

Ordering and filtering are essential for data analysis.

3️⃣ Practical Learning Summary

Learned to create multiple tables: students, teachers, department, boys, etc.

Practiced adding, modifying, and dropping columns using ALTER.

Learned inserting single and multiple records efficiently.

Practiced updating and deleting rows safely.

Explored sorting and selecting specific data for analysis.

Learned to describe table structure using DESC and check database schema.

✅ Overall Takeaways

DDL = Structure (CREATE, ALTER, DROP, TRUNCATE, RENAME)

DML = Data (INSERT, SELECT, UPDATE, DELETE, ORDER BY)

SQL is the foundation of data analysis and a key skill for backend or mobile app projects.

You don’t need to truncate tables to add new data; use INSERT.

Proper use of primary keys avoids duplication issues.
