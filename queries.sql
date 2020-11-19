-- Employees Salary
SELECT e.emp_no, last_name, first_name, gender, salary
FROM employee e
INNER JOIN salary s ON e.emp_no = s.emp_no

--Hired in 1986
SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'


