USE intern_training_db;

SELECT * FROM students WHERE age > 21;

SELECT *
FROM students
WHERE age > 20 AND age < 23;

SELECT *
FROM students
WHERE age > 20 OR  age < 23;

SELECT student_name
FROM students
WHERE student_name LIKE 'A%';

SELECT student_name
FROM students
WHERE student_name LIKE '%ha%';

SELECT student_name
FROM students
WHERE student_name LIKE '_n%';

SELECT *
FROM students
WHERE age IN (20, 21);

SELECT *
FROM students
WHERE age between 20 AND 22;

INSERT INTO students (student_id, student_name, email, date_of_birth, age)
VALUES (10, 'Test User', NULL, '2001-01-01', 23);  #Shows error cause of constraints pre-defined

SELECT 
    student_name AS name,
    email AS contact_email,
    age AS student_age
FROM students
WHERE age >= 21;

SELECT *
FROM students
WHERE email LIKE '%gmail.com';





