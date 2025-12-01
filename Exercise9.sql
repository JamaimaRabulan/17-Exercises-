-- EXERCISE 9

-- 1. List the minimum perks package.

SELECT MIN(perks) AS minimum_perks
FROM employee_data;


-- 2. List the maximum salary given to a Programmer.

SELECT MAX(salary) AS max_programmer_salary
FROM employee_data
WHERE title = 'Programmer';


-- 3. Display the age of the oldest Marketing Executive.

SELECT MAX(age) AS oldest_marketing_exec_age
FROM employee_data
WHERE title = 'Marketing Executive';


-- 4. (Tricky) Find the first and last names of the oldest employee.

SELECT f_name, l_name
FROM employee_data
WHERE age = (SELECT MAX(age) FROM employee_data);