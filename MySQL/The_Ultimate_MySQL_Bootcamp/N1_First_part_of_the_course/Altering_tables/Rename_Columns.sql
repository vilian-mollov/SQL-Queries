USE exercise;

DESC companies;

ALTER TABLE companies
RENAME COLUMN name TO company_name;

DESC companies;

