USE employees;

SELECT DISTINCT last_name from employees
ORDER BY last_name desc
LIMIT 10;

SELECT first_name, last_name FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date asc, hire_date desc
LIMIT 5 OFFSET 45;

