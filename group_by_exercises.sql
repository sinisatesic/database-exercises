use employees;
SELECT DISTINCT title
FROM titles;

SELECT last_name, COUNT(last_name)
FROM employees
WHERE LEFT(last_name, 1) IN ('E') AND RIGHT(last_name, 1) IN ('E')
GROUP BY last_name;

SELECT first_name, last_name, COUNT(last_name)
FROM employees
WHERE LEFT(last_name, 1) IN ('E') AND RIGHT(last_name, 1) IN ('E')
GROUP BY first_name, last_name;

SELECT DISTINCT last_name
FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT DISTINCT last_name, COUNT(*)
FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name ORDER BY COUNT(*);

SELECT COUNT(*), gender
FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
GROUP BY gender ORDER BY COUNT(*) DESC;