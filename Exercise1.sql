-- EXERCISE 1 

-- 1. Write the complete SQL statement for creating a new database called addressbook
CREATE DATABASE ADDRESSBOOK;

-- 2. Which statement is used to list the information about a table? How do you use this statement?
-- THE STATEMENT IS:
DESCRIBE table_name;
-- FOR EXAMPLE IN TABLE EPLOYEE_DATA,
DESCRIBE employee_data;
-- THIS DISPLAYS THE STRUCTURE OF THE TABLE — COLUMN NAMES, DATA TYPES, AND OTHER PROPERTIES.

-- 3. How would you list all the databases available on the system?
SHOW DATABASES;

-- 4. Write the statement for inserting the following data in employee_data table
/*First name:	Rudolf
Last name:	Reindeer
Title:	Business Analyst
Age:	34
Years service:	    2
Salary:	     95000
Perks:	17000
Email:	  rudolf@bugnet.com*/
INSERT INTO EMPLOYEE_DATA (F_NAME, L_NAME, TITLE, AGE, YOS, SALARY, PERKS, EMAIL)
VALUES ('Rudolf', 'Reindeer', 'Business Analyst', 34, 2, 95000, 17000, 'rudolf@bugnet.com');

-- 5. Give two forms of the SELECT statement that will list all the data in employee_data table.
SELECT * FROM EMPLOYEE_DATA;
SELECT F_NAME, L_NAME, TITLE, AGE, YOS, SALARY, PERKS, EMAIL FROM EMPLOYEE_DATA;


-- 6. What will select f_name, email FROM employee_data; display?
-- IT WILL DISPLAY ONLY THE FIRST NAME AND EMAIL ADDRESSE OF THE EMPLOYEE FROM THE TABLE.

-- 7. Write the statement for listing data from salary, perks, and yos columns of employee_data table.
SELECT salary, perks, yos FROM employee_data;

-- 8. How can you find the number of rows in a table using the SELECT statement?
SELECT COUNT(*) FROM employee_data;

-- 9. What will select salary, l_name FROM employee_data; display?
-- IT WILL DISPLAY THE SALARY AND LAST NAME OF EMPLOYEE FROM THE TABLE.



CREATE DATABASE addressbook;
USE addressbook;

CREATE TABLE IF NOT EXISTS employee_data (
  emp_id INT AUTO_INCREMENT PRIMARY KEY,
  f_name VARCHAR(30),
  l_name VARCHAR(30),
  title VARCHAR(50),
  age INT,
  yos INT,             
  salary INT,
  perks INT,
  email VARCHAR(80)
) ENGINE=InnoDB;

INSERT INTO employee_data (f_name, l_name, title, age, yos, salary, perks, email) VALUES
('John', 'Hagan', 'CEO', 48, 12, 200000, 50000, 'john.hagan@bignet.com'),
('Anamika', 'Pandit', 'Web Developer', 28, 3, 95000, 18000, 'anamika.pandit@bignet.com'),
('Ganesh', 'Pillai', 'Programmer', 31, 4, 85000, 15000, 'ganesh.pillai@bignet.com'),
('Mary', 'Shelly', 'Marketing Executive', 36, 5, 78000, 10000, 'mary.shelly@bignet.com'),
('Monica', 'Sehgal', 'Senior Programmer', 38, 6, 110000, 22000, 'monica.sehgal@bignet.com'),
('Danny', 'Gibson', 'Web Designer', 25, 2, 70000, 8000, 'danny.gibson@bignet.com'),
('Mike', 'Harper', 'Finance Manager', 40, 7, 120000, 25000, 'mike.harper@bignet.com'),
('Alok', 'Nanda', 'System Administrator', 33, 4, 95000, 16000, 'alok.nanda@bignet.com'),
('Paul', 'Simon', 'Multimedia Programmer', 29, 3, 88000, 13000, 'paul.simon@bignet.com'),
('Edward', 'Sakamuro', 'Senior Web Designer', 35, 5, 110000, 23000, 'edward.sakamuro@bignet.com'),
('Arthur', 'Hoopla', 'Senior Marketing Executive', 41, 9, 120000, 27000, 'arthur.hoopla@bignet.com'),
('Kim', 'Hunter', 'Customer Service Manager', 39, 8, 95000, 18000, 'kim.hunter@bignet.com'),
('Peter', 'Champion', 'Programmer', 27, 3, 87000, 12000, 'peter.champion@bignet.com'),
('Rina', 'Brighton', 'Senior Programmer', 42, 10, 115000, 20000, 'rina.brighton@bignet.com'),
('Muriel', 'Lovelace', 'Programmer', 26, 2, 82000, 9000, 'muriel.lovelace@bignet.com');

CREATE TABLE IF NOT EXISTS employee_per (
  e_id INT PRIMARY KEY,         -- should match employee_data.emp_id
  address VARCHAR(100),
  phone VARCHAR(20),
  p_email VARCHAR(80),
  birth_date DATE,
  sex ENUM('M','F'),
  m_status ENUM('Y','N'),
  s_name VARCHAR(80),
  children INT
) ENGINE=InnoDB;

INSERT INTO employee_per (e_id, address, phone, p_email, birth_date, sex, m_status, s_name, children) VALUES
(1, 'Manila', '09170001111', 'john.hagan@gmail.com', '1975-01-12', 'M', 'Y', 'Jane Donner', 2),
(2, 'Quezon City', '09180002222', 'anamika.pandit@gmail.com', '1987-03-09', 'F', 'Y', 'Manish Sharma', 0),
(3, 'Makati', '09190003333', 'ganesh.pillai@gmail.com', '1973-01-20', 'M', 'Y', 'Sandhya Pillai', 3),
(4, 'Pasig', '09170004444', 'mary.shelly@gmail.com', '1970-07-18', 'F', 'N', NULL, NULL),
(5, 'Taguig', '09180005555', 'monica.sehgal@gmail.com', '1964-03-06', 'F', 'Y', 'Edgar Alan', 1),
(6, 'Cavite', '09190006666', 'danny.gibson@gmail.com', '1972-03-16', 'M', 'Y', 'Betty Cudly', 1),
(7, 'Mandaluyong', '09170007777', 'mike.harper@gmail.com', '1965-06-28', 'M', 'Y', 'Stella Stevens', 4),
(8, 'Bulacan', '09180008888', 'alok.nanda@gmail.com', '1973-10-09', 'M', 'Y', 'Manika Nanda', 2),
(9, 'Rizal', '09190009999', 'paul.simon@gmail.com', '1974-04-18', 'M', 'Y', 'Muriel Lovelace', 2),
(10, 'Laguna', '09171110000', 'edward.sakamuro@gmail.com', '1966-08-20', 'M', 'Y', 'Rina Brighton', 3),
(11, 'Pampanga', '09182221111', 'arthur.hoopla@gmail.com', '1957-11-04', 'M', 'Y', 'Rina Brighton', 1),
(12, 'Cebu', '09193332222', 'kim.hunter@gmail.com', '1968-05-19', 'M', 'Y', 'Matt Shikari', 2),
(13, 'Baguio', '09174443333', 'peter.champion@gmail.com', '1973-01-20', 'M', 'Y', 'Ruby Richer', 1),
(14, 'Davao', '09185554444', 'muriel.lovelace@gmail.com', '1972-03-16', 'F', 'N', NULL, NULL),
(15, 'Iloilo', '09196665555', 'rina.brighton@gmail.com', '1965-04-28', 'F', 'Y', 'Matt Shikari', 2);



