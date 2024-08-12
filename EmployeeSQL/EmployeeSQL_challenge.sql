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

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on employees.emp_no = salaries.emp_no;

select first_name, last_name, hire_date
from employees where extract (Year from hire_date) = 1986;

select dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
from dept_manager
join departments on dept_manager.dept_no = departments.dept_no
join employees on dept_manager.emp_no = employees.emp_no;

select dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no;
