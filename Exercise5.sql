-- EXERCISE 5

-- 1. List all employees who hold the titles of “Senior Programmer” and “Multimedia Programmer”.
SELECT F_NAME, L_NAME, TITLE
FROM EMPLOYEE_DATA
WHERE TITLE IN ('Senior Programmer', 'Multimedia Programmer');

-- 2. List all employee names with salaries for employees who draw between ₱70,000 and ₱90,000.
SELECT F_NAME, L_NAME, SALARY
FROM EMPLOYEE_DATA
WHERE SALARY BETWEEN 70000 AND 90000;

-- 3. What will the following statement display?
SELECT F_NAME, L_NAME, TITLE
FROM EMPLOYEE_DATA
WHERE TITLE NOT IN ('Programmer', 'Senior Programmer', 'Multimedia Programmer');
-- IT WILL DISPLAY ALL EMPLOYEES WHOSE TITLES ARE NOT RELATED TO PROGRAMMING.

-- 4. Here is a more complex statement that combines both BETWEEN and IN.What will it display?
SELECT F_NAME, L_NAME, TITLE, AGE
FROM EMPLOYEE_DATA
WHERE TITLE NOT IN ('Programmer', 'Senior Programmer', 'Multimedia Programmer')
AND age NOT BETWEEN 28 AND 32;
-- THIS DISPLAYS EMPLOYEES WHO ARENOT PROGRAMMERS OF ANY TYPE, AND NOT BETWEEN 28 AND 32 YEARS OLD, IT WILL BE  UNDER 28 OR OVER 32.



