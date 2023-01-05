USE exercise;

CREATE TABLE partiers(
name VARCHAR(50),
age INT,
CONSTRAINT age_over_18 CHECK (age > 18)
);

-- should throw error: Error Code: 3819. Check constraint 'age_over_18' is violated.
INSERT INTO partiers(name, age) VALUES ('Timy', 15);

CREATE TABLE palindrome2(
word VARCHAR(50),
CONSTRAINT palindrome_check CHECK(REVERSE(word) = word)
);

-- should throw error: Error Code: 3819. Check constraint 'palindrome_check' is violated.
INSERT INTO palindrome2(word) VALUES ('Hello world of SQL!');


