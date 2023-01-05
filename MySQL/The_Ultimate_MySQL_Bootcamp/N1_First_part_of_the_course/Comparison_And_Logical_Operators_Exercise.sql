USE book_shop;

-- Evaluate
SELECT 10 != 10; -- reurns false 
SELECT 15 > 14 AND 99 - 5 <= 94; -- returns true bacause the two stataments are true 
SELECT 1 IN (5,3) OR 9 BETWEEN 8 AND 10; -- returns true because 9 is between 8 and 10
-- In SQL (1 is true) while (0 means false)

-- Select all books written befero 1980 (non inclusive)
SELECT * FROM books WHERE released_year < 1980;

-- Select All books written by Eggers Or Chabon
SELECT * FROM books WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';

-- Select all books written by lahiri, published after 2000
SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- Select all books with page counts between 100 and 200
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;

-- Select all books where author_lname starts with a 'C' or an 'S'
SELECT * FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

-- if title contains 'stories' -> Short Stories
-- Just Kids and Hearthbreaking Work -> Memoir
-- Everithing Else -> Novel
SELECT title, author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title LIKE '%Just Kids%' OR title LIKE '%Heartbreaking Work%' THEN 'Memoir'
        ELSE 'Novel'
    END AS Type
FROM books;

-- BONUS task 
SELECT author_fname, author_lname, CONCAT(COUNT(*),' books') AS COUNT
FROM books 
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;

