# SQL Learning Journey

Welcome to my SQL Learning Journey repository! 🖥️📊  
This repository contains my practice exercises and notes as I learn SQL from scratch. It focuses on understanding both DDL (Data Definition Language) and DML (Data Manipulation Language) concepts and their practical uses.

---

## 1️⃣ DDL – Data Definition Language

**Purpose:**  
DDL is used to define, modify, and manage the structure of databases and tables. Commands in DDL affect the schema and are permanent.

**Key Concepts:**  
- CREATE: Used to create new databases, tables, or other database objects.  
- ALTER: Used to modify the structure of existing tables (add, modify, drop columns, rename tables).  
- DROP: Used to permanently delete tables or databases.  
- TRUNCATE: Deletes all records from a table but retains the table structure.  
- RENAME: Changes the name of a table.

**Key Takeaways:**  
- DDL focuses on database structure rather than data.  
- Dropping or truncating tables will remove data; caution is required.

---

## 2️⃣ DML – Data Manipulation Language

**Purpose:**  
DML is used to work with the data inside tables without altering the structure.

**Key Concepts:**  
- INSERT: Adds new records to a table.  
- SELECT: Retrieves data from a table, either all columns or specific columns.  
- UPDATE: Modifies existing data in a table.  
- DELETE: Removes specific records from a table.  
- ORDER BY: Sorts query results based on one or multiple columns in ascending, descending, or alphabetical order.

**Key Takeaways:**  
- DML gives full control over the data stored in tables.  
- Using primary keys ensures uniqueness and prevents duplicates.  
- Ordering and filtering data is essential for effective data analysis.

---

## 3️⃣ Joins – Combining Data from Multiple Tables

**Purpose:**  
Joins are used to combine rows from two or more tables based on a related column between them. They are essential for generating comprehensive reports and analyzing relational data.

**Types of Joins and Their Use:**  

1. **INNER JOIN**  
   - Returns only rows with matches in both tables.  
   - Example: List employees who belong to a valid department.

2. **LEFT JOIN (LEFT OUTER JOIN)**  
   - Returns all rows from the left table, plus matching rows from the right table.  
   - Non-matching rows from the right table appear as NULL.  
   - Example: List all employees and their salaries, including employees with no salary.

3. **RIGHT JOIN (RIGHT OUTER JOIN)**  
   - Returns all rows from the right table, plus matching rows from the left table.  
   - Non-matching rows from the left table appear as NULL.  
   - Example: List all salary entries and their corresponding employee details.

4. **FULL OUTER JOIN**  
   - Returns all rows from both tables, matches where possible, NULL if no match.  
   - Not supported directly in MySQL (simulated with LEFT JOIN + RIGHT JOIN + UNION).  
   - Example: Show all employees and all projects, even if unmatched.

5. **CROSS JOIN**  
   - Produces a Cartesian product: every row of the first table combined with every row of the second table.  
   - Example: Generate all possible employee-department pairings.

**Key Takeaways:**  
- INNER JOIN → only matching rows.  
- LEFT JOIN → all left table rows + matches.  
- RIGHT JOIN → all right table rows + matches.  
- FULL OUTER JOIN → all rows from both tables.  
- CROSS JOIN → all possible combinations of rows.  
- Joins are fundamental for reporting, analytics, and combining relational data.

---

## 4️⃣ Practical Learning Summary

Through my practice, I have:  
- Learned to create multiple tables and manage their structure.  
- Practiced adding, modifying, and removing columns.  
- Learned how to insert, update, and delete records efficiently.  
- Explored sorting and retrieving data for analysis.  
- Learned to check table structure and database schema.  
- Practiced joins extensively to combine data from multiple tables.

**✅ Overall Takeaways:**  
- DDL = Structure (CREATE, ALTER, DROP, TRUNCATE, RENAME)  
- DML = Data (INSERT, SELECT, UPDATE, DELETE, ORDER BY)  
- SQL is a foundation for data analysis and backend or mobile app development.  
- Proper use of primary keys prevents duplicate records and ensures data integrity.  
- Joins allow for combining relational data safely and efficiently for reporting and analysis.  
- Data can be manipulated safely without modifying table structure using DML commands.
