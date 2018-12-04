USE employees;

DESCRIBE employees;

# Return 10 employees in a result set named 'full_name' in the format of 'lastname, firstname' for each employee.
SELECT CONCAT(last_name, ', ', first_name) AS 'full_name' FROM employees
LIMIT 10;

# Add the date of birth for each employee as 'DOB' to the query.
SELECT CONCAT(last_name, ', ', first_name) AS 'full_name',
       birth_date AS 'DOB' FROM employees
LIMIT 10;

# Update the query to format full name to include the employee number so it is formatted as 'employee number - lastname, firstname'.
SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS 'full_name',
       birth_date AS 'DOB' FROM employees
LIMIT 10;
