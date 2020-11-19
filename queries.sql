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
	
