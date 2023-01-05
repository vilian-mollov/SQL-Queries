USE exercise;

ALTER TABLE companies
ADD COLUMN phone VARCHAR(15);

DESC companies;

ALTER TABLE companies
ADD COLUMN employeeCount INT NOT NULL;

SELECT * FROM companies;

