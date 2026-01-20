-- =========================================
-- TASK 4: Sorting and Limiting Data
-- Database: intern_training_db
-- Tool: MySQL Workbench
-- =========================================

USE intern_training_db;

-- -----------------------------------------
-- 1. Sort data using ORDER BY (Ascending)
-- -----------------------------------------
SELECT *
FROM students
ORDER BY age ASC;

-- -----------------------------------------
-- 2. Sort data using ORDER BY (Descending)
-- -----------------------------------------
SELECT *
FROM students
ORDER BY age DESC;

-- -----------------------------------------
-- 3. Sort using multiple columns
-- First by age (DESC), then by student_name (ASC)
-- -----------------------------------------
SELECT *
FROM students
ORDER BY age DESC, student_name ASC;

-- -----------------------------------------
-- 4. Use ORDER BY with WHERE condition
-- -----------------------------------------
SELECT *
FROM students
WHERE age >= 21
ORDER BY age DESC;

-- -----------------------------------------
-- 5. Limit number of results using LIMIT
-- -----------------------------------------
SELECT *
FROM students
ORDER BY age DESC
LIMIT 3;

-- -----------------------------------------
-- 6. Use LIMIT with OFFSET (Pagination)
-- Page size = 2 records
-- Page 1: OFFSET 0
-- -----------------------------------------
SELECT *
FROM students
ORDER BY student_id
LIMIT 2 OFFSET 0;

-- -----------------------------------------
-- 7. Pagination - Page 2
-- -----------------------------------------
SELECT *
FROM students
ORDER BY student_id
LIMIT 2 OFFSET 2;

-- -----------------------------------------
-- 8. Leaderboard-style query
-- Top students by age
-- -----------------------------------------
SELECT 
    student_name AS name,
    age AS score
FROM students
ORDER BY age DESC
LIMIT 5;

-- -----------------------------------------
-- 9. Edge Case: Sorting when values are same
-- -----------------------------------------
SELECT *
FROM students
ORDER BY age ASC, student_id ASC;

-- -----------------------------------------
-- 10. Performance Note
-- Sorting large datasets can be slow without indexes
-- ORDER BY on indexed columns improves performance
-- -----------------------------------------
