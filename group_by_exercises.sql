USE employees;

-- In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
SELECT DISTINCT title FROM titles;

# Find your query for employees whose last names start and end with 'E'.
-- Update the query find just the unique last names that start and end with 'E' using GROUP BY.
SELECT first_name, last_name, COUNT(*) FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;

-- Find the unique last names with a 'q' but not 'qu'. Your results should be:
SELECT DISTINCT last_name, COUNT(*) FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.


-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
SELECT COUNT(*), gender from employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
