USE exercise;

SELECT 
	emp_no,
	department,
    salary,
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS DEPART_salary_quartile_four,
	NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile_four,
    NTILE(6) OVER(ORDER BY salary DESC) AS salary_quartile_six
    FROM employees;

