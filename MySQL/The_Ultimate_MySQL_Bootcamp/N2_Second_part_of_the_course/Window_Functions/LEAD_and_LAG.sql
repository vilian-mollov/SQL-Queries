USE exercise;

SELECT 
	emp_no,
	department,
    salary,
    LAG(salary) OVER(ORDER BY salary DESC) AS PREV_salary
FROM employees;
    
SELECT 
	emp_no,
	department,
    salary,
    ABS(salary - LAG(salary) OVER(ORDER BY salary DESC)) AS salary_diff
FROM employees;
    
SELECT 
	emp_no,
	department,
    salary,
    LEAD(salary) OVER(ORDER BY salary DESC) AS NEXT_salary
FROM employees;
    
SELECT 
	emp_no,
	department,
    salary,
    salary - LEAD(salary) OVER(ORDER BY salary DESC) AS salary_diff
FROM employees;

-- salary difference partition by departments
SELECT 
	emp_no,
	department,
    salary,
    ABS(salary - LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC)) AS depart_salary_diff
FROM employees;

