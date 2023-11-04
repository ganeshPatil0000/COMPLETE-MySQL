CREATE DATABASE IF NOT EXISTS AggregateFunctions;
use AggregateFunctions;

CREATE TABLE examples (
    empName VARCHAR(255),
    empID INT,
    Age INT,
    Salary DECIMAL(10, 2)
);

-- Insert 10 sample rows into the table
INSERT INTO examples (empName, empID, Age, Salary)
VALUES
    ('John Doe', 1, 30, 50000.00),
    ('Jane Smith', 2, 28, 55000.00),
    ('Bob Johnson', 3, 35, 60000.00),
    ('Alice Brown', 4, 29, 52000.00),
    ('David Lee', 5, 32, 58000.00),
    ('Sarah White', 6, 27, 51000.00),
    ('Michael Clark', 7, 33, 59000.00),
    ('Emily Davis', 8, 31, 57000.00),
    ('Robert Wilson', 9, 34, 62000.00),
    ('Olivia Miller', 10, 26, 54000.00);

SELECT * FROM EXAMPLES;

-- 1) COUNT() 
SELECT COUNT(EMPID)
FROM EXAMPLES;

--  2) MAX
SELECT MAX(SALARY)
FROM EXAMPLES;

--  3) MIN
SELECT MIN(SALARY)
FROM EXAMPLES;

--  4) AVG
SELECT AVG(SALARY)
FROM EXAMPLES;

--  5) SUM
SELECT SUM(SALARY)
FROM EXAMPLES;
