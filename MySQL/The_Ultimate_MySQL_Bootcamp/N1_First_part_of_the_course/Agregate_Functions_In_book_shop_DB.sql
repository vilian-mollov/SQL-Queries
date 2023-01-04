USE book_shop;

SELECT COUNT(*)AS number_of_books FROM books;

SELECT released_year,COUNT(*) AS books_count FROM books GROUP BY released_year;
 
SELECT SUM(stock_quantity) FROM books;
  
SELECT CONCAT(author_fname, ' ', author_lname) AS author, AVG(released_year) FROM books GROUP BY author;
  
SELECT title, CONCAT(author_fname, ' ', author_lname) AS author_fullname, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);
  
SELECT released_year AS year, COUNT(*) AS `# books`, AVG(pages) AS `avg pages` FROM books GROUP BY released_year ORDER BY 1;