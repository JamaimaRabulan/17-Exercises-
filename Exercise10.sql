-- EXERCISE 10

-- 1. Display the sum of ages of all employees.

SELECT SUM(age) AS total_age
FROM employee_data;

-- 2. Calculate the total years of service of all employees.

SELECT SUM(yos) AS total_years_of_service
FROM employee_data;


-- 3. Calculate the sum of salaries and average age of employees who are Programmers.

SELECT SUM(salary) AS total_salary, AVG(age) AS average_age
FROM employee_data
WHERE title = 'Programmer';


-- 4. What do you understand from this statement?

SELECT (SUM(perks) / SUM(salary) * 100) 
FROM employee_data;
-- ANSWER:
-- It calculates the percentage ratio of total perks to total salaries for all employees — essentially, what percent of total salary expenditure is given as perks.
