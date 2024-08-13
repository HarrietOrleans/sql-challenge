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

SELECT first_name, last_name,sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development');

SELECT last_name,
COUNT(*) AS frequency
FROM employees GROUP BY last_name
ORDER BY frequency DESC;