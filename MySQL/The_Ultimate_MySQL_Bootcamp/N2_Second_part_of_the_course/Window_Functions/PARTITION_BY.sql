USE exercise;

UPDATE employees SET salary = salary * 3 WHERE department = 'engineering';

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

INSERT INTO employees(department, salary) VALUES ('sales',51200);
INSERT INTO employees(department, salary) VALUES ('sales',42200);
INSERT INTO employees(department, salary) VALUES ('customer service', 42200);

-- this is count of employees by department
SELECT 
	emp_no, 
	department, 
	salary, 
	COUNT(*) OVER(PARTITION BY department) AS company_employees 
FROM employees;


SELECT 
	emp_no, 
	department, 
    salary, 
    SUM(salary) OVER(PARTITION BY department) AS dep_payroll,
    SUM(salary) OVER() AS total_payroll
FROM employees;




