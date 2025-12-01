-- EXERCISE 15

-- 1. List all employee IDs and birth dates of employees who were born before 1965.

SELECT e_id, birth_date
FROM employee_per
WHERE birth_date < '1965-01-01';


-- 2. Display IDs and birth dates of employees born between 1970 and 1972.

SELECT e_id, birth_date
FROM employee_per
WHERE birth_date BETWEEN '1970-01-01' AND '1972-12-31';