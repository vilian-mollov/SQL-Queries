USE book_shop;

CREATE TABLE caption(
text VARCHAR(255),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
updated_at DATETIME ON UPDATE NOW() -- also applicable CURENT_TIMESTAMP
);

INSERT INTO caption (text) VALUES ('I love this book_shop!');

SELECT SLEEP(7); -- wait 10 sec

UPDATE caption SET text = 'I realy love this book_shop!!!'; -- changes the caption and automaticli saves the time of update
