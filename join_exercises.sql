use employees;
show tables;
select *
from dept_manager;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT d.dept_name as 'Department', concat(e.first_name, ' ', e.last_name) as Manager
FROM employees AS e
JOIN dept_manager as dm
    ON e.emp_no = dm.emp_no
JOIN departments as d
    ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Find the name of all departments currently managed by women.

SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) as 'Manager Name'
FROM employees AS e
JOIN dept_manager as dm
    ON e.emp_no = dm.emp_no
JOIN departments as d
    ON dm.dept_no = d.dept_no
WHERE e.gender = 'F' AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

#     Find the current titles of employees currently working in the Customer Service department.

SELECT t.title AS 'Title', count(t.emp_no) AS 'Count'
FROM titles as t
JOIN dept_emp as de
    ON t.emp_no = de.emp_no
JOIN departments as d
    ON de.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY  t.title;
