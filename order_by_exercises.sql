use employees;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT first_name, last_name
FROM employees
WHERE LEFT(last_name, 1) IN ('E');

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

##############################


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

# Create a new file called order_by_exercises.sql and copy and paste the contents of your where_exercises.sql.
# Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
# Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
# Now reverse the sort order for both queries.
# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.


SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE '%q%' ORDER BY emp_no;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name DESC;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE '%q%' ORDER BY emp_no DESC;

SELECT first_name, last_name
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25' ORDER BY hire_date DESC;

