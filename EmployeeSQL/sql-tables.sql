CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR
);

CREATE TABLE dept_employees(
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_managers(
dept_no VARCHAR,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR,
birth_date VARCHAR,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date VARCHAR
);

CREATE TABLE salaries(
emp_no INT PRIMARY KEY,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary INT
);

CREATE TABLE titles(
title_id VARCHAR PRIMARY KEY,
title VARCHAR
);