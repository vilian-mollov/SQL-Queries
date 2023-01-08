USE exercise;

SELECT emp_no, department, salary FROM employees;

-- Window function
SELECT 
emp_no, 
department, 
salary, 
AVG(salary) OVER(PARTITION BY department) AS dept_avg 
FROM employees;















