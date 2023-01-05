CREATE DATABASE exercise;

USE exercise;

-- Creating table with unique constraint
CREATE TABLE contacts(
id INT AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
phone VARCHAR(15) NOT NULL UNIQUE,
PRIMARY KEY (id)
);

INSERT INTO contacts (name, phone) VALUES ('Johnny', '359897535478');

-- SHOULD THROW AN ERROR BECAUSE THE SAME PHONE 
INSERT INTO contacts (name, phone) VALUES ('Timmy', '359897535478');


CREATE TABLE users(
id INT AUTO_INCREMENT,
username VARCHAR(255) NOT NULL,
age INT NOT NULL CHECK (age > 18),
PRIMARY KEY(id)
);

INSERT INTO users (username, age) VALUES ('Johnny', 42);

-- Shold throw and ERROR because of the CHECK Constraint
INSERT INTO users (username, age) VALUES ('Tiny Rick', 12);

CREATE TABLE palindrome(
word VARCHAR(100) CHECK (REVERSE(word) = word)
);

INSERT INTO palindrome (word) VALUES ('racecar');
INSERT INTO palindrome (word) VALUES ('abba');
INSERT INTO palindrome (word) VALUES ('rotator');
INSERT INTO palindrome (word) VALUES ('kayak');

-- exception
INSERT INTO palindrome (word) VALUES ('something');






