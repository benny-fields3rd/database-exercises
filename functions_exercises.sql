USE employees;

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT CONCAT(first_name, ' ', last_name) as 'Last name starts or ends with E' from employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E'
ORDER BY emp_no;

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT emp_no, CONCAT(first_name, ' ', last_name),
       round(datediff(curdate(), hire_date)/ 365) AS 'Years with Company',
       datediff(curdate(), hire_date) AS 'Days with Company' FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%-12-25'
ORDER BY `Years with Company`;



