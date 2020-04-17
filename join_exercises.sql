use employees;
show tables;
select *
from dept_manager;

SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) as Manager
FROM employees AS e
JOIN dept_manager as dm
    ON e.emp_no = dm.emp_no
JOIN departments as d
    ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

