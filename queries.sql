-- Employees Salary
SELECT e.emp_no, last_name, first_name, gender, salary
FROM employee e
INNER JOIN salary s ON e.emp_no = s.emp_no

--Hired in 1986
SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'

-- Dept Manager
SELECT d.dept_no, d.dept_name, dm.emp_no, first_name, last_name
FROM department d
	INNER JOIN dept_manager dm ON d.dept_no = dm.dept_no 
	INNER JOIN employee e ON e.emp_no = dm.emp_no

-- Employee Department
SELECT e.emp_no, first_name, last_name, dept_name
FROM employee e
	INNER JOIN department_emp de ON e.emp_no = de.emp_no 
	INNER JOIN department d ON de.dept_no = d.dept_no
	
--Hercules
SELECT first_name, last_name, gender
FROM employee
WHERE first_name = 'Hercules' AND last_name LIKE'B%'

-- Sales Dept
SELECT e.emp_no, first_name, last_name, dept_name
FROM employee e
	INNER JOIN department_emp de ON e.emp_no = de.emp_no 
	INNER JOIN department d ON de.dept_no = d.dept_no
	WHERE dept_name = 'Sales'
	
-- Sales & Development
SELECT e.emp_no, first_name, last_name, dept_name
FROM employee e
	INNER JOIN department_emp de ON e.emp_no = de.emp_no 
	INNER JOIN department d ON de.dept_no = d.dept_no
	WHERE dept_name = 'Sales' OR dept_name = 'Development'


