-- EXERCISE 2

-- 1. Write the SELECT statement to extract the IDs of employees who are more than 30 years of age.
SELECT EMP_ID
FROM EMPLOYEE_DATA
WHERE AGE > 30;

-- 2. Write the SELECT statement to extract the first and last names of all web designers.
SELECT F_NAME, L_NAME
FROM EMPLOYEE_DATA
WHERE JOB_TITLE = 'Web Designer';

-- 3. What will the following SELECT statement display: SELECT * FROM employee_data WHERE salary <= 100000?
-- THIS WILL DISPLAY ALL COLUMNS (ALL FIELDS) FOR EMPLOYEES WHOSE SALARY IS LESS THAN OR EQUAL TO 100,000.

-- 4. How will you display the salaries and perks for employees who have more than $16,000 as perks?
SELECT SALARY, PERKS
FROM EMPLOYEE_DATA
WHERE PERKS > 16000;

-- 5. List all employee names (last name followed by first name) who hold the title of Marketing Executive.
SELECT CONCAT(LAST_NAME, ', ', FIRST_NAME) AS FULL_NAME
FROM EMPLOYEE_DATA
WHERE JOB_TITLE = 'Marketing Executive';




CREATE DATABASE IF NOT EXISTS EXERCISE2_DB;
USE EXERCISE2_DB;
CREATE TABLE EMPLOYEE_DATA (
    EMP_ID INT AUTO_INCREMENT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    AGE INT,
    JOB_TITLE VARCHAR(100),
    SALARY DECIMAL(10,2),
    PERKS DECIMAL(10,2),
    YEARS_OF_SERVICE INT
);
