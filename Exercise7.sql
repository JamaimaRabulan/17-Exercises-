-- EXERCISE 7

-- 1. List the names of the 5 youngest employees in the company.
SELECT F_NAME, L_NAME, AGE
FROM EMPLOYEE_DATA
ORDER BY AGE ASC
LIMIT 5;

-- 2. Extract the next 5 entries starting with the 10 row.
SELECT *
FROM EMPLOYEE_DATA
LIMIT 9, 5;

-- 3. Display the names and salary of the employee who draws the largest salary.
SELECT F_NAME, L_NAME, SALARY
FROM EMPLOYEE_DATA
ORDER BY SALARY DESC
LIMIT 1;

-- 4. What does the following statement display?
SELECT emp_id, age, perks
FROM employee_data
ORDER BY perks DESC
LIMIT 10;
-- IT DISPLAYS THE 10 EMPLOYEES WITH THE HIGHEST PERKS, SORTED FROM LARGEST TO SMALLEST PERKS.


