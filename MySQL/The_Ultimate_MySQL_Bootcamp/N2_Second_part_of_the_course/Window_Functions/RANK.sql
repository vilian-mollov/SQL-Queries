USE exercise;

-- bring back the original values :D
UPDATE employees SET salary = salary / 3 WHERE department = 'engineering';

SELECT 
	emp_no, 
	department, 
	salary, 
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS depart_salary_rank,
	RANK() OVER(ORDER BY salary DESC) AS overall_rank,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS overall_dense_rank,
    ROW_NUMBER() OVER(ORDER BY salary DESC) AS overall_num
FROM employees
ORDER BY overall_rank;

