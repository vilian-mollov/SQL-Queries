USE exercise;

SELECT * FROM companies;

RENAME TABLE companies TO suppliers;

SELECT * FROM suppliers;

ALTER TABLE suppliers RENAME TO companies; 

SELECT * FROM companies;
