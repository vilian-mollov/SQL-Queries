USE `many_to_many_exercise`;

SELECT * FROM reviewers
JOIN reviews ON reviews.reviewer_id = reviewers.id
JOIN series ON reviews.series_id = series.id;

-- Creating VIEW 
CREATE VIEW full_reviews AS 
SELECT title, released_year, genre, rating, first_name, last_name FROM reviewers 
JOIN reviews ON reviews.reviewer_id = reviewers.id 
JOIN series ON reviews.series_id = series.id; 

-- using the virtula table
SELECT * FROM full_reviews;

SELECT * FROM full_reviews WHERE genre = 'Comedy';

SELECT * FROM full_reviews ORDER BY title;
