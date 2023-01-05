USE exercise;

DESC companies;

ALTER TABLE companies
MODIFY COLUMN company_name VARCHAR(100) DEFAULT 'unknown'; 

DESC companies;

INSERT INTO companies(address, phone) VALUES ('liberty 12', '355487568412');

SELECT * FROM companies;

-- Change is used to change the column name and to modify its data type
ALTER TABLE companies
CHANGE phone personal_phone VARCHAR(20);

SELECT * FROM companies;

