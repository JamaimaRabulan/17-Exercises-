-- EXERCISE 8

-- 1. How many unique salary packages does our company “Bignet” offer? List them in descending order.
SELECT DISTINCT SALARY
FROM EMPLOYEE_DATA
ORDER BY SALARY DESC;
SELECT COUNT(DISTINCT SALARY) AS UNIQUE_SALARY_PACKAGES FROM EMPLOYEE_DATA;
-- unique_salary_packages:11

-- 2. How many distinct first names do we have in our database?
SELECT COUNT(DISTINCT F_NAME) AS DISTINCT_FIRST_NAMES
FROM EMPLOYEE_DATA;
SELECT DISTINCT F_NAME
FROM EMPLOYEE_DATA
ORDER BY F_NAME ASC;
-- Answer: 16
