USE exercise;

-- partition by department
SELECT 
	emp_no, 
	department, 
	salary, 
	AVG(salary) OVER(PARTITION BY department) AS department_average 
FROM employees
ORDER BY  salary DESC;

-- this is company average
SELECT 
	emp_no, 
	department, 
	salary, 
	AVG(salary) OVER() AS company_average 
FROM employees
ORDER BY  department, salary DESC;

INSERT INTO employees(department, salary) VALUES ('sales',51400);
INSERT INTO employees(department, salary) VALUES ('sales',42500);
INSERT INTO employees(department, salary) VALUES ('customer service', 42500);

-- this is count of employees by department
SELECT 
	emp_no, 
	department, 
	salary, 
	COUNT(*) OVER(PARTITION BY department) AS company_employees 
FROM employees;
