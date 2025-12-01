-- EXERCISE 6

-- 1. Order all employees on the basis of the salary they draw.
SELECT EMP_ID, F_NAME, L_NAME, TITLE, SALARY
FROM EMPLOYEE_DATA
ORDER BY SALARY;

-- 2. List all employees in descending order of their years of service.
SELECT EMP_ID, F_NAME, L_NAME, YEARS_OF_SERVICE
FROM EMPLOYEE_DATA
ORDER BY YEARS_OF_SERVICE DESC;

-- 3. What does the following statement display?
SELECT emp_id, l_name, title, age
FROM employee_data
ORDER BY title DESC, age ASC;
-- THIS DISPLAYS ALL EMPLOYEES SORTED PRIMARILY BY JOB TITLE IN DESCENDING ORDER, AND WITHIN EACH TITLE, SORTED BY AGE IN ASCENDING ORDER.

-- 4. Display employees (last names followed by first names) who hold the title of either “Programmer” or “Web Designer” and sort their last names alphabetically.
SELECT CONCAT(L_NAME, ', ', F_NAME) AS FULL_NAME, TITLE
FROM EMPLOYEE_DATA
WHERE TITLE IN ('PROGRAMMER', 'WEB DESIGNER')
ORDER BY L_NAME ASC;



