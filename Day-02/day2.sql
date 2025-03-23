-- Create Database
CREATE DATABASE practice_db;
USE practice_db;

-- Create Table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT DEFAULT 18,
    grade CHAR(1)
);

-- Insert Data
INSERT INTO students (id, name, age, grade) VALUES (1, 'Kishore', 21, 'A');
INSERT INTO students (id, name, age, grade) VALUES (2, 'Ram', 19, 'B');
INSERT INTO students (id, name, age, grade) VALUES (3, 'John', 20, 'C');

-- Retrieve Data
SELECT * FROM students;
SELECT name, age FROM students;

-- Update Data
UPDATE students SET name = 'Ravi' WHERE id = 2;

-- Delete Data
DELETE FROM students WHERE id = 3;

-- Modify Table
ALTER TABLE students RENAME COLUMN name TO names;
ALTER TABLE students MODIFY COLUMN age INT NOT NULL DEFAULT 18;

-- Filtering & Sorting
SELECT * FROM students WHERE age > 18;
SELECT * FROM students ORDER BY age DESC;

-- Limit Results
SELECT * FROM students LIMIT 2;

-- Query Execution Logs
SHOW PROCESSLIST;

-- Kill a Running Query (Example, replace query_id with actual ID)
-- KILL QUERY query_id;
