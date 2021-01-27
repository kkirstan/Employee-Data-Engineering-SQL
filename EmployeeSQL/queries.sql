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

SELECT dept_employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM dept_employees
JOIN departments
ON departments.dept_no=dept_employees.dept_no
JOIN employees
ON employees.emp_no=dept_employees.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name 
LIKE 'B%';

SELECT employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_employees
ON employees.emp_no=dept_employees.emp_no
INNER JOIN departments
ON departments.dept_no=dept_employees.dept_no
WHERE departments.dept_name='Sales';

SELECT employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_employees
ON employees.emp_no=dept_employees.emp_no
INNER JOIN departments
ON departments.dept_no=dept_employees.dept_no
WHERE departments.dept_name='Sales'
OR departments.dept_name='Development';

SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;