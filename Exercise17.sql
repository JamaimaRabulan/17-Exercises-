-- EXERCISE 17

-- 1.Find and list the IDs and spouse names of all employees who are married.

SELECT e_id, s_name
FROM employee_per
WHERE m_status = 'Y';


-- 2.Change the above so that the display is sorted by spouse names.

SELECT e_id, s_name
FROM employee_per
WHERE m_status = 'Y'
ORDER BY s_name;


-- 3.How many employees do we have under each sex (male and female)?

SELECT sex, COUNT(*) AS 'Number of Employees'
FROM employee_per
GROUP BY sex;


-- 4.How many of our employees are married and unmarried?

SELECT m_status, COUNT(*) AS 'Number of Employees'
FROM employee_per
GROUP BY m_status;


-- 5.Find the total number of children.

SELECT SUM(children) AS 'Total Number of Children'
FROM employee_per
WHERE children IS NOT NULL;


-- 6.Make unique groups of children and find the number in each group.Sort the display so that the group with maximum children is at the top.

SELECT children, COUNT(*) AS 'Number of Employees'
FROM employee_per
WHERE children IS NOT NULL
GROUP BY children
ORDER BY children DESC;