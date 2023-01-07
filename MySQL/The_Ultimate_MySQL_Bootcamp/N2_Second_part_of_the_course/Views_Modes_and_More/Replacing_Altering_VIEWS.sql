USE `many_to_many_exercise`;

SELECT * FROM full_reviews;

-- Update/Replace VIEW
CREATE OR REPLACE VIEW full_reviews AS
SELECT * FROM series ORDER BY genre, released_year DESC;

ALTER VIEW full_reviews AS
SELECT title, released_year, genre, rating, first_name, last_name FROM reviewers 
JOIN reviews ON reviews.reviewer_id = reviewers.id 
JOIN series ON reviews.series_id = series.id; 

DROP VIEW full_reviews;
