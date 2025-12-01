-- EXERCISE 16

-- 1.List IDs, birth dates, and emails of employees born in April.

SELECT e_id, birth_date, p_email
FROM employee_per
WHERE MONTHNAME(birth_date) = 'April';


-- 2.Display IDs, birth dates, and spouse names of employees born in 1969,and sort by spouse name.

SELECT e_id, birth_date, s_name
FROM employee_per
WHERE YEAR(birth_date) = 1969
ORDER BY s_name;


-- 3.List employee IDs for employees born under the current month.

SELECT e_id
FROM employee_per
WHERE MONTH(birth_date) = MONTH(CURRENT_DATE);


-- 4.How many unique birth years do we have?

SELECT COUNT(DISTINCT YEAR(birth_date)) AS 'Unique Birth Years'
FROM employee_per;


-- 5.Display a list of unique birth years and the number of employees born each year.

SELECT YEAR(birth_date) AS 'Birth Year', COUNT(*) AS 'Number of Employees'
FROM employee_per
GROUP BY YEAR(birth_date);


-- 6.How many employees were born under each month?Display month names (not numbers), and sort so that the month with the most births is shown first.

SELECT MONTHNAME(birth_date) AS 'Month', COUNT(*) AS 'Number of Employees'
FROM employee_per
GROUP BY MONTHNAME(birth_date)
ORDER BY COUNT(*) DESC;