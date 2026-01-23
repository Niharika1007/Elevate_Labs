-- =========================================
-- TASK 6: CRUD Operations End-to-End
-- Database: intern_training_db
-- Tool: MySQL Workbench
-- =========================================

USE intern_training_db;

-- -----------------------------------------
-- 1. CREATE: Create employees table
-- -----------------------------------------
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2),
    joining_date DATE
);

-- -----------------------------------------
-- 2. INSERT: Insert bulk employee data
-- -----------------------------------------
INSERT INTO employees (employee_id, employee_name, department, email, salary, joining_date)
VALUES
(1, 'Arjun Rao', 'IT', 'arjun@company.com', 55000.00, '2022-06-15'),
(2, 'Meera Nair', 'HR', 'meera@company.com', 48000.00, '2021-03-10'),
(3, 'Rohit Sharma', 'Finance', 'rohit@company.com', 62000.00, '2020-11-25'),
(4, 'Kavya Singh', 'IT', 'kavya@company.com', 58000.00, '2023-01-05'),
(5, 'Amit Patel', 'Sales', 'amit@company.com', 45000.00, '2022-09-18');

-- -----------------------------------------
-- 3. READ: Read all employee records
-- -----------------------------------------
SELECT * FROM employees;

-- -----------------------------------------
-- 4. READ: Filtered data
-- Employees from IT department
-- -----------------------------------------
SELECT *
FROM employees
WHERE department = 'IT';

-- -----------------------------------------
-- 5. UPDATE: Update salary using condition
-- Increase salary of IT employees by 10%
-- -----------------------------------------
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'IT';

-- -----------------------------------------
-- 6. READ: Validate update
-- -----------------------------------------
SELECT *
FROM employees
WHERE department = 'IT';

-- -----------------------------------------
-- 7. DELETE: Safe delete using condition
-- Delete employees with salary less than 48000
-- -----------------------------------------
DELETE FROM employees
WHERE salary < 48000;

-- -----------------------------------------
-- 8. READ: Validate delete
-- -----------------------------------------
SELECT * FROM employees;

-- -----------------------------------------
-- 9. TRANSACTION: Demonstrate rollback
-- -----------------------------------------
START TRANSACTION;

UPDATE employees
SET salary = salary + 5000
WHERE department = 'HR';

-- Check changes before commit
SELECT * FROM employees WHERE department = 'HR';

-- Rollback changes
ROLLBACK;

-- -----------------------------------------
-- 10. Final state validation
-- -----------------------------------------
SELECT * FROM employees;

-- -----------------------------------------
-- NOTE:
-- Always use WHERE clause with UPDATE/DELETE
-- Avoid DELETE without WHERE in production
-- -----------------------------------------
