Create Table departments (
	dept_no VARCHAR(255)  NOT NULL PRIMARY KEY,
	dept_name VARCHAR(255)
);
select * from departments

Create Table employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(255) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(255),
	hire_date DATE
);
select * from employees

Create Table dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(255) NOT NULL
);
select * from dept_emp

Create Table dept_manager(
	dept_no VARCHAR(255) NOT NULL,
	emp_no INT NOT NULL
);
select * from dept_manager

Create Table titles(
	title_id VARCHAR(255) NOT NULL PRIMARY KEY,
	title VARCHAR(255)
);
select * from titles

Create Table salaries(
	emp_no INT NOT NULL,
	salary INT
);
select * from salaries

