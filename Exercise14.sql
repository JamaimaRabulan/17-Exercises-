-- EXERCISE 14

-- 1. Our CEO falls in love with the petite Web Developer, Anamika Pandit.He now wants her last name to be changed to Sharma.

UPDATE employee_data
SET l_name = 'Sharma'
WHERE f_name = 'Anamika' AND title = 'Web Developer';


-- 2. All Multimedia Programmers now want to be called Multimedia Specialists.

UPDATE employee_data
SET title = 'Multimedia Specialist'
WHERE title = 'Multimedia Programmer';


-- 3.After his marriage, the CEO gives everyone a raise. Increase the salaries of all employees (except the CEO) by $10,000.

UPDATE employee_data
SET salary = salary + 10000
WHERE title <> 'CEO';