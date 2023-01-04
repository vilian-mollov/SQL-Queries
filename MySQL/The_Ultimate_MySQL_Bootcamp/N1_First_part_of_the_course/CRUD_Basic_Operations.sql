USE book_shop;

INSERT INTO books () VALUES (); -- SKELETON

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages) 
VALUES ('The amazing adventures of Finn and Jake', 'Finn', 'Jackson', 2023, 1754,717);
SELECT * FROM books;

SELECT * FROM books WHERE book_id > 10;

SELECT book_id AS id, name FROM books;

UPDATE books SET pages = 321 WHERE author_lname = 'Jackson';

DELETE FROM books WHERE title is null;

DELETE FROM books WHERE author_lname = '';

DELETE FROM books WHERE author_lname is null;
