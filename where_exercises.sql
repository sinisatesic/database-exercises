# Create a file named where_exercises.sql. Make sure to use the employees database.
#
# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
#
# Find all employees whose last name starts with 'E' — 7,330 rows.
# Find all employees hired in the 90s — 135,214 rows.
# Find all employees born on Christmas — 842 rows.
# Find all employees with a 'q' in their last name — 1,873 rows.

use employees;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT first_name, last_name
FROM employees
WHERE LEFT(last_name, 1) IN ('E');
#can also do WHERE last_name LIKE ('E');

SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
#can also do WHERE hire_date LIKE '199%';

SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
#     Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
#     Find all employees whose last name starts or ends with 'E' — 30,723 rows.
#     Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
#     Find all employees hired in the 90s and born on Christmas — 362 rows.
#     Find all employees with a 'q' in their last name but not 'qu' — 547 rows.


SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena'
 OR first_name = 'Vidya'
 OR first_name = 'Maya';

SELECT first_name, last_name
FROM employees
WHERE LEFT(last_name, 1) IN ('E') OR RIGHT(last_name, 1) IN ('E');

SELECT first_name, last_name
FROM employees
WHERE LEFT(last_name, 1) IN ('E') AND RIGHT(last_name, 1) IN ('E');

SELECT first_name, last_name
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';



