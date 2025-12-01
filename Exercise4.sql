-- EXERCISE 4

-- 1. List the first and last names of employees who draw less than or equal to 90,000 and are not Programmers, Senior Programmers, or Multimedia Programmers.

SELECT f_name, l_name
FROM employee_data
WHERE salary <= 90000
AND title NOT IN ('Programmer', 'Senior Programmer', 'Multimedia Programmer');


-- 2. What does this statement display?

SELECT l_name, f_name
FROM employee_data
WHERE title NOT LIKE '%marketing%'
AND age < 30;
-- This will display employees younger than 30 whose title does not contain “marketing.” 

-- 3. List all IDs and names of employees between 32 and 40 years of age.

SELECT emp_id, f_name, l_name
FROM employee_data
WHERE age BETWEEN 32 AND 40;
-- This displays employee IDs and names whose ages fall within 32 to 40.


-- 4. Select names of all employees who are 32 years of age and are not programmers.

SELECT f_name, l_name
FROM employee_data
WHERE age = 32
AND title NOT LIKE '%Programmer%';


