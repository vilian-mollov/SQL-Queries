USE book_shop;

CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);
-- CREATING TABLE 

INSERT INTO people (name, birthdate, birthtime,birthdt) 
VALUES ('Johny White Walker', '1947-06-19', '21:12', '1947-06-19 21:12');

INSERT INTO people (name, birthdate, birthtime,birthdt) 
VALUES ('Jack Pirate', '1949-07-21', '15:12:07', '1949-07-21 15:12:07');

INSERT INTO people (name, birthdate, birthtime,birthdt) 
VALUES ('John Snow', '1509-09-29', '19:19:09', '1509-09-29 19:19:09');

INSERT INTO people (name, birthdate, birthtime,birthdt) 
VALUES ('Hensel', CURDATE(), CURTIME(), CURRENT_TIMESTAMP());

INSERT INTO people (name, birthdate, birthtime,birthdt)
VALUES ('Johny', '2022-12-04', '14:41', '2022-12-04 14:41');

-- 	Abbreviated month name (Jan..Dec)
SELECT name, DATE_FORMAT(birthdate, '%b') FROM people; 
-- Month name (January..December)
SELECT name, DATE_FORMAT(birthdate, '%M') FROM people;

-- 	Abbreviated weekday name (Sun..Sat)
SELECT name, DATE_FORMAT(birthdate, '%a') FROM people; 
-- 	Weekday name (Sunday..Saturday)
SELECT name, DATE_FORMAT(birthdate, '%W') FROM people; 

-- That will give a legal years in bulgaria
SELECT name, birthdate, YEAR(birthdate + INTERVAL 18 YEAR) AS will_be_18 FROM people;
-- Works the same
SELECT name, birthdate, DATE_ADD(birthdate, INTERVAL 18 YEAR) AS will_be_18 FROM people;

-- This gives us a diffrence between now and that exact date in days
SELECT name, birthdate, DATEDIFF(NOW(), birthdate) AS diffrence FROM people;

-- returns the diffrence between the moment of birth and current time at the day
SELECT name, birthtime, TIMEDIFF(CURTIME(), birthtime) AS time_diff FROM people;

-- returns the number of months diffrence between now and birthdate
SELECT name, birthdate, period_diff(DATE_FORMAT(CURDATE(), '%y%m'), DATE_FORMAT(birthdate, '%y%m')) AS time_diff FROM people;


SELECT name, birthdate, DATE_ADD(birthdate, INTERVAL 1 DAY) AS one_day_forward FROM people WHERE name = 'Johny';
SELECT name, birthdate, DATE_ADD(birthdate, INTERVAL 1 YEAR) AS one_year_forward FROM people WHERE name = 'Johny';
SELECT name, birthdate, DATE_ADD(birthdate, INTERVAL 1 MONTH) AS one_month_forward FROM people WHERE name = 'Johny';
SELECT name, birthtime, ADDTIME(birthtime, '00:00:01') AS one_second_forward FROM people WHERE name = 'Johny';
SELECT name, birthtime, ADDTIME(birthtime, '00:01:00') AS one_minute_forward FROM people WHERE name = 'Johny';
SELECT name, birthtime, ADDTIME(birthtime, '01:00:00') AS one_hour_forward FROM people WHERE name = 'Johny';
