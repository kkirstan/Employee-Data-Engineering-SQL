SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date
LIKE '%1986';

SELECT dept_managers.dept_no,
departments.dept_name,
dept_managers.emp_no,
employees.last_name,
employees.first_name
FROM dept_managers
JOIN departments
ON departments.dept_no=dept_managers.dept_no
JOIN employees
ON employees.emp_no=dept_managers.emp_no;

