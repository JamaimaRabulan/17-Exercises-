-- EXERCISE 11

-- 1. Count the number of employees who have been with BigNet for four or more years.

SELECT COUNT(*) AS 'Employees with 4 or more years'
FROM employee_data
WHERE yos >= 4;


-- 2. Count employees based on their ages.

SELECT age, COUNT(*) AS 'Number of Employees'
FROM employee_data
GROUP BY age;


-- 3. Modify the above so that the ages are listed in descending order.

SELECT age, COUNT(*) AS 'Number of Employees'
FROM employee_data
GROUP BY age
ORDER BY age DESC;


-- 4. Find the average age of employees in different departments (titles).

SELECT title, AVG(age) AS 'Average Age'
FROM employee_data
GROUP BY title;


-- 5. Change the above so that the data is displayed in descending order of average ages.

SELECT title, AVG(age) AS 'Average Age'
FROM employee_data
GROUP BY title
ORDER BY AVG(age) DESC;


-- 6. Find and list the percentage of perks (perks/salary * 100) for each employee, sorted in descending order.

SELECT f_name, l_name, (perks / salary * 100) AS 'Perk Percentage'
FROM employee_data
ORDER BY 'Perk Percentage' DESC;