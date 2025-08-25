# SQL Learning Journey
Welcome to my SQL Learning Journey repository! 🖥️📊
This repository contains my practice exercises and notes as I learn SQL from scratch. It focuses on understanding both DDL (Data Definition Language) and DML (Data Manipulation Language) concepts and their practical uses.

---

1️⃣ **DDL – Data Definition Language**  
**Purpose:**  
DDL is used to define, modify, and manage the structure of databases and tables. Commands in DDL affect the schema and are permanent.

**Key Concepts:**  
- **CREATE:** Used to create new databases, tables, or other database objects.  
- **ALTER:** Used to modify the structure of existing tables (add, modify, drop columns, rename tables).  
- **DROP:** Used to permanently delete tables or databases.  
- **TRUNCATE:** Deletes all records from a table but retains the table structure.  
- **RENAME:** Changes the name of a table.  

**Key Takeaways:**  
- DDL focuses on database structure rather than data.  
- Dropping or truncating tables will remove data; caution is required.  

---

2️⃣ **DML – Data Manipulation Language**  
**Purpose:**  
DML is used to work with the data inside tables without altering the structure.

**Key Concepts:**  
- **INSERT:** Adds new records to a table.  
- **SELECT:** Retrieves data from a table, either all columns or specific columns.  
- **UPDATE:** Modifies existing data in a table.  
- **DELETE:** Removes specific records from a table.  
- **ORDER BY:** Sorts query results based on one or multiple columns in ascending, descending, or alphabetical order.  

**Key Takeaways:**  
- DML gives full control over the data stored in tables.  
- Using primary keys ensures uniqueness and prevents duplicates.  
- Ordering and filtering data is essential for effective data analysis.  

---

3️⃣ **Joins – Combining Data from Multiple Tables**  
**Purpose:**  
Joins are used to combine rows from two or more tables based on a related column between them. They are essential for generating comprehensive reports and analyzing relational data.

**Types of Joins and Their Use:**  
- **INNER JOIN:** Returns only rows with matches in both tables.  
- **LEFT JOIN (LEFT OUTER JOIN):** Returns all rows from the left table, plus matching rows from the right table. Non-matching rows from the right table appear as NULL.  
- **RIGHT JOIN (RIGHT OUTER JOIN):** Returns all rows from the right table, plus matching rows from the left table. Non-matching rows from the left table appear as NULL.  
- **FULL OUTER JOIN:** Returns all rows from both tables, matches where possible, NULL if no match.  
- **CROSS JOIN:** Produces a Cartesian product: every row of the first table combined with every row of the second table.  

**Key Takeaways:**  
- INNER JOIN → only matching rows.  
- LEFT JOIN → all left table rows + matches.  
- RIGHT JOIN → all right table rows + matches.  
- FULL OUTER JOIN → all rows from both tables.  
- CROSS JOIN → all possible combinations of rows.  
- Joins are fundamental for reporting, analytics, and combining relational data.  

---

4️⃣ **Practical Learning Summary**  
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

---

5️⃣ **SQL Constraints Practice**  
Through practice, I explored various **SQL constraints** that enforce rules on table data to ensure **data integrity and consistency**.

**Primary Key (PK):**  
- Ensures each row is **unique** and **cannot be NULL**.  
- Practiced with `National_ID` table (`cnic` as primary key).  

**Foreign Key (FK):**  
- Maintains **referential integrity** by linking columns between tables.  
- Practiced with `Customers` and `Orders` tables.  
- Inserting orders with non-existent `customer_id` caused errors.  

**Unique Key:**  
- Ensures column values are **unique**, but **NULLs are allowed**.  
- Practiced in `Employees` table for `email` and `phone` columns.  

**NOT NULL:**  
- Prevents columns from having **NULL values**, making them mandatory.  
- Practiced with `gaming_account` table for `username`.  

**CHECK Constraint:**  
- Enforces **custom rules** on column values.  
- Practiced in `Students` table to allow only `age >= 18`.  

**DEFAULT Constraint:**  
- Assigns a **default value** when no value is provided during insertion.  
- Practiced in `Enrollments` table with `grade DEFAULT 'Not Graded'`.  

**Key Takeaways from Constraints Practice:**  
- Constraints help enforce **data rules and integrity** automatically.  
- Primary Key = UNIQUE + NOT NULL.  
- Foreign Keys ensure valid references between tables.  
- Unique, NOT NULL, CHECK, and DEFAULT provide additional **data validation and consistency**.  
- Practicing constraints reinforces understanding of how **real-world data rules** are implemented in SQL tables.
