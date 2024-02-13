-- Table Schema --


-- Creating titles table --

DROP TABLE titles;

CREATE TABLE titles (
	title_id VARCHAR(10),
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * FROM titles;


-- Create table departments --

DROP TABLE departments;

CREATE TABLE departments (
  dept_no VARCHAR(10),
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

SELECT * FROM departments;


-- Create table employees --

DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR(10),
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;


-- Create table dept_employees --

DROP TABLE dept_employees;

CREATE TABLE dept_employees (
	emp_no INT,
	dept_no VARCHAR(10),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_employees;


-- Create table dept_manager --

DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR (10),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;


-- Creating salaries table --

DROP TABLE salaries;

CREATE TABLE salaries (
	emp_no INT,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;
