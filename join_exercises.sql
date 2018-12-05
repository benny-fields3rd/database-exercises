DROP DATABASE IF EXISTS join_test_db;
CREATE DATABASE join_test_db;


use join_test_db;

CREATE TABLE roles (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE users (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   role_id INT UNSIGNED DEFAULT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);

use join_test_db;
SHOW TABLES;


INSERT INTO users (name, email, role_id) VALUES
  ('benny', 'benny@example.com', 2),
  ('aria', 'aria@example.com', 2),
  ('rose', 'rose@example.com', 2),
  ('robyn', 'robyn@example.com', null);

 SELECT * from users; # shows users
 SELECT * from roles; # shows roles

# Inner join is default
SELECT users.name, roles.name FROM users
INNER JOIN roles # could also just use join instead of inner
ON roles.id = users.role_id;

SELECT users.name, roles.name FROM users
LEFT JOIN roles
ON roles.id = users.role_id;

# displays all
SELECT users.name, roles.name FROM users
RIGHT JOIN roles
ON roles.id = users.role_id;

# Count number of types of roles
SELECT roles.name, COUNT(*) FROM users
JOIN roles
ON roles.id = users.role_id
GROUP BY roles.name;

use employees;

-- write a query that shows each department along with the name of the current manager for that department.
-- needed tables: departments, employees, dept_manager
SELECT departments.dept_name AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager' FROM departments
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW()
ORDER BY `Department Name`;

-- refactored
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' FROM departments as d
JOIN dept_manager as dm
  ON dm.dept_no = d.dept_no
JOIN employees as e
  ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
ORDER BY `Department Name`;

-- Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name' FROM departments as d
JOIN dept_manager as dm
  ON dm.dept_no = d.dept_no
JOIN employees as e
  ON e.emp_no = dm.emp_no
WHERE e.gender like 'F'
  AND dm.to_date > NOW()
ORDER BY `Department Name`;

-- Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'Title',
COUNT(*) AS 'Count' FROM titles as t
JOIN dept_emp as de
  ON de.emp_no = t.emp_no
Join departments as d
  on d.dept_no = de.dept_no
WHERE t.to_date > NOW()
AND d.dept_no = 'd009'
GROUP BY Title;

-- Find the current salary of all current managers.
-- tables needed: departments, employees, salaries, dept_manager
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Name',
       s.salary AS 'Salary' FROM salaries AS s
JOIN dept_manager as dm
  ON dm.emp_no = s.emp_no
JOIN employees AS e
  ON e.emp_no = dm.emp_no
JOIN departments as d
  on d.dept_no = dm.dept_no
WHERE dm.to_date > NOW()
AND s.to_date > NOW()
ORDER BY `Department Name`;

