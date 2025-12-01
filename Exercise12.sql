-- EXERCISE 12

-- 1. List departments and average ages where the average age is more than 30.

SELECT title, AVG(age) AS 'Average Age'
FROM employee_data
GROUP BY title
HAVING AVG(age) > 30;