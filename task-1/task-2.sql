USE intern_training_db;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    date_of_birth DATE NOT NULL,
    age INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO students (student_id, full_name, email, date_of_birth, age)
VALUES
(1, 'Ananya Sharma', 'ananya@gmail.com', '2003-05-12', 21),
(2, 'Rahul Verma', 'rahul@gmail.com', '2002-08-19', 22),
(3, 'Sneha Patel', 'sneha@gmail.com', '2004-01-10', 20);

-- Duplicate email (UNIQUE constraint violation)
INSERT INTO students (student_id, full_name, email, date_of_birth, age)
VALUES (4, 'Test User', 'ananya@gmail.com', '2000-01-01', 24);

ALTER TABLE students
ADD COLUMN phone_number VARCHAR(15);

ALTER TABLE students
rename COLUMN full_name TO student_name;

ALTER TABLE students
DROP COLUMN phone_number;

SELECT * FROM students;

