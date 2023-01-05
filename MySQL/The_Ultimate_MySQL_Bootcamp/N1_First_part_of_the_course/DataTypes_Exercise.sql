-- Question: What is a good use case for CHAR?
-- Answer: When you have to hold text with specific size or similar. Like Y/N, postcodes, abbreviations, States etc.

use book_shop;

-- task create inventory with this fields
CREATE TABLE inventory (
item_name VARCHAR(100),
price DECIMAL(8,2), -- price will always be < 1 milion 
quantity INT 
);


-- Question: What is the difference between DATETIME and TIMESTAMP?
-- Answer: TIMESTAMP is limited between 1970 to 2038 but cost less memory. 
-- 		   DATETIME can hold date and time between year 1000 and 9999 but uses more memory 
--         Aside that they work similar to one another


-- Task: Print out the current time:
SELECT CURTIME();

-- Task: Print out the current date(but not time)
SELECT CURDATE();

-- Task: Print out the current Day of the week as a number
SELECT dayofweek(CURDATE())AS day_of_week_numb;

-- Task: Print out the name of the current Day of the week
SELECT DAYNAME(CURRENT_DATE()) AS day_of_week;

-- Print out the current date and time using this format: mm/dd/yyyy
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y')AS date;

-- Print out the current date and time using this format: January 2nd at 3:15
SELECT DATE_FORMAT(NOW(), '%M %D at %l:%i') AS date;

-- Create a tweets table that stores folowing fields:
CREATE TABLE tweets (
text VARCHAR(180),
username VARCHAR(100),
time_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tweets (username, text) VALUES ('Johnny ', 'My first tweet!');



