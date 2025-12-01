-- EXERCISE 3

-- 1. List all employees whose last names begin with ‘P’.
SELECT F_NAME, L_NAME
FROM EMPLOYEE_DATA
WHERE L_NAME LIKE 'P%';

-- 2. Display the names of all employees in the marketing division.
SELECT F_NAME, L_NAME
FROM EMPLOYEE_DATA
WHERE DIVISION = 'Marketing';

-- 3. What will the following statement display SELECT f_name, l_name, salary FROM employee_data WHERE f_name LIKE '%k%';
-- IT WILL DISPLAY THE FIRST NAME, LAST NAME, AND SALARY OF ALL EMPLOYEES WHOSE FIRST NAME CONTAINS THE LETTER “K” 


-- 4.List the last names and titles of all programmers.
SELECT L_NAME, TITLE
FROM EMPLOYEE_DATA
WHERE TITLE LIKE '%PROGRAMMER%';

	
    
CREATE DATABASE IF NOT EXISTS EXERCISE3_DB;
USE EXERCISE3_DB;
CREATE TABLE EMPLOYEE_DATA (
    EMP_ID INT AUTO_INCREMENT PRIMARY KEY,
    F_NAME VARCHAR(50),
    L_NAME VARCHAR(50),
    AGE INT,
    SALARY DECIMAL(10,2),
    YOS INT,
    DIVISION VARCHAR(50),
    TITLE VARCHAR(50)
);
