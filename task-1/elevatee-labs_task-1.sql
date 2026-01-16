-- Task 1: SQL Developer Internship

-- 1. Create database
CREATE DATABASE intern_training_db;

-- 2. Use database
USE intern_training_db;

-- 3. Create students table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT
);

-- 4. Insert records
INSERT INTO students (id, name, email, age) VALUES
(1, 'Ananya Sharma', 'ananya@gmail.com', 21),
(2, 'Rahul Verma', 'rahul@gmail.com', 22),
(3, 'Sneha Patel', 'sneha@gmail.com', 20),
(4, 'Amit Kumar', 'amit@gmail.com', 23),
(5, 'Pooja Singh', 'pooja@gmail.com', 21);

-- 5. Retrieve all records
SELECT * FROM students;

-- 6. Retrieve specific columns
SELECT name, email FROM students;

-- 7. Filter records
SELECT * FROM students WHERE age > 21;
