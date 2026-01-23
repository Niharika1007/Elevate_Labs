# SQL Developer Internship – Task 1

## Tools Used
- MySQL Community Server
- MySQL Workbench

## Task Overview
- Created database `intern_training_db`
- Created `students` table
- Inserted sample student records
- Executed SELECT queries for data retrieval and filtering

## How to Run
1. Open MySQL Workbench
2. Connect to Local MySQL instance
3. Open `task1.sql`
4. Execute queries in order


# SQL Developer Internship – Task 2

## Tools Used
- MySQL Workbench

## Task Objective
To understand SQL data types, constraints, and table design.

## What Was Done
- Redesigned students table with correct data types
- Applied PRIMARY KEY, NOT NULL, UNIQUE constraints
- Inserted valid and invalid data to test constraints
- Used ALTER TABLE to add, rename, and drop columns

## Key Learnings
- Constraints ensure data integrity
- ALTER TABLE allows schema evolution
- Dropping columns permanently removes data

## How to Run
1. Open MySQL Workbench
2. Use database `intern_training_db`
3. Run `task2.sql`

# SQL Developer Internship – Task 3

## Tools Used
- MySQL Workbench

## Task Objective
To practice filtering data using SQL WHERE conditions.

## Queries Covered
- WHERE clause
- AND / OR conditions
- LIKE with wildcards
- IN and BETWEEN
- IS NULL checks
- Column aliases

## Real-Life Scenarios
- Email domain search
- Age-based filtering

## How to Run
1. Open MySQL Workbench
2. Use database `intern_training_db`
3. Execute `task3.sql`

# SQL Developer Internship – Task 4

## Tools Used
- MySQL Workbench

## Task Objective
To understand how to sort and paginate SQL query results.

## Concepts Covered
- ORDER BY (ASC and DESC)
- Sorting using multiple columns
- LIMIT clause
- OFFSET for pagination
- ORDER BY with WHERE
- Leaderboard-style queries

## Key Learnings
- ORDER BY controls result ordering
- LIMIT restricts number of rows returned
- OFFSET helps implement pagination
- Sorting large datasets may impact performance

# SQL Developer Internship – Task 5

## Tools Used
- MySQL Workbench

## Task Objective
To understand and apply SQL aggregate functions with GROUP BY and HAVING clauses.

## Concepts Covered
- COUNT, SUM, AVG, MIN, MAX
- GROUP BY clause
- HAVING vs WHERE
- Aggregation with filtering
- Handling NULL values in aggregates

## Real-World Scenario
- Age-wise student distribution (similar to department-wise count)

## Key Learnings
- Aggregate functions summarize data
- GROUP BY categorizes records
- HAVING filters aggregated results
- COUNT(column) ignores NULL values

## How to Run
1. Open MySQL Workbench
2. Use database `intern_training_db`
3. Execute `task5.sql`

# SQL Developer Internship – Task 6

## Tools Used
- MySQL Workbench

## Task Objective
To practice full CRUD (Create, Read, Update, Delete) operations using SQL.

## Operations Covered
- CREATE table
- INSERT bulk data
- READ filtered data
- UPDATE records with conditions
- DELETE records safely
- TRANSACTION with ROLLBACK

## Key Learnings
- WHERE clause ensures safe updates and deletes
- Transactions help maintain data integrity
- Validating before and after states is critical

## How to Run
1. Open MySQL Workbench
2. Use database `intern_training_db`
3. Execute `task6.sql`

## How to Run
1. Open MySQL Workbench
2. Use database `intern_training_db`
3. Execute `task4.sql`

