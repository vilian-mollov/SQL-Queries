USE exercise;

DESC companies;

ALTER TABLE companies
DROP COLUMN employeeCount;

SELECT * FROM companies;
