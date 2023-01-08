USE exercise;

SELECT 
	emp_no,
	department,
    salary,
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) AS highest_paid_dep_empl,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) AS highest_paid_employee
    FROM employees
    ORDER BY department;

