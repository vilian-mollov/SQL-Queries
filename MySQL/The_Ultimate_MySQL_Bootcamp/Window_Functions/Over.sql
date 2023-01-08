USE exercise;

SELECT AVG(salary) FROM employees;

SELECT AVG(salary) OVER() FROM employees;

-- selecting employees with the average salary for every row
SELECT emp_no, department, salary, AVG(salary) OVER() AS average_salary FROM employees;

-- over average, min and MAX
SELECT 
	emp_no, 
	department, 
	salary, 
	AVG(salary) OVER() AS average_salary,
	MIN(salary) OVER() AS min,
	MAX(salary) OVER() AS max
FROM employees;

