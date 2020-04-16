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

SELECT concat(first_name, ' ', last_name)
FROM employees
WHERE LEFT(last_name, 1) IN ('E') AND RIGHT(last_name, 1) IN ('E');

SELECT datediff (curdate(), hire_date)
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';