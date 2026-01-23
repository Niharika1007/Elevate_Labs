-- =========================================
-- TASK 5: Aggregate Functions & GROUP BY
-- Database: intern_training_db
-- Tool: MySQL Workbench
-- =========================================

USE intern_training_db;

-- -----------------------------------------
-- 1. COUNT: Total number of students
-- -----------------------------------------
SELECT COUNT(*) AS total_students
FROM students;

-- -----------------------------------------
-- 2. MIN: Youngest student age
-- -----------------------------------------
SELECT MIN(age) AS minimum_age
FROM students;

-- -----------------------------------------
-- 3. MAX: Oldest student age
-- -----------------------------------------
SELECT MAX(age) AS maximum_age
FROM students;

-- -----------------------------------------
-- 4. AVG: Average age of students
-- -----------------------------------------
SELECT AVG(age) AS average_age
FROM students;

-- -----------------------------------------
-- 5. SUM: Sum of all student ages
-- -----------------------------------------
SELECT SUM(age) AS total_age_sum
FROM students;

-- -----------------------------------------
-- 6. GROUP BY: Count students by age
-- -----------------------------------------
SELECT 
    age,
    COUNT(*) AS students_count
FROM students
GROUP BY age;

-- -----------------------------------------
-- 7. GROUP BY with multiple columns
-- (Example using age and email domain)
-- -----------------------------------------
SELECT 
    age,
    COUNT(email) AS email_count
FROM students
GROUP BY age;

-- -----------------------------------------
-- 8. HAVING: Filter grouped results
-- Show only age groups with more than 1 student
-- -----------------------------------------
SELECT 
    age,
    COUNT(*) AS students_count
FROM students
GROUP BY age
HAVING COUNT(*) > 1;

-- -----------------------------------------
-- 9. WHERE vs HAVING comparison
-- WHERE filters rows before grouping
-- HAVING filters groups after aggregation
-- -----------------------------------------

-- WHERE example
SELECT 
    age,
    COUNT(*) AS students_count
FROM students
WHERE age >= 21
GROUP BY age;

-- HAVING example
SELECT 
    age,
    COUNT(*) AS students_count
FROM students
GROUP BY age
HAVING age >= 21;

-- -----------------------------------------
-- 10. Real-world example:
-- Age-wise student distribution (like department-wise count)
-- -----------------------------------------
SELECT 
    age AS student_age,
    COUNT(*) AS total_students
FROM students
GROUP BY age
ORDER BY total_students DESC;

-- -----------------------------------------
-- 11. Handling NULLs in aggregates
-- COUNT(column) ignores NULL values
-- -----------------------------------------
SELECT 
    COUNT(email) AS non_null_emails,
    COUNT(*) AS total_rows
FROM students;

-- -----------------------------------------
-- 12. Analyze result set with aliases
-- -----------------------------------------
SELECT 
    age AS age_group,
    AVG(age) AS average_age,
    COUNT(*) AS group_size
FROM students
GROUP BY age;
