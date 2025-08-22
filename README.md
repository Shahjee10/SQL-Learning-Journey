# SQL Learning Journey

Welcome to my **SQL Learning Journey** repository! 🖥️📊  
This repository contains my practice exercises and examples as I learn SQL from scratch. It demonstrates both **DDL (Data Definition Language)** and **DML (Data Manipulation Language)** concepts through hands-on SQL scripts.

---

## 📂 Repository Structure

### 1. `basic.sql`  
Covers the foundational **DDL concepts**:  
- Creating databases and tables (`CREATE DATABASE`, `CREATE TABLE`)  
- Inserting initial data (`INSERT INTO`)  
- Modifying table structure (`ALTER TABLE`)  
- Dropping columns and tables (`DROP`, `DROP COLUMN`)  
- Viewing table structure (`DESC`)  
- Switching databases (`USE`)  

**Example:**  
```sql
CREATE TABLE boys (
    Roll_No INT(2),
    Name CHAR(100),
    Grade CHAR(100)
);
INSERT INTO boys (Roll_No, Name, Grade) VALUES (12, "Ahmed", "A");
2. DML.sql
Focuses on Data Manipulation Language (DML):

Inserting, updating, and deleting records (INSERT, UPDATE, DELETE)

Selecting data from tables (SELECT)

Selecting specific columns or all columns (*)

Sorting data using ORDER BY (ascending, descending, multiple columns, alphabetical)

Example:
SELECT name FROM students;
UPDATE students SET grade='F' WHERE students_id=3;
DELETE FROM students WHERE students_id=9;
SELECT * FROM students ORDER BY age DESC;
3. DDL.sql
Contains additional DDL practice:

Dropping tables (DROP TABLE)

Truncating tables (TRUNCATE TABLE)

Renaming tables (ALTER TABLE ... RENAME TO)

✅ Key Learnings So Far
DDL commands are used to define and modify database structure.

DML commands are used to work with data inside tables.

Using primary keys ensures uniqueness of records.

ORDER BY, WHERE, and column selection are essential for data retrieval and analysis.

Feel free to explore the .sql files and try running the queries in MySQL Workbench or any SQL environment!

Author: Syed Ahmed Ali Shah
Learning Goal: Become proficient in SQL for Data Analysis and Mobile App Integration


