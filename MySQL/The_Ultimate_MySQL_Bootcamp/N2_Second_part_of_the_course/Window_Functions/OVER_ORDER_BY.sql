USE exercise;

-- HERE the rolling_dep_payroll starts with the first highest salary of the department 
-- and then adds it to the sum untill the last one wich is equal to total_dep_payroll for a year
SELECT 
	emp_no, 
	department, 
    salary, 
    SUM(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS rolling_dep_payroll,
    SUM(salary) OVER(PARTITION BY department) AS total_dep_payroll
FROM employees;

-- here the behavior of the aggregate function changes with every roll
SELECT 
	emp_no, 
	department, 
    salary, 
    MAX(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_dep_payroll
FROM employees;
